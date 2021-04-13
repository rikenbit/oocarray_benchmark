from snakemake.utils import min_version

min_version("6.0.5")

SIZES = ["small", "medium", "large"]
METHODS = ["array", "rtensor", "matter",
	"rlearray", "rlearray_blocksize",
	"hdf5array",  "hdf5array_sparse",
	"hdf5array_chunk", "hdf5array_comp",
	"tiledbarray", "tiledbarray_sparse",
	"delayedtensor"]

rule all:
	input:
		'plot/profmem_time.png',
		'plot/profmem_memory.png',
		'plot/benchmark_time.png',
		'plot/benchmark_memory.png'

rule profmem:
	output:
		'profmem/{m}_{s}.RData'
	resources:
		mem_gb=50
	benchmark:
		'benchmarks/{m}_{s}.txt'
	log:
		'logs/{m}_{s}.log'
	shell:
		'Rscript src/{wildcards.m}_{wildcards.s}.R >& {log}'

rule plot:
	input:
		expand('profmem/{m}_{s}.RData',
			m = METHODS, s = SIZES)
	output:
		'plot/profmem_time.png',
		'plot/profmem_memory.png',
		'plot/benchmark_time.png',
		'plot/benchmark_memory.png'
	resources:
		mem_gb=50
	benchmark:
		'benchmarks/plot.txt'
	log:
		'logs/plot.log'
	shell:
		'Rscript src/plot.R >& {log}'
