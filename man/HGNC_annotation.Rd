\name{HGNC_annotation}
\docType{data}
\alias{HGNC_annotation}
\title{
    Gene symbols approved annotations.
}
\arguments{
    \item{metadata}{Logical, whether only metadata should be returned}
}
\description{
    Gene symbols approved annotations.
}
\usage{
    HGNC_annotation(metadata = FALSE)
}
\examples{
    HGNC_annotation(metadata = FALSE)
}
\format{Data.frame}
\value{Returns a \code{data.frame} object.}
\author{
    Oscar Lapuente-Santana
}
\references{
    Tweedie S, Braschi B, Gray KA, Jones TEM, Seal RL, Yates B, Bruford EA. Genenames.org: the HGNC and VGNC
    resources in 2021. Nucleic Acids Res. PMID: 33152070 PMCID: PMC7779007 DOI: 10.1093/nar/gkaa980

    https://www.genenames.org/tools/multi-symbol-checker/
}
