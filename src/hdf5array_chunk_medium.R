library(matter)
library(HDF5Array)

# Array
# https://github.com/Bioconductor/HDF5Array/issues/26#issuecomment-599753367
set.seed(12345)
medium1 <- HDF5Array::writeHDF5Array(
	array(rbinom(100*150*180, 2, 0.1), c(100,150,180)),
	chunkdim=c(10,10,10)
	)
medium2 <- HDF5Array::writeHDF5Array(
	array(rbinom(100*150*180, 2, 0.1), c(100,150,180)),
	chunkdim=c(10,10,10)
	)
out <- profmem(medium1 + medium2)
save(out, file="profmem/hdf5array_chunk_medium.RData")