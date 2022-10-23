here::i_am(
  "code/03_make_graph.R"
)

project_data1 <- readRDS(
  here::here("output/project_data1.rds")
)


final.graph <- ggplot(project_data1, aes(x=NAME_1, y=SCORE)) + geom_boxplot(outlier.colour="red", outlier.shape=8, outlier.size=1) + scale_x_discrete(labels = c('Aegean','Attica','Crete',"Epirus and Western Macedonia", "Macedonia and Thrace","Peloponnese, Western Greece and the Ionian Islands","Thessaly and Central Greece"),guide = guide_axis(n.dodge=4)) +xlab("Grecian State") + ylab("Sentiment Index Score") +ggtitle("Twitter Subjective Wellbeing - Greece") +theme(plot.title = element_text(size = 20, face = "bold")) + theme(plot.title = element_text(hjust = 0.5)) +theme(axis.title= element_text(size=18, face="bold"))                     


saveRDS(
  final.graph,
  file = here::here("output", "final.graph.rds")
)

