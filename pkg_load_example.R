workdata <- function(x, envir = parent.frame()){
    ## 'x' is ignored currently
    x <- c("ap", "ap7to9", "pcfr") # "dataFrances1996"
    
    ap <- pcts(datasets::AirPassengers)
    ap7to9 <- window(ap, seasons = 7:9)

    ## not sure why 'R CMD check' gives a note: 
    ##       "no visible binding for global variable ‘dataFrances1996’"
    ## without '::'
    pcfr <- pcts(pcts::dataFrances1996)

    list2env(list(ap = ap, ap7to9 = ap7to9, pcfr = pcfr), envir = envir)
    x
}
