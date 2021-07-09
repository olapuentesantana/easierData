# Organize internal data needed by easier for proper performance
load("easier_internal.rda")

# *******************************************
##  opt_models ##
# *******************************************

# Cancer-specifc model feature parameters learned, for each quantitative descriptor
# during training using multi-task learning with randomized cross-validation repeated 100 times.
# For each quantitative descriptor, 1000 models are available (100 per task).

saveRDS(opt_models,
        file = "inst/extdata/opt_models.rds"
)

# *******************************************
##  opt_xtrain_stats ##
# *******************************************

# Cancer-specific features mean and standard deviation of the training set used during
# randomized cross-validation repeated 100 times. It is required for normalization of the test set.

saveRDS(opt_xtrain_stats,
        file = "inst/extdata/opt_xtrain_stats.rds"
)

# *******************************************
##  TCGA_mean_pancancer ##
# *******************************************

# Mean of the TPM expression of each gene across all TCGA cancer types.
# It is required for normalization of input TPM gene expression data.

saveRDS(TCGA_mean_pancancer,
        file = "inst/extdata/TCGA_mean_pancancer.rds"
)

# *******************************************
##  TCGA_sd_pancancer ##
# *******************************************

# Standard deviation of the TPM expression of each gene across all TCGA cancer types.
# It is required for normalization of input TPM gene expression data.

saveRDS(TCGA_sd_pancancer,
        file = "inst/extdata/TCGA_sd_pancancer.rds"
)
# *******************************************
##  cor_scores_genes ##
# *******************************************

# Genes used to define correlated scores of immune response

saveRDS(cor_scores_genes,
        file = "inst/extdata/cor_scores_genes.rds"
)

# *******************************************
##  intercell_networks ##
# *******************************************

# Cancer-specific intercellular networks, including a pan-cancer network

saveRDS(intercell_networks,
        file = "inst/extdata/intercell_networks.rds"
)
# *******************************************
##  lr_frequency_TCGA ##
# *******************************************

# Frequency of each ligand-receptor pair feature across the whole TCGA database.

saveRDS(lr_frequency_TCGA,
        file = "inst/extdata/lr_frequency_TCGA.rds"
)
# *******************************************
##  group_lrpairs ##
# *******************************************

# Information to group ligand-receptor pairs because of sharing the same gene",
# either as ligand or receptor.

saveRDS(group_lrpairs,
        file = "inst/extdata/group_lrpairs.rds"
)
# *******************************************
##  HGNC_annotation ##
# *******************************************

# Gene symbols approved annotations.
# Represented as a data.frame, derived from https://www.genenames.org/tools/multi-symbol-checker/.

saveRDS(HGNC_annotation,
        file = "inst/extdata/HGNC_annotation.rds"
)
# *******************************************
## scores_signature_genes ##
# *******************************************

# Gene signatures for each score of immune response:
# CYT, TLS, IFNy, Ayers_expIS, Tcell_inflamed, Roh_IS, Davoli_IS, chemokines, IMPRES, MSI, RIR

saveRDS(scores_signature_genes,
        file = "inst/extdata/scores_signature_genes.rds"
)
