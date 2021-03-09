library(dplyr)
library(tidyr)

load("data/am8_final.rda")

drop_na(am8) %>%
  group_by(DATE) %>%
  summarize(TEMPd = mean(TEMP),
            PM10d = mean(PM10), 
            PM10max = max(PM10),
            VELd = mean(VEL),
            PRESSd = mean(PRESS)
            ) -> am8d
