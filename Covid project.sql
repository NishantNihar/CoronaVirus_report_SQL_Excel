USE covid_project;

-- location wise total cases -- 
select location, SUM(total_cases) total_cases from owid_covid_data_proj where location <> '0' group by 1 order by 2 desc;

-- date wise total cases growth -- 
select date, sum(total_cases) total_cases from owid_covid_data_proj group by 1 order by 1;

-- location wise patients in hospital -- 
SELECT location, SUM(hosp_patients) hosp_patients from owid_covid_data_proj group by 1 order by 2 desc;

-- location wise total deaths -- 
SELECT continent, SUM(total_deaths) total_deaths from owid_covid_data_proj where continent <> '0' group by 1 order by 2 desc;

-- location wise total people vaccinated -- 
SELECT location, SUM(people_vaccinated) people_vaccinated from owid_covid_data_proj where continent<> '0' group by 1 order by 2 desc;

-- population density for location -- 
SELECT location, ROUND(MAX(population_density),2) population_density from owid_covid_data_proj group by 1;

-- population density for continent -- 
SELECT continent, ROUND(SUM(population_density),2) total_population_density from owid_covid_data_proj where continent <> '0' group by 1 order by 2 desc;

-- Count of female and male smokers --
SELECT location, SUM(female_smokers+male_smokers) total_smokers from owid_covid_data_proj group by 1 order by 2 desc;


