\name{Soraya.heatmap}
\alias{Soraya.heatmap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Soraya.heatmap}
\description{Creates a correlation heatmap for any numerical matrix.}
\usage{
Soraya.heatmap(data, sample.names = NULL, color = NULL, use = "everything", title = "", theme = soraya.heatmap.theme)
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
Soraya Hoelper and Jens Preußner.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (data, sample.names = NULL, color = NULL, use = "everything", 
    title = "", theme = soraya.heatmap.theme) 
{
    if (is.null(sample.names)) {
        sample.names = colnames(data)
    }
    if (length(colnames(data)) == length(sample.names)) {
        colnames(data) = sample.names
    }
    else {
        stop(paste("Could not assign", length(sample.names), 
            "sample.names to", length(colnames(data)), "data columns, lengths differ."))
    }
    if (!all(unlist(lapply(data, class)) == "numeric")) {
        stop("Encountered non-numeric columns in data.")
    }
    if (any(is.na(data)) && use == "everything") {
        use = "complete.obs"
        warning("NA's detected in data, using use=\"complete.obs\" for correlation matrix.")
    }
    c = cor(data, use = use)
    hc = hclust(as.dist((1 - c)/2))
    c = c[hc$order, hc$order]
    m = melt(c)
    g = ggplot(m, aes(x = X2, y = X1, fill = value))
    g = g + geom_tile(color = "white")
    g = g + scale_fill_gradientn(colours = color, name = "Pearson\ncorrelation")
    g = g + coord_fixed()
    g = g + ggtitle(title)
    g = g + theme
    return(g)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
