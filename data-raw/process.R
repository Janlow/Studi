library(readr)
library(readxl)
library(tidyverse)

merge_skolverket_2017 <- read_excel("~/StudiData/data-raw/merge_skolverket_2017.xlsx")
merge_skolverket_2018 <- read_excel("~/StudiData/data-raw/merge_skolverket_2018.xlsx")
merge_skolverket_2016 <- read_excel("~/StudiData/data-raw/merge_skolverket_2016.xlsx")
merge_skolverket_2015 <- read_excel("~/StudiData/data-raw/merge_skolverket_2015.xlsx")
merge_skolverket_2014 <- read_excel("~/StudiData/data-raw/merge_skolverket_2014.xlsx")
merge_skolverket_2013 <- read_excel("~/StudiData/data-raw/merge_skolverket_2013.xlsx")
Kommunkoder <- read_excel("~/StudiData/data-raw/Kommunkoder.xlsx")
all_schools_studi <- read_delim("~/StudiData/data-raw/schools (8) studi 2019.csv",
                                          "*", escape_double = FALSE, trim_ws = TRUE)
fullt_df_merged_fixat <- read_excel("~/StudiData/data-raw/fullt_df_merged_fixat.xlsx",
                                              col_types = c("text", "text", "text",
                                                            "numeric", "numeric", "blank"))

completed_quizzes <- read_csv("~/StudiData/data-raw/completed_quizzes.csv.zip")
members <-  read_csv("~/StudiData/data-raw/members.csv.zip")
licensables_2_ <-  read_csv("~/StudiData/data-raw/licensables (2).csv")
videos_watched_1_ <-  read_csv("~/StudiData/data-raw/videos_watched (1).csv.zip")
videos_watched_2_ <-  read_csv("~/StudiData/data-raw/videos_watched (2).csv.zip")
videos_watched_4_ <-  read_csv("~/StudiData/data-raw/videos_watched (4).csv.zip")
videos_watched_5_ <-  read_csv("~/StudiData/data-raw/videos_watched (5).csv.zip")
videos_watched_6_ <-  read_csv("~/StudiData/data-raw/videos_watched (6).csv.zip")
videos_watched_7_ <-  read_csv("~/StudiData/data-raw/videos_watched (7).csv.zip")

courses <- read_delim("~/StudiData/data-raw/courses.csv",
                      ";", escape_double = FALSE, trim_ws = TRUE)
disciplines <- read_delim("~/StudiData/data-raw/disciplines.csv",
                          ";", escape_double = FALSE, trim_ws = TRUE)
subjects <- read_delim("~/StudiData/data-raw/subjects.csv",
                       ";", escape_double = FALSE, trim_ws = TRUE)


devtools::use_data(merge_skolverket_2013, merge_skolverket_2014, merge_skolverket_2015,
                   merge_skolverket_2016, merge_skolverket_2017, merge_skolverket_2018, Kommunkoder,
                   all_schools_studi, fullt_df_merged_fixat, completed_quizzes, members, licensables_2_,
                   videos_watched_1_, videos_watched_2_, videos_watched_4_, videos_watched_5_, videos_watched_6_,
                   videos_watched_7_, courses, disciplines, subjects, overwrite = TRUE)
