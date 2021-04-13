library(matter)
library(TileDBArray)

# Array
set.seed(12345)
large1 <- as(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)), "TileDBArray")
large2 <- as(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)), "TileDBArray")

out <- profmem(large1 + large2)
save(out, file="profmem/tiledbarray_large.RData")
