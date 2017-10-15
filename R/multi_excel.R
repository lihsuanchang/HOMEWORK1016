#' multi_excel
#'
#' @param file_name
#' @import readxl
#' @import assertthat
#'
#' @return
#' @export
#'
#' @examples
multi_excel <- function(file_name)
{
  assert_that(is.dir(dirname(file_name)))
  assert_that(is.readable(file_name))
  assert_that(has_extension(file_name,"xlsx"))

  sheets <- lapply(excel_sheets(file_name), read_excel, path=file_name)
  return(sheets)
}
