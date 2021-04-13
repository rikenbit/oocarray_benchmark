library(matter)
library(HDF5Array)

# Array
# https://github.com/Bioconductor/HDF5Array/issues/26#issuecomment-599753367
set.seed(12345)
small1 <- HDF5Array::writeHDF5Array(
	array(rbinom(5*6*7, 2, 0.1), c(5,6,7)),
	chunkdim=c(1,1,1)
	)
small2 <- HDF5Array::writeHDF5Array(
	array(rbinom(5*6*7, 2, 0.1), c(5,6,7)),
	chunkdim=c(1,1,1)
	)
out <- profmem(small1 + small2)
save(out, file="profmem/hdf5array_chunk_small.RData")
