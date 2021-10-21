context('Data objects are correct...')

test_that("easier_internal data object is correct", {

  opt_models <- easierData::get_opt_models()
  expect_length(opt_models, 19)

  opt_xtrain_stats <- easierData::get_opt_xtrain_stats()
  expect_length(opt_models, 19)

  TCGA_mean_pancancer <- easierData::get_TCGA_mean_pancancer()
  expect_type(TCGA_mean_pancancer, "double")

  TCGA_sd_pancancer <- easierData::get_TCGA_sd_pancancer()
  expect_type(TCGA_sd_pancancer, "double")

  cor_scores_genes <- easierData::get_cor_scores_genes()
  expect_type(cor_scores_genes, "character")

  intercell_networks <- easierData::get_intercell_networks()
  expect_length(intercell_networks, 18)

  lr_frequency_TCGA <- easierData::get_lr_frequency_TCGA()
  expect_type(lr_frequency_TCGA, "double")

  group_lrpairs <- easierData::get_group_lrpairs()
  expect_length(group_lrpairs, 56)

  HGNC_annotation <- easierData::get_HGNC_annotation()
  expect_type(HGNC_annotation, "list")

  scores_signature_genes <- easierData::get_scores_signature_genes()
  expect_length(scores_signature_genes, 11)

})

test_that("Mariathasan2018_PDL1_treatment data object is correct", {
  mariathasan_dataset <- easierData::get_Mariathasan2018_PDL1_treatment()
  expect_type(mariathasan_dataset, "S4")
})

