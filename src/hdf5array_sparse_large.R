library(matter)
library(HDF5Array)

# Array
set.seed(12345)
large1 <- as(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)), "HDF5Array")
large2 <- as(array(rbinom(600*650*700, 2, 0.1), c(600,650,700)), "HDF5Array")
seed(large1)@as_sparse <- TRUE
seed(large2)@as_sparse <- TRUE
out <- profmem(large1 + large2)
save(out, file="profmem/hdf5array_sparse_large.RData")
