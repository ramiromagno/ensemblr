% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/divisions.R
\name{get_divisions}
\alias{get_divisions}
\title{Retrieve Ensembl divisions}
\usage{
get_divisions(verbose = FALSE, warnings = TRUE)
}
\arguments{
\item{verbose}{Whether to be chatty.}

\item{warnings}{Whether to print warnings.}
}
\value{
A character vector of Ensembl divisions.
}
\description{
This function retrieves Ensembl divisions. Ensembl data is split up in
separate databases which are loosely based on taxonomic divisions or
sub-groups.
}
\examples{
# Retrieve a character vector of Ensembl divisions
get_divisions()

}
