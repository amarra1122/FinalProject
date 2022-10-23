---
title: "Twitter Sentiment Geographical Index - README"
author: "Angelo Marra"
date: '2022-10-23'
output: html_document
---

#This document will help explain how to build my final report using my GitHub Repository and Project Directory.

Github Repository: https://github.com/amarra1122/FinalProject


## **1:** To begin: Download "num_posts_and_sentiment_summary_2012.csv" - this file was commited into my GitHub Repository (Commit #2 - Add files via upload).

Once you have done this place the file directly onto your desktop in order to satisfy the working directory of the code in my project. 

## **2:** Once the data has been loaded in: you can proceed to run all four R scripts in the 'code' folder - or use the Makefile to produce the final project.

## **3:** The code folder contains four seperate R scripts:

* 01_load_data: Loads in data from your desktop - data is stored as an R object within the output folder.

* 02_make_table: Creates table which is reported in the final document - table is stored as an R object within the output folder.

* 03_make_graph: Creates graph which is reported in the final document - graph is stored as an R object within the output folder.

* 04_render_report: Renders/knits the final Rmd document using the final contents of the output folder.
