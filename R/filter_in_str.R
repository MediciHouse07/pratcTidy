#' Filter a column of a data frame by a string vector
#' It will return a vector of boolean
#'
#' @param vec Column of the dataframe you want to filter.
#' @param y A string vector.
#' @return Boolean that represents if the column include the vector or not.
#' @examples
#' filter_in_str(iris$Species,c("est","sico"))


filter_in_str <- function(vec,ind_v){
  i <- 1
  new_vec <- NULL
  vec <- as.character(vec)
  ind_v <- as.character(ind_v)
  while(i<=length(vec))
  {
    j <- 1
    new_vec[i] <- 0
    while(j<=length(ind_v)){
      if(str_detect(str_to_upper(vec[i]),str_to_upper(ind_v[j]))){
        new_vec[i] <- new_vec[i] + 1}
      else {new_vec[i] <- new_vec[i] + 0}
      j <- j + 1
    }
    i <-  i + 1
  }
  return(as.logical(new_vec))
}
