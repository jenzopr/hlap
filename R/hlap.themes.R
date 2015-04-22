#
# THEMES
#
soraya.heatmap.theme = theme_grey() %+replace% theme(
  axis.title.x = element_blank(),
  axis.title.y = element_blank(),
  axis.text.x  = element_text(angle=90,hjust=0.5,vjust=0.5),
  plot.title = element_text(face="bold"))