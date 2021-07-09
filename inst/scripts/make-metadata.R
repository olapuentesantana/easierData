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

opt_models <- data.frame(
  stringsAsFactors = FALSE,
  Title = "opt_models",
  Description = paste(
    "Cancer-specifc model feature parameters learned, for each quantitative descriptor,",
    "during training using multi-task learning with randomized cross-validation repeated 100 times.",
    "For each quantitative descriptor, 1000 models are available (100 per task). "
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
  RDataClass = "list",
  DispatchClass = "Rds",
  RDataPath = "easierData/opt_models.rds"
)

opt_xtrain_stats <- data.frame(
  stringsAsFactors = FALSE,
  Title = "opt_xtrain_stats",
  Description = paste(
    "Cancer-specific features mean and standard deviation of the training set used during",
    "randomized cross-validation repeated 100 times. It is required for normalization of input feautres."
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
  RDataClass = "list",
  DispatchClass = "Rds",
  RDataPath = "easierData/opt_xtrain_stats.rds"
)

TCGA_mean_pancancer <- data.frame(
  stringsAsFactors = FALSE,
  Title = "TCGA_mean_pancancer",
  Description = paste(
    "Mean of the TPM expression of each gene across all TCGA cancer types.",
    "It is required for normalization of input TPM gene expression data."
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
  RDataClass = "numeric",
  DispatchClass = "Rds",
  RDataPath = "easierData/TCGA_mean_pancancer.rds"
)

TCGA_sd_pancancer <- data.frame(
  stringsAsFactors = FALSE,
  Title = "TCGA_sd_pancancer",
  Description = paste(
    "Standard deviation of the TPM expression of each gene across all TCGA cancer types.",
    "It is required for normalization of input TPM gene expression data."
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
  RDataClass = "numeric",
  DispatchClass = "Rds",
  RDataPath = "easierData/TCGA_sd_pancancer.rds"
)

cor_scores_genes <- data.frame(
  stringsAsFactors = FALSE,
  Title = "cor_scores_genes",
  Description = paste(
    "Character string with genes used to define correlated scores of immune response."
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
  RDataClass = "character",
  DispatchClass = "Rds",
  RDataPath = "easierData/cor_scores_genes.rds"
)

intercell_networks <- data.frame(
  stringsAsFactors = FALSE,
  Title = "intercell_networks",
  Description = paste(
    "Cancer-specific intercellular networks, including a pan-cancer network."
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
  RDataClass = "list",
  DispatchClass = "Rds",
  RDataPath = "easierData/intercell_networks.rds"
)

lr_frequency_TCGA <- data.frame(
  stringsAsFactors = FALSE,
  Title = "lr_frequency_TCGA",
  Description = paste(
    "Frequency of each ligand-receptor pair feature across the whole TCGA database."
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
  RDataClass = "numeric",
  DispatchClass = "Rds",
  RDataPath = "easierData/lr_frequency_TCGA.rds"
)

group_lrpairs <- data.frame(
  stringsAsFactors = FALSE,
  Title = "group_lrpairs",
  Description = paste(
    "Information to group ligand-receptor pairs because of sharing the same gene",
    "either as ligand or receptor."
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
  RDataClass = "list",
  DispatchClass = "Rds",
  RDataPath = "easierData/group_lrpairs.rds"
)

HGNC_annotation <- data.frame(
  stringsAsFactors = FALSE,
  Title = "HGNC_annotation",
  Description = paste(
    "Gene symbols approved annotations."
  ),
  BiocVersion = "3.13",
  Genome = NA,
  SourceType = "csv",
  SourceUrl = "https://www.genenames.org/download/custom/",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = NA,
  Maintainer = "Oscar Lapuente-Santana <oscar.lapuente.santana@gmail.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "easierData/HGNC_annotation.rds"
)

scores_signature_genes <- data.frame(
  stringsAsFactors = FALSE,
  Title = "scores_signature_genes",
  Description = paste(
    "Gene signatures for each score of immune response: CYT, TLS, IFNy, Ayers_expIS,",
    "Tcell_inflamed, Roh_IS, Davoli_IS, chemokines, IMPRES, MSI, RIR."
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
  RDataClass = "list",
  DispatchClass = "Rds",
  RDataPath = "easierData/scores_signature_genes.rds"
)

# combined meta-data
easierData <- base::rbind(
  Mariathasan2018_PDL1_treatment,
  opt_models,
  opt_xtrain_stats,
  TCGA_mean_pancancer,
  TCGA_sd_pancancer,
  cor_scores_genes,
  intercell_networks,
  lr_frequency_TCGA,
  group_lrpairs,
  HGNC_annotation,
  scores_signature_genes
)

# write to .csv
write.csv(easierData, file = "inst/extdata/metadata.csv", row.names = FALSE)

