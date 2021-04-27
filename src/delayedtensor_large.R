library(matter)
library(DelayedTensor)

# Setting
cache.dir(tempdir())
set_memory_limit(5e9)

# Array
set.seed(12345)
large1 <- as.delayed.tensor(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)))
large2 <- as.delayed.tensor(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)))

out <- profmem(large1 + large2)
save(out, file="profmem/delayedtensor_large.RData")
