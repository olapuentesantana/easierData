#' List the datasets
#'
#' List the datasets contained in the easierData package.
#'
#' @importFrom AnnotationHub query
#' @importFrom ExperimentHub ExperimentHub
#'
#' @return A data.frame for a compact visualization.
#'
#' @export
#'
#' @examples
#' df <- list_easierData()
#' df
list_easierData <- function() {
    eh <- ExperimentHub::ExperimentHub()
    myq <- AnnotationHub::query(eh, "easierData")

    dataset_df <- data.frame(
        eh_id = myq$ah_id,
        title = myq$title
    )
    return(dataset_df)
}


#' Get the Mariathasan2018 PD-L1 treatment data
#'
#' Obtain the gene expression data (count and tpm values)
#' and the sample metadata from Mariathasan et al. (2018).
#'
#' The `SummarizedExperiment` object returned contains:
#' - two assays: `counts` and `tpm`.
#' - additional sample metadata in the `colData` slot, including
#' pat_id (the id of the patient in the original study), BOR to
#' PD-L1 treatment, and TMB (Tumor Mutational Burden).
#'
#' @return A \linkS4class{SummarizedExperiment} object with counts
#' and TPM quantifications.
#'
#' @export
#'
#' @references Óscar Lapuente-Santana, Maisa van Genderen, Peter A. J. Hilbers,
#' Francesca Finotello, and Federica Eduati. 2021. Interpretable Systems
#' Biomarkers Predict Response to Immune-Checkpoint Inhibitors.
#' Patterns, 100293. https://doi.org/10.1016/j.patter.2021.100293.
#'
#' @references  Mariathasan, S., Turley, S., Nickles, D. et al. TGFβ attenuates
#' tumour response to PD-L1 blockade by contributing to exclusion of T cells.
#' Nature 554, 544–548 (2018). https://doi.org/10.1038/nature25501.
#'
#' @source IMvigor210CoreBiologies package under the CC-BY license.
#' http://research-pub.gene.com/IMvigor210CoreBiologies/
#'
#' @examples
#' if (interactive()) {
#'     se_mariathasan <- get_Mariathasan2018_PDL1_treatment()
#' }
get_Mariathasan2018_PDL1_treatment <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving Mariathasan2018_PDL1_treatment dataset...")
    ehub_data <- eh[["EH6677"]]
    return(ehub_data)
}


#' Get the cancer-specific model feature parameters
#'
#' Obtain the cancer-specific model feature parameters learned in
#' Lapuente-Santana et al. (2021).
#' For each quantitative descriptor, models were trained using
#' multi-task learning with randomized cross-validation repeated
#' 100 times. For each quantitative descriptor, 1000 models are
#' available (100 per task).
#'
#' @return A list containing for each cancer type and quantitative descriptor, a
#' matrix of feature coefficient values across different tasks.
#'
#' @export
#'
#' @references Óscar Lapuente-Santana, Maisa van Genderen, Peter A. J. Hilbers,
#' Francesca Finotello, and Federica Eduati. 2021. Interpretable Systems
#' Biomarkers Predict Response to Immune-Checkpoint Inhibitors.
#' Patterns, 100293. https://doi.org/10.1016/j.patter.2021.100293.
#'
#' @examples
#' if (interactive()) {
#'     opt_models <- get_opt_models()
#' }
get_opt_models <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving cancer-specific feature models...")
    ehub_data <- eh[["EH6678"]]
    return(ehub_data)
}


#' Get training set cancer-specific features mean and standard deviation
#'
#' Obtain the cancer-specific features mean and standard deviation of
#' the training set used in Lapuente-Santana et al. (2021) for model training
#' by  using randomized cross-validation repeated 100 times. It is required
#' for normalization of the test set.
#'
#' @return A list containing for each cancer type and quantitative descriptor, a
#' matrix with feature mean and sd values across the 100 cross-validation runs.
#'
#' @export
#'
#' @references Óscar Lapuente-Santana, Maisa van Genderen, Peter A. J. Hilbers,
#' Francesca Finotello, and Federica Eduati. 2021. Interpretable Systems
#' Biomarkers Predict Response to Immune-Checkpoint Inhibitors.
#' Patterns, 100293. https://doi.org/10.1016/j.patter.2021.100293.
#'
#' @examples
#' if (interactive()) {
#'     opt_xtrain_stats <- get_opt_xtrain_stats()
#' }
get_opt_xtrain_stats <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving training set cancer-specifc features mean
            and standard deviation...")
    ehub_data <- eh[["EH6679"]]
    return(ehub_data)
}


#' Get the mean of the TPM expression of each gene across all
#' TCGA cancer types
#'
#' Obtain the mean of the TPM expression of each gene across all
#' TCGA cancer types. It is required for normalization of input TPM
#' gene expression data.
#'
#' @return A numeric vector with gene TPM mean values.
#'
#' @export
#'
#' @references The Cancer Genome Atlas Research Network., Weinstein, J.,
#' Collisson, E. et al. The Cancer Genome Atlas Pan-Cancer analysis project.
#' Nat Genet 45, 1113–1120 (2013). https://doi.org/10.1038/ng.2764
#'
#' @examples
#' if (interactive()) {
#'     TCGA_mean_pancancer <- get_TCGA_mean_pancancer()
#' }
get_TCGA_mean_pancancer <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving mean of the TPM expression of each gene across
            all TCGA cancer types...")
    ehub_data <- eh[["EH6680"]]
    return(ehub_data)
}


#' Get the standard deviation of the TPM expression of each gene across
#' all TCGA cancer types
#'
#' Obtain the standard deviation (sd) of the TPM expression of each gene
#' across all TCGA cancer types. It is required for normalization of input
#' TPM gene expression data.
#'
#' @return A numeric vector with gene TPM sd values.
#'
#' @export
#'
#' @references The Cancer Genome Atlas Research Network., Weinstein, J.,
#' Collisson, E. et al. The Cancer Genome Atlas Pan-Cancer analysis project.
#' Nat Genet 45, 1113–1120 (2013). https://doi.org/10.1038/ng.2764
#'
#' @examples
#' if (interactive()) {
#'     TCGA_sd_pancancer <- get_TCGA_sd_pancancer()
#' }
get_TCGA_sd_pancancer <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving standard deviation of the TPM expression of each
            gene across all TCGA cancer types...")
    ehub_data <- eh[["EH6681"]]
    return(ehub_data)
}


#' Get the list of genes used to define correlated
#' scores of immune response
#'
#' Obtain the list of genes used to define each of the correlated
#' scores of immune response. These scores were found to be highly
#' correlated across all 18 cancer types.
#'
#' @return A character vector with gene names.
#'
#' @export
#'
#' @references Óscar Lapuente-Santana, Maisa van Genderen, Peter A. J. Hilbers,
#' Francesca Finotello, and Federica Eduati. 2021. Interpretable Systems
#' Biomarkers Predict Response to Immune-Checkpoint Inhibitors.
#' Patterns, 100293. https://doi.org/10.1016/j.patter.2021.100293.
#'
#' @references  Mariathasan, S., Turley, S., Nickles, D. et al. TGFβ attenuates
#' tumour response to PD-L1 blockade by contributing to exclusion of T cells.
#' Nature 554, 544–548 (2018). https://doi.org/10.1038/nature25501.
#'
#' @examples
#' if (interactive()) {
#'     cor_scores_genes <- get_cor_scores_genes()
#' }
get_cor_scores_genes <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving list of genes used to define correlated scores
            of immune response...")
    ehub_data <- eh[["EH6682"]]
    return(ehub_data)
}


#' Get the cancer-specific intercellular networks, including a
#' pan-cancer network
#'
#' Obtain the cancer-specific intercellular networks based on
#' literature supported pairs from the Ramilowski database
#' (Ramilowski et al., Nat.Commun., 2015), filtering for 24 cell
#' types acknowledged to be present in the TME. Additionally, a
#' pan-cancer cell type is included using data from the CCLE
#' (Barretina et al., Nature, 2012) by computing the median
#' expression of each gene across cell lines related to the selected
#' cancer types. A pan-cancer network is also available and this is
#' based on the union of all ligand-receptor pairs present across
#' the cancer-specific networks.
#'
#' @references Ramilowski, Jordan A., Tatyana Goldberg, Jayson Harshbarger,
#' Edda Kloppmann, Marina Lizio, Venkata P. Satagopam, Masayoshi Itoh,
#' et al. 2015. “A Draft Network of Ligand–Receptor-Mediated Multicellular
#' Signalling in Human.” Nature Communications 6 (1): 7866.
#' https://doi.org/10.1038/ncomms8866.
#'
#' @references Barretina, J., Caponigro, G., Stransky, N. et al. The Cancer
#' Cell Line Encyclopedia enables predictive modelling of anticancer drug
#' sensitivity. Nature 483, 603–607 (2012). https://doi.org/10.1038/nature11003
#'
#' @return A list containing for each cancer type, a data.frame with
#' cell-cell ligands and receptors information.
#'
#' @export
#'
#' @examples
#' if (interactive()) {
#'     intercell_networks <- get_intercell_networks()
#' }
get_intercell_networks <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving cancer-specific intercellular networks, including a
            pan-cancer network...")
    ehub_data <- eh[["EH6683"]]
    return(ehub_data)
}


#' Get the frequency of each ligand-receptor pair feature across
#' the whole TCGA database
#'
#' Obtain the frequency of each ligand-receptor pair feature across
#' the whole TCGA database. Only ligand-receptor pairs with frequency
#' different from zero are kept. Each cell-cell pair feature score is
#' calculated as the sum of the inverse of the frequency of all the
#' active ligand-receptor pairs.
#'
#' @return A numeric vector with the frequency of each ligand-receptor
#' pair feature.
#'
#' @export
#'
#' @references The Cancer Genome Atlas Research Network., Weinstein, J.,
#' Collisson, E. et al. The Cancer Genome Atlas Pan-Cancer analysis project.
#' Nat Genet 45, 1113–1120 (2013). https://doi.org/10.1038/ng.2764
#'
#' @examples
#' if (interactive()) {
#'     lr_frequency <- get_lr_frequency_TCGA()
#' }
get_lr_frequency_TCGA <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving the frequency of each ligand-receptor
    pair feature across the whole TCGA database...")
    ehub_data <- eh[["EH6684"]]
    return(ehub_data)
}


#' Get the groups of ligand-receptor pairs
#'
#' Obtain the information to group ligand-receptor pairs because of sharing
#' the same gene, either as ligand or receptor.
#'
#' @return A list containing grouping information for 56 groups of l
#' igand-receptor pairs.
#'
#' @export
#'
#' @examples
#' if (interactive()) {
#'     group_lrpairs <- get_group_lrpairs()
#' }
get_group_lrpairs <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving groups of ligand-receptor pairs...")
    ehub_data <- eh[["EH6685"]]
    return(ehub_data)
}


#' Get the gene symbols approved annotations
#'
#' @return A data.frame with gene symbols information.
#'
#' @export
#'
#' @references Tweedie S, Braschi B, Gray KA, Jones TEM, Seal RL, Yates B,
#' Bruford EA. Genenames.org: the HGNC and VGNC resources in 2021.
#' Nucleic Acids Res. PMID: 33152070 PMCID: PMC7779007
#' DOI: 10.1093/nar/gkaa980
#'
#' @source https://www.genenames.org/tools/multi-symbol-checker/
#'
#' @examples
#' if (interactive()) {
#'     HGNC <- get_HGNC_annotation()
#' }
get_HGNC_annotation <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving gene symbols approved annotations...")
    ehub_data <- eh[["EH6686"]]
    return(ehub_data)
}


#' Get the gene signatures for each score of immune response
#'
#' Obtain the gene signatures for each score of immune response:
#' CYT, TLS, IFNy, Ayers_expIS, Tcell_inflamed, Roh_IS, Davoli_IS,
#' chemokines, IMPRES, MSI and RIR.
#'
#' @references Rooney, Michael S., Sachet A. Shukla, Catherine J. Wu, Gad Getz,
#' and Nir Hacohen. 2015. “Molecular and Genetic Properties of Tumors Associated
#' with Local Immune Cytolytic Activity.” Cell 160 (1): 48–61.
#' https://doi.org/10.1016/j.cell.2014.12.033.
#'
#' @references Cabrita, Rita, Martin Lauss, Adriana Sanna, Marco Donia, Mathilde
#' Skaarup Larsen, Shamik Mitra, Iva Johansson, et al. 2020. “Tertiary Lymphoid
#' Structures Improve Immunotherapy and Survival in Melanoma.”
#' Nature 577 (7791):561–65. https://doi.org/10.1038/s41586-019-1914-8.
#'
#' @references McClanahan, Mark Ayers AND Jared Lunceford AND Michael Nebozhyn
#' AND Erin Murphy AND Andrey Loboda AND David R. Kaufman AND Andrew Albright
#' AND Jonathan D. Cheng AND S. Peter Kang AND Veena Shankaran AND Sarina A.
#' Piha-Paul AND Jennifer Yearley AND Tanguy Y. Seiwert AND Antoni Ribas AND
#' Terrill K. 2017. “IFN-γ–Related mRNA Profile Predicts Clinical Response
#' to PD-1 Blockade.” The Journal of Clinical Investigation 127 (8): 2930–40.
#' https://doi.org/10.1172/JCI91190.
#'
#' @references Roh, Whijae, Pei-Ling Chen, Alexandre Reuben, Christine N.
#' Spencer, Peter A. Prieto, John P. Miller, Vancheswaran Gopalakrishnan,
#' et al. 2017. “Integrated Molecular Analysis of Tumor Biopsies on Sequential
#' CTLA-4 and PD-1 Blockade Reveals Markers of Response and Resistance.”
#' Science Translational Medicine 9 (379).
#' https://doi.org/10.1126/scitranslmed.aah3560.
#'
#' @references Davoli, Teresa, Hajime Uno, Eric C. Wooten, and Stephen
#' J. Elledge. 2017. “Tumor Aneuploidy Correlates with Markers of Immune
#' Evasion and with Reduced Response to Immunotherapy.” Science 355 (6322).
#' https://doi.org/10.1126/science.aaf8399.
#'
#' @references Messina, Jane L., David A. Fenstermacher, Steven Eschrich,
#' Xiaotao Qu, Anders E. Berglund, Mark C. Lloyd, Michael J. Schell,
#' Vernon K. Sondak, Jeffrey S. Weber, and James J. Mulé. 2012. “12-Chemokine
#' Gene Signature Identifies Lymph Node-Like Structures in Melanoma: Potential
#' for Patient Selection for Immunotherapy?” Scientific Reports 2 (1): 765.
#' https://doi.org/10.1038/srep00765.
#'
#' @references Auslander, Noam, Gao Zhang, Joo Sang Lee, Dennie T. Frederick,
#' Benchun Miao, Tabea Moll, Tian Tian, et al. 2018. “Robust Prediction of
#' Response to Immune Checkpoint Blockade Therapy in Metastatic Melanoma.”
#' Nature Medicine 24(10): 1545–49. https://doi.org/10.1038/s41591-018-0157-9.
#'
#' @references Fu, Yelin, Lishuang Qi, Wenbing Guo, Liangliang Jin, Kai Song,
#' Tianyi You, Shuobo Zhang, Yunyan Gu, Wenyuan Zha, and Zheng Guo. 2019. “A
#' Qualitative Transcriptional Signature for Predicting Microsatellite
#' Instability Status of Right-Sided Colon Cancer.”
#' BMC Genomics 20 (1): 769. https://doi.org/10.1186/s12864-019-6129-8.
#'
#' @references Jerby-Arnon, Livnat, Parin Shah, Michael S. Cuoco, Christopher
#' Rodman, Mei-Ju Su, Johannes C. Melms, Rachel Leeso, et al. 2018. “A Cancer
#' Cell Program Promotes t Cell Exclusion and Resistance to Checkpoint
#' Blockade.” Cell 175 (4): 984–997.e24.
#' https://doi.org/10.1016/j.cell.2018.09.006.
#'
#' @references Óscar Lapuente-Santana, Maisa van Genderen, Peter A. J. Hilbers,
#' Francesca Finotello, and Federica Eduati. 2021. Interpretable Systems
#' Biomarkers Predict Response to Immune-Checkpoint Inhibitors.
#' Patterns, 100293. https://doi.org/10.1016/j.patter.2021.100293.
#'
#' @return A list with the gene signature of each score of immune response.
#'
#' @export
#'
#' @examples
#' if (interactive()) {
#'     easier_sigs <- get_scores_signature_genes()
#' }
get_scores_signature_genes <- function() {
    eh <- ExperimentHub::ExperimentHub()
    message("Retrieving gene signatures for each score of immune response...")
    ehub_data <- eh[["EH6687"]]
    return(ehub_data)
}
