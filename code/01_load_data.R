## Load in Data - State - 2012
library(here)
here::i_am(
  "code/01_load_data.R"
)

                                                
project_data1 <- read.csv("num_posts_and_sentiment_summary_2012.csv") #Read CSV file from desktop

project_data1 <- subset(project_data1, NAME_0 == "Greece") 

saveRDS(
  project_data1,
  file = here::here("output", "project_data1.rds")
)

