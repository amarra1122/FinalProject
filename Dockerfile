#Because I am doing development from command line
FROM rocker/r-ubuntu
RUN apt-get update && apt-get install -y pandoc zlib1g-dev

#Creating directory in my image
RUN mkdir /project
WORKDIR /project

#Copy over all renv files
COPY .Rprofile .
COPY renv.lock .

#Copy Makefile, config file, hiv_report.Rmd, and data 
COPY Makefile .
COPY Final_Project.Rmd .
COPY num_posts_and_sentiment_summary_2012.csv .

#Create renv folder that is the same as in the local project directory
RUN mkdir renv
COPY renv/activate.R renv
COPY renv/settings.dcf renv

#Call upon renv to make sure we have necessary packages
RUN Rscript -e "renv::restore(prompt = FALSE)"

#Create code, output, and Final_Project directories in our image
RUN mkdir code
COPY code code
RUN mkdir output
RUN mkdir Final_Project


#Make and move the report over
CMD make && mv Final_Project.html Final_Project
