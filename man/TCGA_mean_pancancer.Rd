\name{TCGA_mean_pancancer}
\docType{data}
\alias{TCGA_mean_pancancer}
\title{
     Mean of the TPM expression of each gene across all TCGA cancer types
}
\arguments{
    \item{metadata}{Logical, whether only metadata should be returned}
}
\description{
    Mean of the TPM expression of each gene across all TCGA cancer types.
    It is required for normalization of input TPM gene expression data.
}
\usage{
    TCGA_mean_pancancer(metadata = FALSE)
}
\examples{
    TCGA_mean_pancancer(metadata = FALSE)
}
\format{Numeric}
\value{Returns a \code{numeric} vector.}
\author{
    Oscar Lapuente-Santana
}
\references{
    The Cancer Genome Atlas Research Network., Weinstein, J., Collisson, E. et al. The Cancer Genome Atlas Pan
    -Cancer analysis project. Nat Genet 45, 1113–1120 (2013). https://doi.org/10.1038/ng.2764

    Lapuente-Santana, Óscar, Maisa van Genderen, Peter A. J. Hilbers, Francesca Finotello, and Federica Eduati.
    2021. “Interpretable Systems Biomarkers Predict Response to Immune-Checkpoint Inhibitors.” Patterns, 100293.
    https://doi.org/10.1016/j.patter.2021.100293.
}

