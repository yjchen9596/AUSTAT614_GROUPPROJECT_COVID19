library(tidyverse)
world_covid <- read_csv("~/STAT_GROUPPROJECT_COVID19/world_covid.csv")
colnames(world_covid)
View(world_covid)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmode(world_covid$continent)

Africa <- world_covid %>% 
  filter(continent == "Africa")
write.csv(Africa, file = 'Africa.csv')

Africa <- read_csv("~/STAT_GROUPPROJECT_COVID19/Africa.csv")
Africa2 <- Africa %>% 
  select(continent, location, total_cases, total_deaths, total_deaths_per_million, total_tests_per_thousand, total_vaccinations_per_hundred, icu_patients_per_million, population, population_density, median_age,gdp_per_capita, extreme_poverty, female_smokers, male_smokers, life_expectancy, )
write.csv(Africa2, file = "Africa2.csv")
Africa2 <- read_csv("Africa2.csv")

Asia <- world_covid %>% 
  filter(continent == "Asia")
write.csv(Asia, file = 'Asia.csv')

Asia <- read_csv("~/STAT_GROUPPROJECT_COVID19/Asia.csv")
Asia2 <- Asia %>% 
  select(continent, location, total_cases, total_deaths, total_deaths_per_million, total_tests_per_thousand, total_vaccinations_per_hundred, icu_patients_per_million, population, population_density, median_age,gdp_per_capita, extreme_poverty, female_smokers, male_smokers, life_expectancy)
write.csv(Asia2, file = "Asia2.csv")
Asia2 <- read_csv("Asia2.csv")


Europe <- world_covid %>% 
  filter(continent == "Europe")
write.csv(Europe, file = 'Europe.csv')

Europe2 <- Europe %>% 
  select(continent, location, total_cases, total_deaths, total_deaths_per_million, total_tests_per_thousand, total_vaccinations_per_hundred, icu_patients_per_million, population, population_density, median_age,gdp_per_capita, extreme_poverty, female_smokers, male_smokers, life_expectancy)
write.csv(Europe2, file = "Europe2.csv")
Europe2 <- read_csv("Europe2.csv")

North_America <- world_covid %>% 
  filter(continent == "North America")
write.csv(North_America, file = 'NorthAmerica.csv')

South_America <- world_covid %>% 
  filter(continent == "South America")
write.csv(South_America, file = 'SouthAmerica.csv')

Oceania <- world_covid %>% 
  filter(continent == "Oceania")
write.csv(Oceania, file = "Oceania.csv")


sort(table(world_covid$continent), decreasing = TRUE)
