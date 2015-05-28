#
# FUNCTIONS
#
Soraya.cormat = function(data, sample.names=NULL, color=brewer.pal(9,"RdBu"), use="everything", limits=NULL, title="", theme=soraya.cormat.theme) {
  # Assert sample names. If no sample names given, take column names.
  if(is.null(sample.names)) {sample.names = colnames(data)}
  if(length(colnames(data))==length(sample.names)){colnames(data)=sample.names}
  else{stop(paste("Could not assign",length(sample.names),"sample.names to",length(colnames(data)),"data columns, because their lengths differ."))}
  
  # Assert numerical columns only. Future plans: Coerce to numeric
  if(!all(unlist(lapply(data,class))=="numeric")){stop("Encountered non-numeric columns in data.")}
  
  # Assert use variable from cor-function. "everything" does not work when NAs are present.
  if(any(is.na(data)) && use=="everything"){use="complete.obs";warning("NA's detected in data, using use=\"complete.obs\" for correlation matrix.")}
  
  # Calculate correlation matrix and apply hierarchical ordering to columns
  c=cor(data,use=use)
  hc=hclust(as.dist((1-c)/2))
  c=c[hc$order,hc$order]
  
  # Melt matrix into long format
  m=melt(c)
  
  # Calculate proper correlation limits in case no default is given
  if(is.null(limits)) {limits = c(min(m$value),max(m$value))}
  
  # Plot and return
  g=ggplot(m,aes(x=Var2,y=Var1,fill=value))
  g=g+geom_tile(color = "white")
  g=g+scale_fill_gradientn(colours=color,name="Pearson\ncorrelation",limits=limits)
  g=g+coord_fixed()
  g=g+ggtitle(title)
  g=g+theme
  return(g)
}

Soraya.heatmap = function(data, sample.names=NULL, gene.names=NULL, color=colorRampPalette(c("red", "yellow", "green"))(n = 299), agglomeration.method="ward.D2", distance.method="euclidean", dendro.upper.size=4, dendro.right.size=4, htheme=soraya.heatmap.theme, dtheme=theme_dendro()) {
  # Assert sample names. If no sample names given, take column names.
  if(is.null(sample.names)) {sample.names = colnames(data)}
  if(length(colnames(data))==length(sample.names)){colnames(data)=sample.names}
  else{stop(paste("Could not assign",length(sample.names),"sample.names to",length(colnames(data)),"data columns, because their lengths differ."))}
  
  # Assert gene names. If no gene names given, take row names.
  if(is.null(gene.names)) {gene.names = rownames(data)}
  if(length(rownames(data))==length(gene.names)){rownames(data)=gene.names}
  else{stop(paste("Could not assign",length(gene.names),"gene.names to",length(rownames(data)),"data rows, because their lengths differ."))}
  
  # Assert numerical columns only. Future plans: Coerce to numeric
  if(!all(unlist(lapply(data,class))=="numeric")){stop("Encountered non-numeric columns in data.")}
  
  # Assert that no rows have a variance of 0:
  zero.indices = apply(data, 1, function(x){ifelse(var(x,na.rm = T)==0 | any(is.na(x) | any(is.nan(x))),TRUE,FALSE)})
  if(any(zero.indices)){
    data = data[!zero.indices,]
    warning("Some data rows have zero variance or contain NA. Those rows were discarded from clustering.")
  }
  
  # Calculate dendrograms and order rows/columns
  dd.col = as.dendrogram(hclust(method=agglomeration.method,dist(data,method=distance.method)))
  dd.row = as.dendrogram(hclust(method=agglomeration.method,dist(t(data),method=distance.method)))
  data = data[order.dendrogram(dd.col), order.dendrogram(dd.row)]
  
  # Use ggdendro to extract dendrogram data
  ddata_x = dendro_data(dd.row)
  ddata_y = dendro_data(dd.col)
  
  # Coerce to data.frame and add proper row names
  df = as.data.frame(data)
  df$measurement = row.names(df)
  df$measurement = with(df, factor(measurement, levels=measurement, ordered=TRUE))
  
  # Melt into long format
  m=melt(df,id.vars="measurement")
  
  # Create heatmap component
  h = ggplot(m,aes(x=variable,y=measurement))
  h = h + geom_tile(aes(fill=value))
  h = h + scale_fill_gradientn(colours=color,name="value")
  h = h + scale_x_discrete(expand = c(0,0)) 
  h = h + scale_y_discrete(expand = c(0,0)) 
  h = h + htheme
  h = h + theme(plot.margin=unit(c(0.25,0.25,1,0), "cm"))
  
  # Create upper dendrogram component
  u = ggplot(segment(ddata_x))
  u = u + geom_segment(aes(x=x,y=y,xend=xend,yend=yend))
  u = u + scale_x_continuous(expand = c(0,0))
  u = u + scale_y_continuous(expand = c(0,0))
  u = u + dtheme
  
  # Create right dendrogram component
  r = ggplot(segment(ddata_y)) 
  r = r + geom_segment(aes(x=x,y=y,xend=xend,yend=yend))
  r = r + coord_flip()
  r = r + scale_x_continuous(expand = c(0,0))
  r = r + scale_y_continuous(expand = c(0,0))
  r = r + dtheme
  
  # Put plot together and return
  g = ggplotGrob(h)
  g = gtable_add_cols(g, unit(dendro.right.size,"cm"))
  g = gtable_add_grob(g, gtable_filter(ggplotGrob(r), "panel"), t=2, l=ncol(g), b=3, r=ncol(g))
  g = gtable_add_rows(g, unit(dendro.upper.size,"cm"),0)
  g = gtable_add_grob(g, gtable_filter(ggplotGrob(u), "panel"), t=1, l=4, b=1, r=4)
  #grid.newpage()
  #return(grid.draw(g))
  return(g)
}