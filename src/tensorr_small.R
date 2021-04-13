library(matter)
library(tensorr)

# Array
set.seed(12345)
small1 <- as_sptensor(dtensor(array(rbinom(5*6*7, 2, 0.1), c(5,6,7))))
small2 <- as_sptensor(dtensor(array(rbinom(5*6*7, 2, 0.1), c(5,6,7))))

out <- profmem(small1 + small2)
save(out, file="profmem/tensorr_small.RData")
