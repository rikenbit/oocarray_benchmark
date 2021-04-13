library(matter)
library(HDF5Array)

# Array
set.seed(12345)
setHDF5DumpCompressionLevel(3L)
small1 <- as(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)), "HDF5Array")
small2 <- as(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)), "HDF5Array")

out <- profmem(small1 + small2)
save(out, file="profmem/hdf5array_comp_small.RData")
