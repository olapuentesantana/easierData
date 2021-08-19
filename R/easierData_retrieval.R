#' List the datasets
#'
#' List the datasets contained in the easierData package
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

