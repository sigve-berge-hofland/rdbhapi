% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DBH_api_tabell.R
\name{dbh_data}
\alias{dbh_data}
\title{Get data from API as R dataframe}
\usage{
dbh_data(
  table_id,
  filters = NULL,
  group_by = NULL,
  sort_by = NULL,
  exclude = NULL,
  variables = NULL,
  api_version = 1
)
}
\arguments{
\item{table_id}{The code name for the dataset}

\item{filters}{A named list, where the names are the names of the variables
in the dataset to be filtered, and the values contain the matching
conditions.}

\item{group_by}{A list of variables to include in the aggregation for
aggregating tables.}

\item{sort_by}{A list of variables that define the sorting order.}

\item{exclude}{A named list, where the names must also occur in
\code{filters}, and the values specify values to be excluded from the
filter.}

\item{variables}{A list of variables to include in dataset}

\item{api_version}{DBH-API version}
}
\value{
R dataframe
}
\description{
Send request from R to DBH-API and get data from DBH-API into R.
 Data are converted in right format using help
 function dbh_metadata \code{\link{dbh_metadata}}
 For token users it is possible to get token and use it further
}
\examples{

# Table with usage of filter and group by variables

filter_example <- dbh_data (142, filters =
list(Institusjonskode=c("top",3)), group_by = "Institusjonskode")
# Table using bulk data

bulk_example <- dbh_data(211)
}
