% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cross_references.R
\name{get_xrefs_by_gene}
\alias{get_xrefs_by_gene}
\title{Get cross references by gene symbol or name}
\usage{
get_xrefs_by_gene(
  species_name,
  gene,
  ensembl_db = "core",
  external_db = "",
  verbose = FALSE,
  warnings = TRUE,
  progress_bar = TRUE
)
}
\arguments{
\item{species_name}{The species name, i.e., the scientific name, all letters
lowercase and space replaced by underscore. Examples: \code{'homo_sapiens'}
(human), \code{'ovis_aries'} (Domestic sheep) or \code{'capra_hircus'}
(Goat).}

\item{gene}{Symbol or display name of a gene, e.g., \code{'ACTB'} or
\code{'BRCA2'}.}

\item{ensembl_db}{Restrict the search to a database other than the default.
Ensembl's default database is \code{'core'}.}

\item{external_db}{Filter by external database, e.g. \code{'HGNC'}. An empty
string indicates no filtering.}

\item{verbose}{Whether to be verbose about the http requests and respective
responses' status.}

\item{warnings}{Whether to show warnings.}

\item{progress_bar}{Whether to show a progress bar.}
}
\value{
A \code{\link[tibble]{tibble}} of 12 variables:
\describe{
\item{\code{species_name}}{Ensembl species name: this is the name used internally
by Ensembl to uniquely identify a species by name. It is the scientific
name but formatted without capitalisation and spacing converted with an
underscore, e.g., \code{'homo_sapiens'}.}
\item{\code{gene}}{Gene symbol.}
\item{\code{ensembl_db}}{Ensembl database.}
\item{\code{primary_id}}{Primary identification in external database.}
\item{\code{display_id}}{Display identification in external database.}
\item{\code{external_db_name}}{External database name.}
\item{\code{external_db_display_name}}{External database display name.}
\item{\code{version}}{TODO}
\item{\code{info_type}}{There are two types of external cross references (XRef):
direct (\code{'DIRECT'}) or dependent (\code{'DEPENDENT'}). A direct cross
reference is one that can be directly linked to a gene, transcript or
translation object in Ensembl Genomes by synonymy or sequence similarity. A
dependent cross reference is one that is transitively linked to the object
via the direct cross reference. The value can also be \code{'UNMAPPED'} for
unmapped cross references, or \code{'PROJECTION'} for TODO.}
\item{\code{info_text}}{TODO}
\item{synonyms}{Other names or acronyms used to refer to the
gene. Note that this column is of the list type.}
\item{\code{description}}{Brief description of the external database entry.}
}
}
\description{
This function retrieves cross references by symbol or display name of a gene.
The data is returned as a \code{\link[tibble]{tibble}} where each row is a
cross reference related to the provided symbol or display name of a gene. See
below under section Value for details about each column.
}
\section{Ensembl REST API endpoints}{
\code{get_xrefs_by_gene()} makes GET requests to
\href{https://rest.ensembl.org/documentation/info/xref_name}{/xrefs/name/:species/:name}.
}

\examples{
# Get cross references that relate to gene BRCA2
get_xrefs_by_gene(species_name = 'human', gene = 'BRCA2')

}
