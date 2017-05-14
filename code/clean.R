complaints[sapply(complaints, is.character)] <-
  lapply(complaints[sapply(complaints, is.character)], tolower)

names(complaints) <- sub(" ", "", names(complaints))
