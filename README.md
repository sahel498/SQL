 # 🎯 Scenario

Data Scientist at USDA (United States Department of Agriculture)

## 💡 Context 

You are a Data Scientist working at the USDA. Your department has been tracking the production of various agricultural commodities across different states. 

## 📊 datasets include

`milk_production`, `cheese_production`, `coffee_production`, `honey_production`, `yogurt_production`, and a `state_lookup` table. 

- The data spans multiple years and states, with varying levels of production for each commodity.

- Your manager has requested that you generate insights from this data to aid in future planning and decision-making. You'll need to use SQL queries to answer the questions that come up in meetings, reports, or strategic discussions.

## 🚀 Objectives

- Assess state-by-state production for each commodity.

- Identify trends or anomalies.

- Offer data-backed suggestions for areas that may need more attention.

## 🔍 Steps to Get Started

1. SQLite Setup: Download and install SQLite on your own computer if you haven't already.

2. Data Import: Input the provided scripts and import the provided CSV files into SQLite to create your SQL tables. (Located below.)

3. Practice Makes Perfect: Use the sample questions to get comfortable with the data and the types of questions you'll face in the final project/exam.


## 🏗️ Setting Up for the Final Project
- [Go To coursera WebSite](https://www.coursera.org/learn/sql-for-data-science/supplement/hfPAm/final-project-instructions-scripts-datasets)

1. Make sure SQLite is installed on your computer: [SQLite Installation](https://www.sqlite.org/download.html)
   
   a. Resources: 
 [SQLite Tutorial](https://www.sqlitetutorial.net/download-install-sqlite/)

   b. **Windows**: On 32 and 64 bit DLL which can’t run on Win 10 natively so we may have to specify to download the CLI file which is 3rd in line of available downloads. I found this website to be very useful to download and install CLI version with a Win command prompt, it gives a confirmation on cmd that sqlite is up and running: 

   c. https://www.sqlitetutorial.net/download-install-sqlite/

   d. For basics of command prompt I recommend this (For cd and all):
   
   https://www.digitalcitizen.life/command-prompt-how-use-basic-commands/

   e. It may be different for different Windows laptops, so please check which file runs on your system and install accordingly.

     **macOS**: May already be installed on your mac, check before installing, if not installed then head to the given website and download the x86 zip file. You may also follow the install steps mentioned         in this codeacademy video on youtube: https://www.youtube.com/watch?v=4MJSZi4qvIE


2. Download a SQL editor: I recommend [DBeaver](https://dbeaver.io/)


3. **Download the datasets at the bottom of the page that you will use to populate your tables.**

   a. CSV data files may download as a ZIP file, please extract them to a new folder.

4. Open DBeaver and Connect to SQLite Database: Make sure you're connected to the SQLite database where you want to upload the CSV.

   a. Select a new database connection (the plugin with the +)

   b. Select SQLite

   c. Then select "create"

   d. Select a folder you want your database to be in and name it whatever you'd like, it could be "hello.sqlite" for example.

   e. Navigate to the new database you created: In the left sidebar, expand the connection and locate the database where you want to import your CSV file.

   f. Additionally, this video may be helpful: https://www.youtube.com/watch?v=fmq6-wvbxyA

5. Create a New Table: Create the following new tables to add the CSV files to. **Please see the script below to create the tables**. (Note: you must create the tables before uploading the datasets. Do not change the names of the tables you create, otherwise the sample scripts will not run.) 

    a. Windows/macOS: 

    Follow this tutorial to create new tables on DBeaver, this is done on macOS in the video but options should be the same for Windows: 

    https://www.youtube.com/watch?v=ch4h-y_-9u4

6. Right-click on the Table: Once you have your table set up, right-click on it and then choose `Import Data`.

   a. You may need to "refresh" the database so you can see the table.

   b. Right click on the "import data"

7. Choose CSV File: A new window will pop up. Select `CSV` as the source format and browse to find your file. Be sure to upload the corresponding ‘CSV’ file name to the table name. 

   a. Select CSV file

   b. Add the CSV file that corresponds to the table name you created

8. Map Columns: DBeaver will display the columns from the CSV and the table. Make sure they are mapped correctly. You can also specify additional settings like delimiter, quote character, etc.

9. Start the Import: Once you're satisfied with the settings, click `Next` to review, and then `Finish` to start importing the data.

    a. Click "Next" until you get to the confirmation window. 

    b. Then Click "Proceed" to populate the table

    c. If at any point you believe that the data import was wrong in any way, feel free to delete that table from your SQLite DB inside DBeaver and create the table and import the data again.

10. Verify Data: After the import process, refresh your table to see if the data has been successfully imported.

11. Repeat this process until you have created all tables and imported the data for all tables.

12. You may need to clean up the data. To do so, the run statements are at the bottom of this page.

## 💻 Script to Create Tables
```
CREATE TABLE cheese_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);


CREATE TABLE honey_production (
    Year INTEGER,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);


CREATE TABLE milk_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);


CREATE TABLE coffee_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);


CREATE TABLE egg_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

CREATE TABLE state_lookup (
    State TEXT,
    State_ANSI INTEGER
);


CREATE TABLE yogurt_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

```

## 🧹 Clean Up the Data
Once you import the data via the CSV file, you may need to remove the commas from the values to format the data properly. To do so, run the following statement for each table. 

Value format update for the Cheese Production Table

UPDATE cheese_production SET value = REPLACE(value, ',', '');


Value format update for the Honey Production Table

UPDATE honey_production SET value = REPLACE(value, ',', '');


Value format update for the Milk Production Table

UPDATE milk_production SET value = REPLACE(value, ',', '');


Value format update for the Coffee Production Table

UPDATE coffee_production SET value = REPLACE(value, ',', '');


Value format update for the Egg Production Table

UPDATE egg_production SET value = REPLACE(value, ',', '');


Value format update for the Yogurt Production Table

UPDATE yogurt_production SET value = REPLACE(value, ',', '');


