
#' draw_a_name
#'
#' @param the_name
#' @param the_sex
#' @import ggplot2
#' @import dplyr
#' @import prenoms
#' @import assertthat
#'
#' @return
#' @export
#'
#' @examples

draw_a_name <- function(the_name, the_sex){
  assert_that(the_sex %in% c("M", "F"))
  assert_that(is.string(the_name))

  tmp <- prenoms::prenoms %>%
    filter(sex==the_sex, name==the_name) %>%
    group_by(year,sex,name) %>%
    summarize(n=sum(n)) %>%
    ggplot(aes(x=year,y=n)) +
    geom_line() +
    labs(title=the_name) +
    theme_gdocs()
  return(tmp)
}
