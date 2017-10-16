#' Save_as_csv
#' This function reads the csv file
#' @param Data
#' @param File
#'
#' @return
#' @export
#'
#' @examples
save_as_csv <- function (Data, File)
{
  assert_that(not_empty (Data))
  assert_that(is.data.frame(Data))
  assert_that(is.writeable(dirname(File)))
  assert_that(has_extension(File,"csv"))
  write.csv2(Data,File)
  return(File)
}
