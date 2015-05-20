#
# THEMES
#
soraya.cormat.theme = theme_grey() %+replace% theme(
  axis.title.x = element_blank(),
  axis.title.y = element_blank(),
  axis.text.x  = element_text(angle=90,hjust=0.5,vjust=0.5),
  plot.title = element_text(face="bold"))

soraya.heatmap.theme = theme_grey() %+replace% theme(
  axis.title.x = element_blank(),
  axis.title.y = element_blank(),
  axis.text.x  = element_text(angle=90,hjust=0.5,vjust=0.5),
  plot.title = element_text(face="bold"),
  panel.background = element_blank(),
  legend.position="bottom")

soraya.dendro.theme = theme_grey() %+replace% theme(
  axis.title.x = element_blank(),
  axis.title.y = element_blank(),
  axis.text.x = element_blank(),
  axis.text.y = element_blank(),
  axis.line = element_blank(),
  axis.ticks = element_blank(),
  panel.background = element_blank())