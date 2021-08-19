#' List the datasets
#'
#' List the datasets contained in the easierData package
#'
#' @importFrom AnnotationHub query
#'
#' @return A data.frame for a compact visualization
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


#' Get the Mariathasan2018 PDL1 treatment data
#'
#' Obtain the ...TODO... from Mariathasan et al. (2018)
#'
#' @references Mariathasan et al., full ref TODO
#'
#' @return A \linkS4class{SummarizedExperiment} object with counts and TPM
#' quantifications.
#'
#' @export
#'
#' @examples
#' if (interactive()) {
#'   se_mariathasan <- get_Mariathasan2018_PDL1_treatment()
#' }
get_Mariathasan2018_PDL1_treatment <- function() {
  eh <- ExperimentHub::ExperimentHub()
  message("Retrieving Mariathasan2018_PDL1_treatment dataset...")
  ehub_data <- eh[["EH6677"]]
  return(ehub_data)
}

