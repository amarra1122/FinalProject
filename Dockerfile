#Because I am doing development from command line
FROM rocker/r-ubuntu
RUN apt-get update && apt-get install -y pandoc zlib1g-dev

#Install the missing system libraries
RUN apt-get update && apt-get install -y libcurl4-openssl-dev 
RUN apt-get update && apt-get install -y libssl-dev
RUN apt-get update && apt-get install -y libxml2-dev
RUN apt-get update && apt-get install -y libfontconfig1-dev

#Creating directory in my image
RUN mkdir /project
WORKDIR /project

#Copy over all renv files
COPY .Rprofile .
COPY renv.lock .

# Install make
RUN apt update && apt install -y make

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
CMD make Final_Project.html && mv Final_Project.html Final_Project
