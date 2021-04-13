library(matter)
library(DelayedArray)

# Array
set.seed(12345)
small1 <- as(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)), "RleArray")
small2 <- as(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)), "RleArray")

out <- profmem(small1 + small2)
save(out, file="profmem/rlearray_small.RData")
