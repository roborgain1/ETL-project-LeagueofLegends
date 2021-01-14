Project: Extract, Transform, and Load (ETL) data from League of Legends databases:

Background: The rankings used in League of Legends (LoL) from lowest-tier to highest-tier include: Iron, Bronze, Silver, Gold, Platinum, Diamond, and Master. The majority of LoL players find themselves in the lower tiers, with the higher tiers having a significantly lower volume of players. Each champion can fill one of five roles per game, which include: Top, Jungle, Mid, Bottom/AD Carry, and Support. The goal of this project was to compare the win-rates of specific champions and their roles based on player ranking.

Extraction:
1) HTML data was scraped from two Leauge of Legends websites using Beautiful Soup and Splinter (that contain champion statistics based on ranking/tier) into Jupyter Notebook.
    
Transformation:
1) Pandas was used to create three dataframes to store champion data from different rankings (iron and above, platinum and above, and master tier).
2) Python was used to iterate through specific elements in the extracted Soup or Splinter and to append chosen values to their dataframes. 
3) The dataframes were cleaned by dropping unncecessary columns and renaming/reordering wanted columns, and sorted based on win rates in descending order.
4) The three dataframes initially created were concatenated to a final dataframe with mixed rankings, sorted by win-rate, and finally saved as league_winrates.csv.
    
Loading:
1) pgAdmin4 was used with relational database postgreSQL to create a schema or table called league_winrates using the same columns contained in the league_winrates.csv, which was then imported into the table.
2) postgreSQL was chosen to easily and quickly view/scroll through the 541 rows of data in the league_winrates table.

Conclusion: The Master tier contained the highest win-rates by far, but also the lowest win-rates, giving it the highest variation. The data may be skewed with more variance due to the smaller volume of players at higher rankings and thus a smaller sample. The champion Rumble, for example, was highly successful when played in the Master tier with a win-rate of 66.7% in the Top lane, while only having a win-rate of 48.7% in the Top lane when including Iron and above player statistics. This suggests that the skill cap on Rumble is high meaning those who master the champion in higher skill tiers are able to set themselves above the rest, while lower tier players have difficulty finding success. This data can be utilized by players who want to know what champions have the most success in the tier that they are currently playing in.


