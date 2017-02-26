\name{countryISO}
\alias{countryISO}
\title{ Country ISO generator }
\description{ Returns the country iso abbreviation }
\usage{ countryISO(country, lvl = FALSE) }
\arguments{
  \item{country}{ Country name }
  \item{lvl}{ Should the maximal map detalisation level be shown? Default value is FALSE. }
}
\value{
\item{out}{ Country ISO 3166-1 alpha-3 code (if lvl = FALSE), or maximal map detalisation level (if lvl = TRUE)}
}

\examples{
countryISO("Germany", lvl = FALSE)
}
\seealso{
\code{\link{iso3}}
}
\references{
\url{https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3}
}
\author{
\href{mailto:admin@dkisler.de}{D.Kisler}
}
\keyword{ ~country }
\keyword{ ~code }
\keyword{ ~iso }
\keyword{ ~alpha3 }
