# pratcTidy
Actually this is my personal toolkit, it helps my handling practical data problem easily.
Currently it doesn't contain much functions, I will add them gradually to the repo.

### Description of functions within the package:

#### function: filter_in_str
Filter a column of a data frame by a string vector. It will return a vector of boolean

- @param vec Column of the dataframe you want to filter. 
- @param y A string vector. 
- @return Boolean that represents if the column include the vector or not. 
#### Examples
`
filter_in_str(iris$Species,c("est","sico")) 
`