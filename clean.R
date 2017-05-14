library(tidyverse)
library(readxl)

complaints <- read_excel('data/Complaints.xlsx')

complaints[sapply(complaints, is.character)] <- 
  lapply(complaints[sapply(complaints, is.character)], tolower)

names(complaints) <- sub(" ", "", names(complaints))

complaints %>% 
  group_by(IssueCategory) %>% 
  summarize(n = n()) %>% 
  arrange(desc(n)) %>% 
ggplot(aes(reorder(IssueCategory, n), n)) +
  geom_bar(stat = "identity") +
  coord_flip()