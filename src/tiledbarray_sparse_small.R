library(matter)
library(TileDBArray)

# Array
set.seed(12345)
small1 <- as(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)), "TileDBArray")
small2 <- as(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)), "TileDBArray")
seed(small1)@sparse <- TRUE
seed(small2)@sparse <- TRUE
out <- profmem(small1 + small2)
save(out, file="profmem/tiledbarray_sparse_small.RData")
