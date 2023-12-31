library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)
bond="https://editorial.rottentomatoes.com/guide/james-bond-movies-in-order/"
path=paths_allowed(bond)
movie=read_html(bond)
Name=movie%>%html_nodes(".article_movie_title a")%>%html_text()
View(Name)
Year=movie%>%html_nodes(".start-year")%>%html_text()
View(Year)
Director=movie%>%html_nodes(".director .descriptor+ a")%>%html_text()
View(Director)
Hero=movie%>%html_nodes(".cast .descriptor+ a")%>%html_text()
View(Hero)
Review=movie%>%html_nodes(".critics-consensus")%>%html_text()
View(Review)
class.seven=data.frame(Name,Year,Director,Hero,Review)
View(class.seven)
write.csv(class.seven,"James Bond Movies.csv")
