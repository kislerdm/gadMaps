\name{getGeoJson}
\alias{getGeoJson}
\title{ GeoJson map generator }
\description{ Generates geojson country map using sp files from \url{http://gadm.org/} }
\usage{ getGeoJson(country, iso = FALSE, lvl = 0, saveRaw = FALSE,
saveJson = TRUE, folder = "./") }
\arguments{
  \item{country}{ Country name, or its iso 3 abbreviation }
  \item{iso}{ Flag to accept \href{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3}{ISO 3166-1 alpha-3 code} if TRUE. Defauls value is FALSE. }
  \item{lvl}{ Map detalisation level, varies from the country border (lvl = 0) to country regions/provinces borders. Highest available lvl cab be found in \code{\link{iso3}} dataset.}
  \item{saveRaw}{ Should the downloaded sp file be saved? Defauls value is FALSE. }
  \item{saveJson}{ Should the generated geojson file be saved? Defauls value is TRUE. }
  \item{folder}{ Folder to save files. }
}
\value{
\item{ json }{ Generated geojson map. }
\item{ bbox }{ Bounding box of the map, contains the min and man values of the longitude and latitude coordinates. }
}
\examples{
 #geojson map of Germany
 map <- getGeoJson("DEU", iso = TRUE, saveJson = FALSE)
 map <- getGeoJson("Germany", saveJson = FALSE)
}
\seealso{
\code{\link{geojson_json}}
\code{\link{countryISO}}
\code{\link{iso3}}
}
\references{ The map data are from \url{http://gadm.org/} }
\author{ \href{mailto:admin@dkisler.de}{D.Kisler} }
\keyword{ ~map }
\keyword{ ~geojson }
