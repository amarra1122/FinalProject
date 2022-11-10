Final_Project.html: Final_Project.Rmd code/01_load_data.R code/02_make_table.R code/03_make_graph.R output/project_data1.rds output/final.graph.rds output/final.table.rds
	Rscript code/04_render_report.R

project_data1:
	Rscript code/01_load_data.R

final.table:
	Rscript code/02_make_table.R

final.graph:
	Rscript code/03_make_graph.R


.PHONY: clean
clean:
	rm -f output/*.rds && rm -f Final_Project.html