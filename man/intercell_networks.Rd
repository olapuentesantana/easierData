\name{intercell_networks}
\docType{data}
\alias{intercell_networks}
\title{
    Cancer-specific intercellular networks, including a pan-cancer network
}
\arguments{
    \item{metadata}{Logical, whether only metadata should be returned}
}
\description{
    Cancer-specific intercellular networks based on literature supported pairs
    from the Ramilowski database (Ramilowski et al., Nat.Commun., 2015), filtering
    for 24 cell types acknowledged to be present in the TME.
    Additionally, a pan-cancer cell type is included using data from the CCLE
    (Barretina et al., Nature, 2012) by computing the median expression of each
    gene across cell lines related to the selected cancer types.
    A pan-cancer network is also available and this is based on the union of all
    ligand-receptor pairs present across the cancer-specific networks.
}
\usage{
    intercell_networks(metadata = FALSE)
}
\examples{
    intercell_networks(metadata = FALSE)
}
\format{List}
\value{Returns a \code{list} object.}
\author{
    Oscar Lapuente-Santana
}
\references{

    Ramilowski, Jordan A., Tatyana Goldberg, Jayson Harshbarger, Edda Kloppmann, Marina Lizio, Venkata P. Satagopam,
    Masayoshi Itoh, et al. 2015. “A Draft Network of Ligand–Receptor-Mediated Multicellular Signalling in Human.”
    Nature Communications 6 (1): 7866. https://doi.org/10.1038/ncomms8866.

    Barretina, J., Caponigro, G., Stransky, N. et al. The Cancer Cell Line Encyclopedia enables predictive modelling
    of anticancer drug sensitivity. Nature 483, 603–607 (2012). https://doi.org/10.1038/nature11003

    Lapuente-Santana, Óscar, Maisa van Genderen, Peter A. J. Hilbers, Francesca Finotello, and Federica Eduati.
    2021. “Interpretable Systems Biomarkers Predict Response to Immune-Checkpoint Inhibitors.” Patterns, 100293.
    https://doi.org/10.1016/j.patter.2021.100293.
}
