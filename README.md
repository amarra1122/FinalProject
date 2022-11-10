---
title: "Twitter Sentiment Geographical Index - README"
author: "Angelo Marra"
date: '2022-10-23'
output: html_document
---

# This document will help explain how to build my final report using my GitHub Repository and Project Directory.

Github Repository: https://github.com/amarra1122/FinalProject


## **1:** You can proceed to run all four R scripts in the 'code' folder - or use the "Make Final_Project.html" to produce the final project.

## **2:** The code folder contains four seperate R scripts:

* 01_load_data: Loads in data from your desktop - data is stored as an R object within the output folder.

* 02_make_table: Creates table which is reported in the final document - table is stored as an R object within the output folder.

* 03_make_graph: Creates graph which is reported in the final document - graph is stored as an R object within the output folder.

* 04_render_report: Renders/knits the final Rmd document using the final contents of the output folder.

* Final_Project.html has the contents of my final report thus far

* A make install rule was created within my Makefile in order to restore the package environment for my project.
