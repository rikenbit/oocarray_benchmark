library(matter)
library(DelayedArray)

# Array
set.seed(12345)
large1 <- as(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)), "RleArray")
large2 <- as(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)), "RleArray")

out <- profmem(large1 + large2)
save(out, file="profmem/rlearray_large.RData")
