\name{group_lrpairs}
\docType{data}
\alias{group_lrpairs}
\title{
     Groups of ligand-receptor pairs
}
\arguments{
    \item{metadata}{Logical, whether only metadata should be returned}
}
\description{
    Information to group ligand-receptor pairs because of sharing the same gene,
    either as ligand or receptor.
}
\usage{
    group_lrpairs(metadata = FALSE)
}
\examples{
    group_lrpairs(metadata = FALSE)
}
\format{List}
\value{Returns a \code{list} object.}
\author{
    Oscar Lapuente-Santana
}
\references{
    Lapuente-Santana, Óscar, Maisa van Genderen, Peter A. J. Hilbers, Francesca Finotello, and Federica Eduati.
    2021. “Interpretable Systems Biomarkers Predict Response to Immune-Checkpoint Inhibitors.” Patterns, 100293.
    https://doi.org/https://doi.org/10.1016/j.patter.2021.100293.
}
