% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/agronomic-norms.R
\name{agronomic_norms_latlng}
\alias{agronomic_norms_latlng}
\title{Agronomic Norms Latitude & Longitude.}
\usage{
agronomic_norms_latlng(latitude, longitude, month_day_start,
  month_day_end = "", year_start, yearEnd, exclude_years = "",
  accumulation_start_date = "", gdd_method = "standard",
  gdd_base_temp = "10", gdd_min_boundary = "10", gdd_max_boundary = "30")
}
\arguments{
\item{-}{latitude: the latitude for the location for which you want data}

\item{-}{longitude: the latitude for the location for which you want data}

\item{-}{month_day_start: character string of the month and day for the start
of the range of days you are calculating norms for, e.g., '07-01' (July 1)}

\item{-}{month_day_end: character string of the month and day for the end of the
range of days you are calculating norms for, e.g., '07-10' (July 10)}

\item{-}{year_start: the starting year (inclusive) of the range of years for which
you're calculating norms, as a string, e.g., '2008'}

\item{-}{year_end: the end year (inclusive) of the range of years for which you're
calculating norms, as a string, e.g., '2015'}

\item{-}{exclude_years: You can opt to exclude one or more years from the range, and
it's values will not be included in the averages. To exclude
multiple years, separate them with a comma. Note: You must always have
at least three years of data to average}

\item{-}{accumulation_start_date: If you want to start counting accumulations from
before the specified start date (or before the
planting date if using the most recent Planting),
use this parameter to specify the date from which
you wish to start counting. The daily values object
will still only return the days between the start
and end date. This date must come before the start date.}

\item{-}{gdd_method: There are variety of equations available for calculating growing degree-days.
Valid entries are: 'standard', 'modifiedstandard', 'min-temp-cap', 'min-temp-constant'
See the API documentation for a description of each method.  The standard
method will be used if none is specified}

\item{-}{gdd_base_temp: The base temp to use for the any of the GDD equations. The default value of 10 will
be used if none is specified}

\item{-}{gdd_min_boundary: The minimum boundary to use in the selected GDD equation.
The behavior of this value is different depending on the equation you're using
The default value of 10 will be used if none is specified}

\item{-}{gdd_max_boundary: The max boundary to use in the selected GDD equation. The
behavior of this value is different depending on the equation you're using.
The default value of 30 will be used if none is specified}
}
\value{
data.table of requested data for dates requested
}
\description{
\code{agronomic_norms_latlng} calls Historic Agronomic Norms by Geolocation Endpoint of API using Lat/Lon
}
\details{
This is a flexible API that allows you to calculate the averages for agronomic values
and accumulations across any range of years for which we have data. Whereas the Agronomic
Values and Accumulations API only supports up to 30 months of daily data, this API allow
you to compare this year and the previous year to the long-term normals (however many years
you want to include).  Uses the aWhere API Lat/Lon construct to request data. Uses default
units returned by the API
}
\examples{
\dontrun{gronomic_norms_latlng('39.8282', '-98.5795', '07-01', '07-10', '2008', '2015','2010,2011','','standard','10','10','30')}
}
\references{
http://developer.awhere.com/api/reference/agronomics/norms/geolocation
}

