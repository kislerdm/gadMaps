countryISO <- function(country, lvl = FALSE)
{
  out <- iso3$iso[grep(tolower(country), tolower(iso3$name))]
  if(lvl == T)  out <- iso3$maxlvl_map[grep(tolower(country), tolower(iso3$name))]
  return( out )
}
