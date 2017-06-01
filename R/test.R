#'@export
init_wrap <- function() {
  .Fortran("init")
}

#'@export
eval_wrap <- function(x) {
  z <- as.numeric(0)
  out <- .Fortran("eval", x = x, z = z)
  out$z
} 
