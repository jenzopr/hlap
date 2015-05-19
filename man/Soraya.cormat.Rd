\name{Soraya.cormat}
\alias{Soraya.cormat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Soraya.cormat}
\description{Creates a correlation heatmap for any numerical matrix.}
\usage{
Soraya.cormat(data, sample.names = NULL, color = NULL, use = "everything", title = "", theme = soraya.heatmap.theme)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
A numerical matrix.
}
  \item{sample.names}{
A character vector with sample names. For each data column, a sample name should be given.
}
  \item{color}{
A character vector containing color codes, as returned from brewer.pal().
}
  \item{use}{
The use variable from the cor() function.
}
  \item{title}{
The plots title.
}
  \item{theme}{
An optional ggplot theme that defines plot details.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A ggplot2 figure.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Soraya Hoelper and Jens Preuﬂner.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Load the data ----
data(diamonds)
d = dcast(diamonds, carat ~ color, value.var = "price", fun.aggregate = mean)
Soraya.cormat(d[,2:8], color=brewer.pal(9,"Blues"), title="Diamonds price correlation")
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
