library(matter)

# Array
set.seed(12345)
small1 <- as.matter(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)))
small2 <- as.matter(array(rbinom(5*6*7, 2, 0.1), c(5,6,7)))

out <- profmem(small1 + small2)
save(out, file="profmem/matter_small.RData")
