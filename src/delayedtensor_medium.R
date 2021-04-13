library(matter)
library(DelayedTensor)

# Setting
cache.dir(tempdir())
set_memory_limit(5e10)

# Array
set.seed(12345)
medium1 <- as.delayed.tensor(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)))
medium2 <- as.delayed.tensor(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)))

out <- profmem(medium1 + medium2)
save(out, file="profmem/delayedtensor_medium.RData")
