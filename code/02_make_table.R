here::i_am(
  "code/02_make_table.R"
)

project_data1 <- readRDS(
  here::here("output/project_data1.rds")
)


project_data1$NAME_1 <-                                                   
  factor(project_data1$NAME_1, 
         labels=c("Aegean",                                                #Change the labels of our state data so that they don't contain the prefix "Greece_"
                  "Attica",
                  "Crete",
                  "Epirus and Western Macedonia",
                  "Macedonia and Thrace",
                  "Peloponnese, Western Greece and the Ionian Islands",
                  "Thessaly and Central Greece"
         ))

table <- table1(~ SCORE | NAME_1, data=project_data1)                      #Define our table1 for editing in kable, View Sentiment Index vs. Grecian State

final.table <- table %>% 
  kbl(digits=2, caption = "Twitter Subjective Wellbeing - Greece", ) %>%     #Round to two decimals, and create a caption for this table
  kable_material(c("striped", "hover")) %>%                                 #Change the format of our table using a kable format
  kable_styling(full_width = F)  

saveRDS(
  final.table,
  file = here::here("output", "final.table.rds")
)
