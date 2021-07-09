\name{opt_models}
\docType{data}
\alias{opt_models}
\title{
    Cancer-specifc model feature parameters
}
\arguments{
    \item{metadata}{Logical, whether only metadata should be returned}
}
\description{
    Cancer-specifc model feature parameters learned, for each quantitative descriptor
    during training using multi-task learning with randomized cross-validation repeated 100 times.
    For each quantitative descriptor, 1000 models are available (100 per task).
}
\usage{
    opt_models(metadata = FALSE)
}
\examples{
    opt_models(metadata = FALSE)
}
\format{List}
\value{Returns a \code{list} object.}
\author{
    Oscar Lapuente-Santana
}
\references{
    Lapuente-Santana, Óscar, Maisa van Genderen, Peter A. J. Hilbers, Francesca Finotello, and Federica Eduati.
    2021. “Interpretable Systems Biomarkers Predict Response to Immune-Checkpoint Inhibitors.” Patterns, 100293.
    https://doi.org/10.1016/j.patter.2021.100293.
}
