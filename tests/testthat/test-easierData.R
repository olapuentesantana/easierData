# Data objects are correct...
library("easierData")

test_that("easier_internal data object is correct", {

  opt_models <- get_opt_models()
  expect_length(opt_models, 19)

  opt_xtrain_stats <- get_opt_xtrain_stats()
  expect_length(opt_models, 19)

  TCGA_mean_pancancer <- get_TCGA_mean_pancancer()
  expect_type(TCGA_mean_pancancer, "numeric")

  TCGA_sd_pancancer <- get_TCGA_sd_pancancer()
  expect_type(TCGA_sd_pancancer, "numeric")

  cor_scores_genes <- get_cor_scores_genes()
  expect_type(cor_scores_genes, "character")

  intercell_networks <- get_intercell_networks()
  expect_length(intercell_networks, 18)

  lr_frequency_TCGA <- get_lr_frequency_TCGA()
  expect_type(lr_frequency_TCGA, "numeric")

  group_lrpairs <- get_group_lrpairs()
  expect_length(group_lrpairs, 56)

  HGNC_annotation <- get_HGNC_annotation()
  expect_type(HGNC_annotation, "data.frame")

  scores_signature_genes <- get_scores_signature_genes()
  expect_length(scores_signature_genes, 11)

})

test_that("Mariathasan2018_PDL1_treatment data object is correct", {
  mariathasan_dataset <- get_Mariathasan2018_PDL1_treatment()
  expect_is(mariathasan_dataset, "SummarizedExperiment")
})

