% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/meltAssay.R
\name{meltAssay}
\alias{meltAssay}
\alias{meltAssay,SummarizedExperiment-method}
\title{Converts a \code{\link[=SummarizedExperiment-class]{SummarizedExperiment}}
object into a long data.frame}
\usage{
meltAssay(
  x,
  add_row_data = NULL,
  add_col_data = NULL,
  abund_values = "counts",
  ...
)

\S4method{meltAssay}{SummarizedExperiment}(
  x,
  add_row_data = NULL,
  add_col_data = NULL,
  abund_values = "counts",
  ...
)
}
\arguments{
\item{x}{A numeric matrix or a
\code{\link[=SummarizedExperiment-class]{SummarizedExperiment}}}

\item{add_row_data}{\code{NULL}, \code{TRUE} or a \code{character} vector to
select information from the \code{rowData} to add to the molten assay data.
If \code{add_row_data = NULL} no data will be added, if
\code{add_row_data = TRUE} all data will be added and if
\code{add_row_data} is a \code{character} vector, it will be used to subset
to given column names in \code{rowData}. (default:
\code{add_row_data = NULL})}

\item{add_col_data}{\code{NULL}, \code{TRUE} or a \code{character} vector to
select information from the \code{colData} to add to the molten assay data.
If \code{add_col_data = NULL} no data will be added, if
\code{add_col_data = TRUE} all data will be added and if
\code{add_col_data} is a \code{character} vector, it will be used to subset
to given column names in \code{colData}. (default:
\code{add_col_data = NULL})}

\item{abund_values}{a \code{character} value to select an
\code{\link[SummarizedExperiment:SummarizedExperiment-class]{assayNames}}}

\item{...}{optional arguments currently not used.}
}
\value{
A \code{tibble} with the molten data. The assy values are given in a
column named like the selected assay \code{abund_values}. In addition, a
column \dQuote{FeatureID} will contain the rownames, if set, and analogously
a column \dQuote{SampleID} with the colnames, if set
}
\description{
Converts a \code{\link[=SummarizedExperiment-class]{SummarizedExperiment}}
object into a long data.frame which can be used for
\code{\link[tidyverse:tidyverse-package]{tidyverse}}-tools.
}
\details{
If the \code{colData} contains a column \dQuote{SampleID} or the
\code{rowData} contains a column \dQuote{FeatureID}, they will be renamed to
\dQuote{SampleID_col} and \dQuote{FeatureID_row}, if row names or column
names are set.
}
\examples{
data(GlobalPatterns)
molten_se <- meltAssay(GlobalPatterns,
                       add_row_data = TRUE,
                       add_col_data = TRUE,
                       abund_values = "counts")
molten_se
}
\author{
Sudarshan A. Shetty
}
