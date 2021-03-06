% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_var_info.R
\name{get_var_info}
\alias{get_var_info}
\title{Get information regarding the CSPP variables}
\usage{
get_var_info(
  var_names = NULL,
  categories = NULL,
  related_to = NULL,
  exact = FALSE
)
}
\arguments{
\item{var_names}{Default is NULL. Takes a character string. If left blank the
function does not subset by variable name.}

\item{categories}{Default is NULL. Takes a character string. If left blank the
function does not subset by category.}

\item{related_to}{Default is NULL. Takes a character string. If the user supplies
a character string, the function searches the other relevant fields (variable name, short/long
description, and source) for string and returns either exact or partial matches
depending on the value of the \code{exact} argument.}

\item{exact}{Default is FALSE. If true, exact matches for the other supplied arguments
are used. If TRUE, then partial matches are also returned.}
}
\description{
\code{get_var_info} retrieves information regarding variables in the CSPP dataset.
The information available includes: the years each variable is observed in the data;
a short and long description of each variable; the source and citation for each
variable; and a general category that describes each variable.
}
\details{
Users can request this information regarding specific variables or all the variables
within a specific category. Users can request exact matches of their supplied arguments
or allow partial matches with the \code{exact} argument. Users can also search all these
relevant fields (variable name, short/long description, source) for a keyword/s with the
supply a string \code{related_to} argument to identify variables related to a topic of interest.

Specifying no arguments returns all the information for all the variables
in the CSPP dataset.
}
\examples{
\dontrun{
# returns all variable information
get_var_info()

# searches all columns for non-exact matches of "pop" and "fem"
get_var_info(related_to = c("pop","femal"))

get_var_info(categories = "demographics")

# returns non-exact matches for variables with "pop" and that have "femal" anywhere in the row
get_var_info(var_names = "pop",
             related_to = "femal")
}

}
\seealso{
\code{\link{get_cspp_data}}, \code{\link{get_cites}}, \code{\link{generate_map}}
}
