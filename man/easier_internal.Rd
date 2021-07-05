\name{easier_internal}
\docType{data}
\alias{easier_internal}
\title{
    Internal functional data of easier package
}
\arguments{
    \item{metadata}{Logical, whether only metadata should be returned}
}
\description{
 The data object consists of multiple associated objects:
    \describe{
        \item{opt_models}{list with cancer-specifc model parameters learned during training.}
        \item{opt_xtrain_stats}{list with cancer-specific mean and standard deviation of the features used during
        training.}
        \item{cor_genes_to_remove}{list of genes used to compute correlated proxies of immune response.}
        \item{intercell_network_cancer_spec}{list of cancer-specific intercellular networks based on literature
        supported pairs from the Ramilowski database (Ramilowski et al., Nat.Commun., 2015).}
        \item{lr_frequency}{numeric vector with the frequency of each ligand-receptor pair feature across the whole
        TCGA database.}
        \item{grouping_lrpairs_info}{list with information on how ligand-receptor pairs were grouped.}
        \item{HGNC}{data.frame with annotations on approved gene symbols.}
        \item{res_sig}{list of gene signatures included in the immune resistance program from
        Jerby-Arnon et al., 2018.}
    }
}
\usage{
    easier_internal(metadata = FALSE)
}
\examples{
    easier_internal(metadata = FALSE)
}
\format{multiple objects}
\value{Returns several objects.}
\author{
    Oscar Lapuente-Santana
}
\references{
    Lapuente-Santana, Óscar, Maisa van Genderen, Peter A. J. Hilbers, Francesca Finotello, and Federica Eduati.
    2021. “Interpretable Systems Biomarkers Predict Response to Immune-Checkpoint Inhibitors.” Patterns, 100293.
    https://doi.org/https://doi.org/10.1016/j.patter.2021.100293.
}
\keyword{datasets}
