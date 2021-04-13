library("ggplot2")

imp_names <- c(
	rep("array", 3), rep("rtensor", 3),
	rep("matter", 3),
	rep("rlearray", 3), rep("rlearray_blocksize", 3),
	rep("hdf5array", 3),  rep("hdf5array_sparse", 3),
	rep("hdf5array_chunk", 3),  rep("hdf5array_comp", 3),
	rep("tiledbarray", 3), rep("tiledbarray_sparse", 3),
	rep("delayedtensor", 3))
data_size <- rep(c("small", "medium", "large"), 12)

###################################################
# Profmem
###################################################
prof1 <- list()
for(i in seq(imp_names)){
	filename <- paste0("profmem/", imp_names[i], "_",
		data_size[i], ".RData")
	load(filename)
	prof1[[i]] <- out
}

df_prof1 <- data.frame(
	algorithm=imp_names,
	cal_time=unlist(lapply(prof1, function(x){x[5]})) / 60,
	mem_usage=unlist(lapply(prof1, function(x){x[3]})) / 10^3,
	data_size=data_size
	)

g1_1 <- ggplot(df_prof1, aes(x=algorithm, y=cal_time, fill=data_size))
g1_1 <- g1_1 + geom_bar(stat = "identity", position = "dodge")
g1_1 <- g1_1 + ylab("Calculation time (min)")
g1_1 <- g1_1 + theme(axis.text.x = element_text(angle=45, hjust=1))

g1_2 <- ggplot(df_prof1, aes(x=algorithm, y=mem_usage, fill=data_size))
g1_2 <- g1_2 + geom_bar(stat = "identity", position = "dodge")
g1_2 <- g1_2 + ylab("Memory usage (GB)")
g1_2 <- g1_2 + theme(axis.text.x = element_text(angle=45, hjust=1))

# Plot
ggsave("plot/profmem_time.png", g1_1, width=7, height=7)
ggsave("plot/profmem_memory.png", g1_2, width=7, height=7)

###################################################
# Snakemake benchmark
###################################################
POSIX2Min <- function(x){
	tmp <- as.POSIXlt(x$h.m.s, format="%H:%M:%S")
	60 * tmp$hour + tmp$min + tmp$sec / 60
}

prof2 <- list()
for(i in seq(imp_names)){
	filename <- paste0("benchmarks/", imp_names[i], "_",
		data_size[i], ".txt")
	out <- read.table(filename, header=TRUE)
	prof2[[i]] <- out
}

df_prof2 <- data.frame(
	algorithm=imp_names,
	cal_time=unlist(lapply(prof2, POSIX2Min)),
	mem_usage=unlist(lapply(prof2, function(x){x$max_rss})) / 10^3,
	data_size=data_size
	)

g2_1 <- ggplot(df_prof2, aes(x=algorithm, y=cal_time, fill=data_size))
g2_1 <- g2_1 + geom_bar(stat = "identity", position = "dodge")
g2_1 <- g2_1 + ylab("Calculation time (min)")
g2_1 <- g2_1 + theme(axis.text.x = element_text(angle=45, hjust=1))

g2_2 <- ggplot(df_prof2, aes(x=algorithm, y=mem_usage, fill=data_size))
g2_2 <- g2_2 + geom_bar(stat = "identity", position = "dodge")
g2_2 <- g2_2 + ylab("Memory usage (GB)")
g2_2 <- g2_2 + theme(axis.text.x = element_text(angle=45, hjust=1))

# Plot
ggsave("plot/benchmark_time.png", g2_1, width=7, height=7)
ggsave("plot/benchmark_memory.png", g2_2, width=7, height=7)