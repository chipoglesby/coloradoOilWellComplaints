complaints %>%
  group_by(IssueCategory) %>%
  summarize(n = n()) %>%
  arrange(desc(n)) %>%
ggplot(aes(reorder(IssueCategory, n), n)) +
  geom_bar(stat = "identity") +
  coord_flip()
