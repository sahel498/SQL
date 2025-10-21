# Scenario: 

Data Scientist at USDA (United States Department of Agriculture)

## Context: 

You are a Data Scientist working at the USDA. Your department has been tracking the production of various agricultural commodities across different states. 

## datasets include:

`milk_production`, `cheese_production`, `coffee_production`, `honey_production`, `yogurt_production`, and a `state_lookup` table. 

- The data spans multiple years and states, with varying levels of production for each commodity.

- Your manager has requested that you generate insights from this data to aid in future planning and decision-making. You'll need to use SQL queries to answer the questions that come up in meetings, reports, or strategic discussions.

## Objectives:

- Assess state-by-state production for each commodity.

- Identify trends or anomalies.

- Offer data-backed suggestions for areas that may need more attention.

## Steps to Get Started:

1. SQLite Setup: Download and install SQLite on your own computer if you haven't already.

2. Data Import: Input the provided scripts and import the provided CSV files into SQLite to create your SQL tables. (Located below.)

 3. Practice Makes Perfect: Use the sample questions to get comfortable with the data and the types of questions you'll face in the final project/exam.


## Setting Up for the Final Project:
Make sure SQLite is installed on your computer: 
SQLite Installation
 

## Resources: 
 SQLite Tutorial


Download the datasets at the bottom of the page that you will use to populate your tables.

CSV data files may download as a ZIP file, please extract them to a new folder.

Open DBeaver and Connect to SQLite Database: Make sure you're connected to the SQLite database where you want to upload the CSV.

Select a new database connection (the plugin with the +)

Select SQLite

Then select "create"

Select a folder you want your database to be in and name it whatever you'd like, it could be "hello.sqlite" for example.

Navigate to the new database you created: In the left sidebar, expand the connection and locate the database where you want to import your CSV file.

Additionally, this video may be helpful: 
https://www.youtube.com/watch?v=fmq6-wvbxyA

Create a New Table: Create the following new tables to add the CSV files to. Please see the script below to create the tables. (Note: you must create the tables before uploading the datasets. Do not change the names of the tables you create, otherwise the sample scripts will not run.) 

Windows/macOS: 

Follow this tutorial to create new tables on DBeaver, this is done on macOS in the video but options should be the same for Windows: 

https://www.youtube.com/watch?v=ch4h-y_-9u4

Right-click on the Table: Once you have your table set up, right-click on it and then choose `Import Data`.

You may need to "refresh" the database so you can see the table.

Right click on the "import data"

Choose CSV File: A new window will pop up. Select `CSV` as the source format and browse to find your file. Be sure to upload the corresponding ‘CSV’ file name to the table name. 

Select CSV file

Add the CSV file that corresponds to the table name you created

Map Columns: DBeaver will display the columns from the CSV and the table. Make sure they are mapped correctly. You can also specify additional settings like delimiter, quote character, etc.

Start the Import: Once you're satisfied with the settings, click `Next` to review, and then `Finish` to start importing the data.

Click "Next" until you get to the confirmation window. 

Then Click "Proceed" to populate the table

If at any point you believe that the data import was wrong in any way, feel free to delete that table from your SQLite DB inside DBeaver and create the table and import the data again.

Verify Data: After the import process, refresh your table to see if the data has been successfully imported.

Repeat this process until you have created all tables and imported the data for all tables.

You may need to clean up the data. To do so, the run statements are at the bottom of this page.
