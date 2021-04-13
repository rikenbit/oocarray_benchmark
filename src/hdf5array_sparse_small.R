library(matter)
library(HDF5Array)

# Array
set.seed(12345)
small1 <- as(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)), "HDF5Array")
small2 <- as(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)), "HDF5Array")
seed(small1)@as_sparse <- TRUE
seed(small2)@as_sparse <- TRUE
out <- profmem(small1 + small2)
save(out, file="profmem/hdf5array_sparse_small.RData")
