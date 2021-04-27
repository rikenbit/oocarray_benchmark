library(matter)
library(DelayedTensor)

# Setting
cache.dir(tempdir())
set_memory_limit(5e9)

# Array
set.seed(12345)
small1 <- as.delayed.tensor(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)))
small2 <- as.delayed.tensor(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)))

out <- profmem(small1 + small2)
save(out, file="profmem/delayedtensor_small.RData")
