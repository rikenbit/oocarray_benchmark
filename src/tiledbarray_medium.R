library(matter)
library(TileDBArray)

# Array
set.seed(12345)
medium1 <- as(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)), "TileDBArray")
medium2 <- as(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)), "TileDBArray")

out <- profmem(medium1 + medium2)
save(out, file="profmem/tiledbarray_medium.RData")