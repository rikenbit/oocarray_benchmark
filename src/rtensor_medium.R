library(matter)
library(rTensor)

# Array
set.seed(12345)
medium1 <- as.tensor(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)))
medium2 <- as.tensor(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)))

out <- profmem(medium1 + medium2)
save(out, file="profmem/rtensor_medium.RData")