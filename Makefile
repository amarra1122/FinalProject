Final_Project.html: Final_Project.Rmd code/04_render_report.R code/01_load_data.R code/02_make_table.R code/03_make_graph.R
	Rscript code/01_load_data.R && Rscript code/02_make_table.R && Rscript code/03_make_graph.R && Rscript code/04_render_report.R

project_data1:
	Rscript code/01_load_data.R

final.table:
	Rscript code/02_make_table.R

final.graph:
	Rscript code/03_make_graph.R

.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f Final_Project.html && rm -f report/Final_Project.html
	
.PHONY: install
install: 
	Rscript -e "renv::restore(prompt = FALSE)"

#Works for Mac and Windows
container:
	docker run -v "/$$(pwd)/report":/project/Final_Project amarra1122/finalproject 
