\name{Soraya.heatmap}
\alias{Soraya.heatmap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Soraya.heatmap}
\description{Creates a heatmap with two dedrograms for any numerical matrix.}
\usage{
Soraya.heatmap(data, sample.names=NULL, gene.names=NULL, color=colorRampPalette(c("red", "yellow", "green"))(n = 299), agglomeration.method="ward.D2", distance.method="euclidean", dendro.upper.size=4, dendro.right.size=4, htheme=soraya.heatmap.theme, dtheme=soraya.dendro.theme)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
A numerical matrix.
}
  \item{sample.names}{
A character vector with sample names. For each data column, a sample name should be given.
}
  \item{gene.names}{
A character vector with gene/protein names. For each data row, a name should be given.
}
  \item{color}{
A character vector containing color codes, as returned from brewer.pal() or colorRampPalette().
}
  \item{agglomeration.method}{
The agglomeration method to be used. This should be (an unambiguous abbreviation of) one of "ward.D", "ward.D2", "single", "complete", "average" (= UPGMA), "mcquitty" (= WPGMA), "median" (= WPGMC) or "centroid" (= UPGMC).
}
  \item{distance.method}{
The distance measure to be used. This must be one of "euclidean", "maximum", "manhattan", "canberra", "binary" or "minkowski". Any unambiguous substring can be given.
}
  \item{dendro.upper.size}{
Size of the upper dendrogram, in cm.
}
  \item{dendro.right.size}{
Size of the right dendrogram, in cm.
}
  \item{htheme}{
An optional ggplot theme that defines the inner heatmap details.
}
  \item{dtheme}{
An optional ggplot theme that defines the dentrogram details.
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
A ggplot2 plot grob ready to be plotted with grid.draw().
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
tbd
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
