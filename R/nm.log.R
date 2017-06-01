## Description: Example log of NONMEM runs
## Run interactively: TRUE
## Key words: script, template

########################################
## load packages and source functions here

library(NMproject)

source("Scripts/gof1.R")

########################################
## main script here

m1 <- nm("qpsn -m -c auto -t 3000 -- execute run1.mod -dir=1")
run(m1)
gof1(m1$run.no)

m2 <- nm("qpsn -m -c auto -t 3000 -- execute run2.mod -dir=2")
run(m2)
gof1(m2$run.no)

