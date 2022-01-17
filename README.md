# tpch_skew_linux

TPC-H with skew factor (Zipf distribution) enabled. Use `dbgen` with `-z` option to input the skew when generating benchmark data. There are several makefile available for different OSs and settings. Try them if the default makefile doesn't work.

The original is the linux version on github. Multiple makefiles have been prepared for multiple distributions including Mac OS.


## CentOS compile

    make -f makefile_centos


## MacOS compile

    make -f makefile_MacSolaris
    
# Generate
For example to generate a 100MB test data:

`./dbgen -s 0.1`

# Help information

```
./dbgen -h
TPC-D Population Generator (Version 1.3.1)
Copyright Transaction Processing Performance Council 1994 - 1998
USAGE:
dbgen [-{vfFD}] [-O {fhmst}][-T {pcsoPSOL}]
	[-s <scale>][-C <procs>][-S <step>]
dbgen [-v] [-O {dhmrt}] [-s <scale>] [-U <updates>] [-r <percent>]

-C <n> -- use <n> processes to generate data
          [Under DOS, must be used with -S]
-D     -- do database load in line
-f     -- force. Overwrite existing files
-F     -- generate flat files output
-h     -- display this message
-n <s> -- inline load into database <s>
-O d   -- generate SQL syntax for deletes
-O f   -- over-ride default output file names
-O h   -- output files with headers
-O m   -- produce columnar output
-O r   -- generate key ranges for deletes.
-O s   -- generate seed sets ONLY
-O t   -- use TIME table and julian dates
-r <n> -- updates refresh (n/100)% of the
          data set
-R <n> -- resume seed rfile generation with step <n>
-s <n> -- set Scale Factor (SF) to  <n>
-S <n> -- build the <n>th step of the data set
-T c   -- generate cutomers ONLY
-T l   -- generate nation/region ONLY
-T L   -- generate lineitem ONLY
-T n   -- generate nation ONLY
-T o   -- generate orders/lineitem ONLY
-T O   -- generate orders ONLY
-T p   -- generate parts/partsupp ONLY
-T P   -- generate parts ONLY
-T r   -- generate region ONLY
-T s   -- generate suppliers ONLY
-T S   -- generate partsupp ONLY
-U <s> -- generate <s> update sets
-v     -- enable VERBOSE mode
-z     -- **generate skewed data distributions**

To generate the SF=1 (1GB) database population , use:
	dbgen -vfF -s 1

To generate the qualification database population (100 MB), use:

	dbgen -vfF -s 0.1

To generate updates for a SF=1 (1GB), use:
	dbgen -v -O s -s 1
	dbgen -v -U 1 -s 1
```




