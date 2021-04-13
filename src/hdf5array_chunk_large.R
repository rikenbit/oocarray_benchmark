library(matter)
library(HDF5Array)

# Array
# https://github.com/Bioconductor/HDF5Array/issues/26#issuecomment-599753367
set.seed(12345)
large1 <- HDF5Array::writeHDF5Array(
	array(rbinom(600*650*700, 2, 0.1), c(600,650,700)),
	chunkdim=c(50,50,50)
	)
large2 <- HDF5Array::writeHDF5Array(
	array(rbinom(600*650*700, 2, 0.1), c(600,650,700)),
	chunkdim=c(50,50,50)
	)
out <- profmem(large1 + large2)
save(out, file="profmem/hdf5array_chunk_large.RData")
