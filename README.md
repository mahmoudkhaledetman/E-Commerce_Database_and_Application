# E-Commerce_Database_and_Application
# ITI-Graduation-Project
Implemented a database for e-commerce from scratch,Created data pipelines to load the data
into the data warehouse, extracted useful information by applying different business intelligence solutions, and deployed machine learning models to predict profits.
## project Steps
- Database Design
  - Designed and created an Entity-Relationship (ER) Diagram and mapping to model the database. 
  - Implemented a database using Microsoft SQL Server and added stored procedures, views, functions, and triggers to ensure data consistency and integrity.
- Stored Procedures
  - created 24 stored procedures that allow customers to view and search for products, place orders, and perform other actions. Additionally, business analysts can use     the procedures to view key performance indicators (KPIs) such as sales and profits.
- Data warehouse Design
  - Designed and Implemented a star schema data warehouse in sql server
  - Created data pipelines to load the data into the data warehouse 
-  created a data cube to make it easier for online analytical processing (OLAP) tools to perform analyses quickly and efficiently.
- designed Ad hoc reports to make it easy to garner insights on the fly.
- created interactive dashboards
-  Developed a Python-based desktop application to allow users to register, log in, view products, place orders, and more.
- deployed a machine learning model on a small website 
## Technical Details
- he database and data warehouse were developed on SQL Server 
- The data pipelines for ETL were implemented using SSIS. 
- the OLAP cube and reports are created using SSAS and SSRS 
- the dashboards of all aspects of the database entities are created using power bi  
    ⭐ **Hint** you can see the dashboards deployed on Novypro's website from here -> [LINK](https://www.novypro.com/profile_projects/mahmoud-etman)
- The desktop application uses two libraries: 
  - one to connect to the SQL Server called pyodbc 
  - the other to create the GUI called PyQt5.
  - Through the app, customers can register, log in, place orders, view and search for products, and access their order history.
- implemented machine learning models( LinearRegression - KNeighborsRegressor - SVR - DecisionTreeRegressor - RandomForestRegressor ) using scikit learn
- The Streamlit library was used to deploy the machine learning model.
## Demo
- implemented the database,After mapping the ER diagram.
![image](https://user-images.githubusercontent.com/82019926/219908648-b7c18380-afbd-4b06-b57b-316abfc096f9.png)
- Here is an example of a data pipeline that we built, which loads the data into the product dimension in the data warehouse.
![image](https://user-images.githubusercontent.com/82019926/218820861-7b026b65-fbf0-415b-bcc5-f01a109fe6d7.png)
- completed loading all dimensions into the data warehouse, and now the entire structure is in place.
![image](https://user-images.githubusercontent.com/82019926/219908370-ee09bcbe-b4af-41d2-8057-b1179f8adae8.png)
- one of the reports we designed. It shows the sales of each product for every month.
 ![image](https://user-images.githubusercontent.com/82019926/218823344-d4b50612-c8e9-4120-8366-62ff6c55582d.png)
- one of the Power BI dashboards we designed, which displays the analysis of orders. 
![image](https://user-images.githubusercontent.com/82019926/218824598-85d7a28c-3883-4191-974b-938589ad0421.png)

- finally you can see on minute video preview on  -> [LINK](https://drive.google.com/file/d/1iZ17S8rBoyA0P6otubjZtH-4-A5NZUnG/view)

