#
# FUNCTIONS
#
Soraya.heatmap = function(data, sample.names=NULL, color=brewer.pal(9,"RdBu"), use="everything", title="", theme=soraya.heatmap.theme) {
  # Assert sample names. If no sample names given, take column names.
  if(is.null(sample.names)) {sample.names = colnames(data)}
  if(length(colnames(data))==length(sample.names)){colnames(data)=sample.names}
  else{stop(paste("Could not assign",length(sample.names),"sample.names to",length(colnames(data)),"data columns, lengths differ."))}
  
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
  
  # Plot and return
  g=ggplot(m,aes(x=Var2,y=Var1,fill=value))
  g=g+geom_tile(color = "white")
  g=g+scale_fill_gradientn(colours=color,name="Pearson\ncorrelation")
  g=g+coord_fixed()
  g=g+ggtitle(title)
  g=g+theme
  return(g)
}