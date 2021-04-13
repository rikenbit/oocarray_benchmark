library(matter)

# Array
set.seed(12345)
medium1 <- as.matter(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)))
medium2 <- as.matter(array(rbinom(100*150*180, 2, 0.1), c(100,150,180)))

out <- profmem(medium1 + medium2)
save(out, file="profmem/matter_medium.RData")