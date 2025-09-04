# Cecilia_Jenna_DSE511
Homework 3 due Monday, September 15th
Description of work
  Dataset source: Our World in Data accessed on 9/4/2025 from https://ourworldindata.org/water-use-stress#what-share-of-freshwater-resources-do-we-use
  Dataset name: "Level of water stress: freshwater withdrawal as a proportion of available freshwater resources" yearly by country
  Responsibilites by person and deadline
        - Cecilia: Data cleaning (handle missing values, rename variables, select subset) using R/Python (choose one) - by end of day Tuesday, Sept 9th
               Steps:
                   1. Cloned the Cecilia_Jenna_DSE511 repository on to my laptop
                   2. Created a folder called data in main branch
                   3. Created a folder called notebooks in main branch
                   4. Pushed these changes to GitHUB to see if my changes applied
                   5. Created a new branch called Cecilia_work
                   6. Moved the data/ and notebooks/ folders to Cecilia_work branch
                   7. Committed and pushed these changes to GitHUB
                   8. Created a new r script in notebooks/
                   9. I renamed the 1st column to Country and the 4th column to water_stress which are %                          values.
                   10. I inspected the data set (tibble) for missing values using is.na() and found 91 NAs                         all within the Code column.
                   11. I identified that these rows corresponded to regions instead of single countries                            within the column called Country, so I decided to omit these observations from our                          data so we only consider metrics by individual country.
                   12. From this data, I selected a subset of countries, one per continent: Australia,                             United States, Brazil, Spain, China, Nigeria
                   13. Saved the clean subset of data as data within the data/ folder and saved my code to                         notebooks/ folder (.r script)
        - Jenna: EDA (3 summary stats, at least one visualization) using R programming language - by end of day Thursday, Sept 11th
               Steps:
                   1.
                   2.
                   Final #. Save code to notebooks/ folder
        Both: Each of us must create a branch, make at least 3 commits, and open a pull request, and write all documentation.
               At least one merge conflict must be resolved (intentionally if needed)
                     One “safe” way to do this is both of you editing the README’s introduction

Review before submitting on Canvas on Friday, Sept 12th
      - Both Cecilia and Jenna check that there are the following in Cecilia_Jenna_DSE511 Repo:
          + data/folder with clean dataset
          + notebooks/ folder with analysis code
          + README.md
      - Cecilia and Jenna each submit a copy of Repo URL to Canvas

Framework created by Cecilia on 9/4/25 based on Homework3.pdf
