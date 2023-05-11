library(tidyverse)
oral = read.csv("oral.csv")

set.seed(7)

oral %>%
  group_by(group) %>%
  filter(row_number() == sample(1:n(), size=1))
