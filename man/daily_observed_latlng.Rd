% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weather-daily.R
\name{daily_observed_latlng}
\alias{daily_observed_latlng}
\title{daily_observed_latlng.}
\usage{
daily_observed_latlng(latitude, longitude,
  day_start = as.character(ymd(Sys.Date()) - days(1)), day_end = "")
}
\arguments{
\item{-}{latitude: the latitude of the requested location}

\item{-}{longitude: the longitude of the requested locations}

\item{-}{day_start: character string of start date in form: YYYY-MM-DD
Defaults to system date -1 if left blank}

\item{-}{day_end: character string of end date in form: YYYY-MM-DD
If Not included will return data only for start date}
}
\value{
data.table of requested data for dates requested
}
\description{
\code{daily_observed_latlng} calls Daily Observed Weather by Geolocation Endpoint of API using Lat/Lon
}
\details{
The Weather APIs provide access to aWhere's agriculture-specific Weather Terrain™ system,
and allows retrieval and integration of data across all different time ranges—long term normals,
daily observed, current weather, and forecasts. These APIs are designed for efficiency,
allowing you to customize the responses to return just the attributes you need.

Understanding the recent and long-term daily weather is critical for making in-season decisions.
This API opens the weather attributes that matter most to agriculture. By default you are allowed
access of up to 30 months of data (beyond that, use the Norms API to get multi-year averages).
This function assumes that the data to be requested is Min/Max Temperature, Precipitation,
Min/Max Humidity, Solar Radiation, and Maximum Wind Speed,
Morning Max Windspeed, and Average Windspeed.  Uses the lat/lon construct for requesting data.
Uses default units returned by the API
}
\examples{
\dontrun{daily_observed_latlng('39.8282', '-98.5795','2014-04-28','2015-05-01')}
}
\references{
http://developer.awhere.com/api/reference/weather/observations/geolocation
}

