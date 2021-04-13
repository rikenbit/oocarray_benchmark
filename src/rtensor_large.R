library(matter)
library(rTensor)

# Array
set.seed(12345)
large1 <- as.tensor(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)))
large2 <- as.tensor(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)))

out <- profmem(large1 + large2)
save(out, file="profmem/rtensor_large.RData")
