\name{ursaGrid}
\alias{class-ursaGrid}
\alias{str.ursaGrid}
\alias{print.ursaGrid}
\alias{dim.ursaGrid}
\alias{as.data.frame.ursaGrid}
\title{
Spatial parameters of raster images.
}
\description{
Class \code{ursaGrid} is a part of class \code{ursaRaster}. It defines spatial locations of image.
}
\usage{

\method{print}{ursaGrid}(x, ...)

\method{str}{ursaGrid}(object, ...)

\method{dim}{ursaGrid}(x)

\method{as.data.frame}{ursaGrid}(x, row.names = NULL, optional = FALSE, ...)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
\code{ursaGrid} object in functions \code{print}, \code{dim} and \code{as.data.frmame}.
%%~ Any in function \code{is.grid}
}
  \item{object}{
\code{ursaGrid} object in function \code{str}.
}
  \item{row.names}{
Ignored. Argument, which is passed to generic function \code{\link[base]{as.data.frame}}.
}
  \item{optional}{
Ignored. Argument, which is passed to generic function \code{\link[base]{as.data.frame}}.
}
  \item{\dots}{
Further arguments passed to generic functions \code{\link[base]{as.data.frame}}, \code{\link[base]{print}}, and \code{\link[utils]{str}}.
}
}
\details{
The blank \code{ursaGrid} object is generated by calling of \code{ursa_grid()} without arguments. These approaches provide unified sequence of list's items: \preformatted{
List of 9
 $ columns: int NA
 $ rows   : int NA
 $ resx   : num NA
 $ resy   : num NA
 $ minx   : num NA
 $ maxx   : num NA
 $ miny   : num NA
 $ maxy   : num NA
 $ proj4  : chr ""
 - attr(*, "class")= chr "ursaGrid"
NULL
}

}
\value{

Object of class \code{ursaGrid} is a list with items:
\item{columns}{Number of columns (samples)}
\item{rows}{Number of rows (lines)}
\item{resx}{Grid cell size by horizontal axis}
\item{resy}{Grid cell size by vertical axis}
\item{minx}{Left margin of boundary box}
\item{maxx}{Right margin of boundary box}
\item{miny}{Bottom margin of boundary box}
\item{maxy}{Top margin of boundary box}
\item{proj4}{PROJ.4 string}

%%~ \code{is.grig} returns \code{TRUE}, if class of \code{x} is \code{ursaGrid}
Function \code{dim} for object of class \code{ursaGrid} returns named vector of length 2: number of rows (\code{"lines"}) and number of elements in a row (\code{"samples"})
}
%%~ \references{
%%~ %% ~put references to the literature/web site here ~
%%~ }
\author{
Nikita Platonov \email{platonov@sevin.ru}
}
%%~ \note{
%%~ %%  ~~further notes~~
%%~ }

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[ursa]{regrid}}, \code{\link[ursa:session]{session_grid}}
}
\examples{
session_grid(NULL)
print(methods(class="ursaGrid"))

a <- pixelsize()
g <- ursa_grid(a)
print(is.ursa(a,"grid"))
print(is.ursa(g,"grid"))
print(g)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{classes}
\keyword{print}
