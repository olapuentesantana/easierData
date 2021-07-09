\name{opt_xtrain_stats}
\docType{data}
\alias{opt_xtrain_stats}
\title{
     Training set cancer-specifc features mean and standard deviation
}
\arguments{
    \item{metadata}{Logical, whether only metadata should be returned}
}
\description{
    Cancer-specific features mean and standard deviation of the training set used during
    randomized cross-validation repeated 100 times. It is required for normalization of the test set.
}
\usage{
    opt_xtrain_stats(metadata = FALSE)
}
\examples{
    opt_xtrain_stats(metadata = FALSE)
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

