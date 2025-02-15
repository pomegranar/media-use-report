# install.packages("timevis")

library(timevis)

data <- data.frame(
  id = 1:2,
  content = c(
    '<img src="https://www.r-project.org/logo/Rlogo.png" width="50"> R Logo',
    '<img src="https://images.computerhistory.org/timeline/timeline_graphics.games_1952.oxo.jpg" width="50px"> Timeline Example',
    '<img src="https://www.rstudio.com/wp-content/uploads/2018/10/RStudio-Logo-flat.png" width="70"> RStudio'
  ),
  start = c("2024-02-01", "2024-03-15", "2024-04-20")
)

timevis(data)

