library(tidyverse)

tyler_activity <- read.csv("https://raw.githubusercontent.com/ucd-cepb/R-DAVIS/refs/heads/main/data/tyler_activity_laps_10-24.csv")

laps_running <- tyler_activity %>%
  filter(sport == "running") %>%
  filter(total_elapsed_time_s >= 60) %>%
  filter(minutes_per_mile > 5 & minutes_per_mile < 10) %>%
  mutate(pace = case_when(minutes_per_mile < 6 ~ "fast", minutes_per_mile >=6 & minutes_per_mile < 8 ~ "medium", T ~ "slow"), form = case_when(year == 2024 ~ "new form", T ~ "old form"))

laps_running %>% group_by(form, pace) %>%
  summarise(avg_spm = mean(steps_per_minute)) %>%
  pivot_wider(id_cols = form, values_from = avg_spm, names_from = pace) %>%
  select(form, slow, medium, fast)

laps_running %>% filter(form == "new_form") %>%
  mutate(months = ifelse(month %in% 1:6, "early 2024", "late 2024")) %>%
  group_by(months) %>%
  summarise(
    min_spm = min(steps_per_minute), 
    median_spm = median(steps_per_minute)
    mean_spm = mean(steps_per_minute)
    max_spm = max(steps_per_minute))
