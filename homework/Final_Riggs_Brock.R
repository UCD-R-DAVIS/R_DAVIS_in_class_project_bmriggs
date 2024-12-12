#1
exercise <- read.csv("https://raw.githubusercontent.com/UCD-R-DAVIS/R-DAVIS/refs/heads/main/data/tyler_activity_laps_12-6.csv")
exercise

#2 & 3 & 4
running <- filter(exercise, sport == "running") %>%
  filter(minutes_per_mile > 5 & minutes_per_mile < 10) %>%
  filter(total_elapsed_time_s > 60) %>%
  mutate(timeperiod = case_when(year < 2024 ~ "preinjury", month >= 01 & month < 7 ~ "initial_rehab", T ~ "post_rehab" ))

running

#5
ggplot(running, aes(x = minutes_per_mile, y = steps_per_minute)) +
  geom_point(aes(color = timeperiod, size = total_distance_m)) + 
  scale_x_log10() +
  geom_smooth(method = 'lm', color = 'black', linetype = 'dashed') +
  theme_bw()

#6
ggplot(running, aes(x = minutes_per_mile, y = steps_per_minute)) +
  geom_point(aes(color = timeperiod, size = total_distance_m)) + 
  scale_x_log10() +
  scale_color_manual(breaks = c("preinjury", "initial_rehab", "post_rehab"), values=c("red", "orange", "yellow")) +
  geom_smooth(method = 'lm', color = 'gray', linetype = 'solid') +
  theme_bw() +
  ggtitle("How Injury Effects Running")

#7
ggplot(running, aes(x = minutes_per_mile, y = steps_per_minute)) +
  geom_point(aes(color = timeperiod, size = total_distance_m)) + 
  scale_x_log10() +
  scale_color_manual(breaks = c("preinjury", "initial_rehab", "post_rehab"), values=c("red", "orange", "yellow")) +
  geom_smooth(aes(color = timeperiod)) +
  geom_smooth(color = 'black') +
  geom_smooth(method = 'lm', color = 'gray', linetype = 'solid') +
  theme_bw() +
  ggtitle("How Injury Effects Running")








