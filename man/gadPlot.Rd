\name{gadPlot}
\alias{gadPlot}
\title{ gadMaps plotter }
\description{ Plots the leaflet map with the gad map polygon }
\usage{ gadPlot(country, type = "country") }
\arguments{
  \item{country}{ Country name (if type = "country"), or a geopolygon ("json") to be to be plotted on a leaflet map.}
  \item{type}{ "json", or "country" }
}
\value{ plot the leaflet map object }
\references{ The map data are from \url{http://gadm.org/} }
\author{ \href{mailto:admin@dkisler.de}{D.Kisler} }
\seealso{
\code{\link{getGeoJson}}
\code{\link{iso3}}
\code{\link{leaflet}}
}
\examples{
library(leaflet)
gadPlot("Germany", type = "country")
}
\keyword{ ~leaflet }
\keyword{ ~map }
\keyword{ ~polygon }
\keyword{ ~plotter }
