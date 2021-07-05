\name{Mariathasan2018_PDL1_treatment}
\docType{data}
\alias{Mariathasan2018_PDL1_treatment}
\title{
    Exemplary Mariathasan processed data
}
\arguments{
    \item{metadata}{Logical, whether only metadata should be returned}
}
\description{
    The data object includes the following information on samples from 192 bladder cancer patients:
    \describe{
        \item{name}{cohort name related to the original work from Mariathasan et al., Nature, 2018.}
        \item{counts}{gene expression matrix, counts derived from bulk RNA-seq.}
        \item{tpm}{gene expression matrix, tpm values derived from bulk RNA-seq.}
        \item{response}{patient's response to immunotherapy, defining complete response (CR) patients as responders
        and progressive disease (PD) patients as non-responders.}
        \item{TMB}{Tumor mutational burden (TMB) defined by using panel sequencing to estimate the TMB by including
        synonymous mutations additionally to non-synonymous mutations.}
        \item{cancertype}{cancer type from which the bulk RNA-seq was obtained.}
    }
}
\usage{
    Mariathasan2018_PDL1_treatment(metadata = FALSE)
}
\examples{
    Mariathasan2018_PDL1_treatment(metadata = FALSE)
}
\format{SummarizedExperiment}
\value{Returns a \code{SummarizedExperiment} object.}
\author{
    Oscar Lapuente-Santana
}
\source{
    IMvigor210CoreBiologies package: http://research-pub.gene.com/IMvigor210CoreBiologies/
    under the CC-BY license.
}
\references{
    Mariathasan, S., Turley, S., Nickles, D. et al. TGFβ attenuates tumour response to PD-L1 blockade by
    contributing to exclusion of T cells. Nature 554, 544–548 (2018). https://doi.org/10.1038/nature25501.
}
\keyword{datasets}
