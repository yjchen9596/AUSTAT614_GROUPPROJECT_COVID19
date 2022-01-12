library(tidyverse)

##filter data
world_covid %>%
  arrange(desc(gdp_per_capita)) %>% 
  filter(date == "2021-04-24") %>%  
  select(location,
         continent,
         total_deaths_per_million, 
         total_vaccinations, 
         people_fully_vaccinated, 
         people_vaccinated, 
         total_tests_per_thousand, 
         gdp_per_capita, 
         extreme_poverty,
         male_smokers,
         female_smokers,
         population, 
         population_density,
         stringency_index,
         diabetes_prevalence) %>% 
  drop_na() %>% 
  mutate(smoker_total = male_smokers + female_smokers) %>% 
  relocate(smoker_total, .before = male_smokers)-> covid_world123


head(covid_world123, n=15) -> high_gdp_15
tail(covid_world123, n=15) -> low_gdp_15

ls(high_gdp_15)
ls(low_gdp_15)

sample_n(covid_world123, 30) -> stats614_project_30samples_covid

write_csv(stats614_project_30samples_covid, "stats614_project_30samples_covid.csv")
##saved the data


----
  


