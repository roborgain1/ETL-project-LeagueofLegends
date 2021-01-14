Project: Extract, Transform, and Load (ETL) data from League of Legends databases:

Background: The rankings used in League of Legends (LoL) from lowest-tier to highest-tier include: Iron, Bronze, Silver, Gold, Platinum, Diamond, and Master. The majority of LoL players find themselves in the lower tiers, with the higher tiers having a significantly lower volume of players. Each champion can fill one of five roles per game, which include: Top, Jungle, Mid, Bottom/AD Carry, and Support. The goal of this project was to compare the win-rates of specific champions and their roles based on player ranking.

Extraction: 
    - HTML data was scraped from two Leauge of Legends websites using Beautiful Soup and Splinter (that contain champion statistics based on ranking/tier) into Jupyter                 Notebook.
    
  Transformation:
    - Pandas was used to create three dataframes to store champion data from different rankings (iron and above, platinum and above, and master tier).
    - Python was used to iterate through specific elements in the extracted Soup or Splinter and to append chosen values to their dataframes. 
    - The dataframes were cleaned by dropping unncecessary columns and renaming/reordering wanted columns, and sorted based on win rates in descending order.
    - The three dataframes initially created were concatenated to a final dataframe with mixed rankings, sorted by win-rate, and finally saved as league_winrates.csv.
    
  Loading:
    - pgAdmin4 was used to create a schema or table using the specific columns contained in the league_winrates.csv by using relational database postgreSQL.
    - The league_win_rates.csv was finally imported into the table in the final database (pgAdmin4) to be stored and accessed for future League of Legends endeavors, but is also       easily accessible in Jupyter Notebook/Pandas with only 541 rows and 6 columns. 


