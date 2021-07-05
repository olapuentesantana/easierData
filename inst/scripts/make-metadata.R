Mariathasan2018_PDL1_treatment <- data.frame(
  stringsAsFactors = FALSE,
  Title = "Mariathasan2018_PDL1_treatment",
  Description = paste(
    "Processed RNA-seq data, quantified as counts and TPM,",
    "for bladder cancer samples pre anti-PDL1 immunotherapy.",
    "Information on patient's tumor mutational burden",
    "and response to anti-PD1 treatment is also provided.",
    "Represented as a SummarizedExperiment;",
    "derived from IMvigor210CoreBiologies R package",
    "(Mariathasan et al., Nature, 2018) under the CC-BY license."
  ),
  BiocVersion = "3.13",
  Genome = NA,
  SourceType = "tar.gz",
  SourceUrl = "http://research-pub.gene.com/IMvigor210CoreBiologies/",
  SourceVersion = "Feb 14 2018",
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = paste("IMvigor210CoreBiologies package; ",
    "Mariathasan S, Turley S, Nickles D et al., “TGF-b",
    "attenuates tumor response to PD-L1 blockade by contributing to exclusion of T cells."
  ),
  Maintainer = "Oscar Lapuente-Santana <oscar.lapuente.santana@gmail.com>",
  RDataClass = "SummarizedExperiment",
  DispatchClass = "Rda",
  RDataPath = "easierData/Mariathasan2018_PDL1_treatment.Rda"
)

easier_internal <- data.frame(
  stringsAsFactors = FALSE,
  Title = "easier_internal",
  Description = paste(
    "Internal data required for proper performance of easier package. This data includes:",
    "cancer-specifc model parameters learned during training, mean and standard deviation of the features",
    "used during training, mean and standard deviation of the expression of each gene across all TCGA cancer",
    "types, the list of genes used to compute correlated proxies of immune response, cancer-specific",
    "intercellular networks based on literature supported pairs from the Ramilowski database",
    "(Ramilowski et al., Nat.Commun., 2015), the frequency of each ligand-receptor pair feature across",
    "the whole TCGA database, information on how ligand-receptor pairs were grouped, annotations on",
    "approved gene symbols and gene signatures included in the immune resistance program from",
    "Jerby-Arnon et al., 2018."
  ),
  BiocVersion = "3.13",
  Genome = NA,
  SourceType = "Rda",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = NA,
  Maintainer = "Oscar Lapuente-Santana <oscar.lapuente.santana@gmail.com>",
  RDataClass = "list;list;numeric;numeric;character;list;numeric;list;list;character",
  DispatchClass = "Rda",
  RDataPath = "easierData/easier_internal.Rda"
)

# combined meta-data
easierData <- base::rbind(
  Mariathasan2018_PDL1_treatment,
  easier_internal
)

# write to .csv
write.csv(easierData, file = "inst/extdata/metadata.csv", row.names = FALSE)
