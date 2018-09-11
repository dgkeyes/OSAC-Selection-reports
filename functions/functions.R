int_breaks <- function(x, n = 5) pretty(x, n)[pretty(x, n) %% 1 == 0] 

library(usethis)

usethis::edit_r_profile()

use_git(message = "Initial commit")

