# AGB April 5, 2024

# This is an example of grabbing a rwl from the rwls.Rdata file.
# Shows how we can extract a rwl object and its meta info

rm(list=ls())
library(dplR)
rwls <- readRDS("Rdatafiles/rwls.rds")
rwls_meta <- readRDS("Rdatafiles/rwls_meta.rds")
rwls_bad <- readRDS("Rdatafiles/rwls_bad.rds")
summary(rwls_bad)
nrow(rwls_meta)
length(rwls)

# the first study
rwls_meta[1,]
aRWL <- rwls[[1]]

rwl.report(aRWL)
summary(aRWL)
plot(aRWL)
