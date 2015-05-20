\name{soraya.cormat.theme}
\alias{soraya.cormat.theme}
\docType{data}
\title{
Sorayas correlation heatmaps theme.
}
\description{
A ggplot2 theme for correlation heatmaps.
}
\usage{data("soraya.cormat.theme")}
\format{
  The format is:
List of 40
 $ line                :List of 4
  ..$ colour  : chr "black"
  ..$ size    : num 0.5
  ..$ linetype: num 1
  ..$ lineend : chr "butt"
  ..- attr(*, "class")= chr [1:2] "element_line" "element"
 $ rect                :List of 4
  ..$ fill    : chr "white"
  ..$ colour  : chr "black"
  ..$ size    : num 0.5
  ..$ linetype: num 1
  ..- attr(*, "class")= chr [1:2] "element_rect" "element"
 $ text                :List of 8
  ..$ family    : chr ""
  ..$ face      : chr "plain"
  ..$ colour    : chr "black"
  ..$ size      : num 12
  ..$ hjust     : num 0.5
  ..$ vjust     : num 0.5
  ..$ angle     : num 0
  ..$ lineheight: num 0.9
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ axis.text           :List of 8
  ..$ family    : NULL
  ..$ face      : NULL
  ..$ colour    : chr "grey50"
  ..$ size      :Class 'rel'  num 0.8
  ..$ hjust     : NULL
  ..$ vjust     : NULL
  ..$ angle     : NULL
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ strip.text          :List of 8
  ..$ family    : NULL
  ..$ face      : NULL
  ..$ colour    : NULL
  ..$ size      :Class 'rel'  num 0.8
  ..$ hjust     : NULL
  ..$ vjust     : NULL
  ..$ angle     : NULL
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ axis.line           : list()
  ..- attr(*, "class")= chr [1:2] "element_blank" "element"
 $ axis.text.x         :List of 8
  ..$ family    : NULL
  ..$ face      : NULL
  ..$ colour    : NULL
  ..$ size      : NULL
  ..$ hjust     : num 0.5
  ..$ vjust     : num 0.5
  ..$ angle     : num 90
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ axis.text.y         :List of 8
  ..$ family    : NULL
  ..$ face      : NULL
  ..$ colour    : NULL
  ..$ size      : NULL
  ..$ hjust     : num 1
  ..$ vjust     : NULL
  ..$ angle     : NULL
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ axis.ticks          :List of 4
  ..$ colour  : chr "grey50"
  ..$ size    : NULL
  ..$ linetype: NULL
  ..$ lineend : NULL
  ..- attr(*, "class")= chr [1:2] "element_line" "element"
 $ axis.title.x        : list()
  ..- attr(*, "class")= chr [1:2] "element_blank" "element"
 $ axis.title.y        : list()
  ..- attr(*, "class")= chr [1:2] "element_blank" "element"
 $ axis.ticks.length   :Class 'unit'  atomic [1:1] 0.15
  .. ..- attr(*, "unit")= chr "cm"
  .. ..- attr(*, "valid.unit")= int 1
 $ axis.ticks.margin   :Class 'unit'  atomic [1:1] 0.1
  .. ..- attr(*, "unit")= chr "cm"
  .. ..- attr(*, "valid.unit")= int 1
 $ legend.background   :List of 4
  ..$ fill    : NULL
  ..$ colour  : logi NA
  ..$ size    : NULL
  ..$ linetype: NULL
  ..- attr(*, "class")= chr [1:2] "element_rect" "element"
 $ legend.margin       :Class 'unit'  atomic [1:1] 0.2
  .. ..- attr(*, "unit")= chr "cm"
  .. ..- attr(*, "valid.unit")= int 1
 $ legend.key          :List of 4
  ..$ fill    : chr "grey95"
  ..$ colour  : chr "white"
  ..$ size    : NULL
  ..$ linetype: NULL
  ..- attr(*, "class")= chr [1:2] "element_rect" "element"
 $ legend.key.size     :Class 'unit'  atomic [1:1] 1.2
  .. ..- attr(*, "unit")= chr "lines"
  .. ..- attr(*, "valid.unit")= int 3
 $ legend.key.height   : NULL
 $ legend.key.width    : NULL
 $ legend.text         :List of 8
  ..$ family    : NULL
  ..$ face      : NULL
  ..$ colour    : NULL
  ..$ size      :Class 'rel'  num 0.8
  ..$ hjust     : NULL
  ..$ vjust     : NULL
  ..$ angle     : NULL
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ legend.text.align   : NULL
 $ legend.title        :List of 8
  ..$ family    : NULL
  ..$ face      : chr "bold"
  ..$ colour    : NULL
  ..$ size      :Class 'rel'  num 0.8
  ..$ hjust     : num 0
  ..$ vjust     : NULL
  ..$ angle     : NULL
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ legend.title.align  : NULL
 $ legend.position     : chr "right"
 $ legend.direction    : NULL
 $ legend.justification: chr "center"
 $ legend.box          : NULL
 $ panel.background    :List of 4
  ..$ fill    : chr "grey90"
  ..$ colour  : logi NA
  ..$ size    : NULL
  ..$ linetype: NULL
  ..- attr(*, "class")= chr [1:2] "element_rect" "element"
 $ panel.border        : list()
  ..- attr(*, "class")= chr [1:2] "element_blank" "element"
 $ panel.grid.major    :List of 4
  ..$ colour  : chr "white"
  ..$ size    : NULL
  ..$ linetype: NULL
  ..$ lineend : NULL
  ..- attr(*, "class")= chr [1:2] "element_line" "element"
 $ panel.grid.minor    :List of 4
  ..$ colour  : chr "grey95"
  ..$ size    : num 0.25
  ..$ linetype: NULL
  ..$ lineend : NULL
  ..- attr(*, "class")= chr [1:2] "element_line" "element"
 $ panel.margin        :Class 'unit'  atomic [1:1] 0.25
  .. ..- attr(*, "unit")= chr "lines"
  .. ..- attr(*, "valid.unit")= int 3
 $ panel.margin.x      : NULL
 $ panel.margin.y      : NULL
 $ strip.background    :List of 4
  ..$ fill    : chr "grey80"
  ..$ colour  : logi NA
  ..$ size    : NULL
  ..$ linetype: NULL
  ..- attr(*, "class")= chr [1:2] "element_rect" "element"
 $ strip.text.x        :List of 8
  ..$ family    : NULL
  ..$ face      : NULL
  ..$ colour    : NULL
  ..$ size      : NULL
  ..$ hjust     : NULL
  ..$ vjust     : NULL
  ..$ angle     : NULL
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ strip.text.y        :List of 8
  ..$ family    : NULL
  ..$ face      : NULL
  ..$ colour    : NULL
  ..$ size      : NULL
  ..$ hjust     : NULL
  ..$ vjust     : NULL
  ..$ angle     : num -90
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ plot.background     :List of 4
  ..$ fill    : NULL
  ..$ colour  : chr "white"
  ..$ size    : NULL
  ..$ linetype: NULL
  ..- attr(*, "class")= chr [1:2] "element_rect" "element"
 $ plot.title          :List of 8
  ..$ family    : NULL
  ..$ face      : chr "bold"
  ..$ colour    : NULL
  ..$ size      : NULL
  ..$ hjust     : NULL
  ..$ vjust     : NULL
  ..$ angle     : NULL
  ..$ lineheight: NULL
  ..- attr(*, "class")= chr [1:2] "element_text" "element"
 $ plot.margin         :Class 'unit'  atomic [1:4] 1 1 0.5 0.5
  .. ..- attr(*, "unit")= chr "lines"
  .. ..- attr(*, "valid.unit")= int 3
 - attr(*, "class")= chr [1:2] "theme" "gg"
 - attr(*, "complete")= logi TRUE
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(soraya.cormat.theme)
Soraya.cormat(data,theme=soraya.cormat.theme)
}
\keyword{datasets}
