library(matter)
library(HDF5Array)

# Array
set.seed(12345)
medium1 <- as(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)), "HDF5Array")
medium2 <- as(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)), "HDF5Array")

out <- profmem(medium1 + medium2)
save(out, file="profmem/hdf5array_medium.RData")