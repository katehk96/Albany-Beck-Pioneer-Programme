""" Script to plot associations between the MyHomes data"""

import datetime
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
from mysql.connector import Error, connect

#Connect to the data warehouse
try:
    connection = connect(host='localhost',
                                         database='myhomes_dwh',
                                         user='katehk',
                                         password='MistborN48!')
    if connection.is_connected():
        db_Info = connection.get_server_info()
        print("Connected to MySQL Server version ", db_Info)
        cursor = connection.cursor()
        cursor.execute("select database();")
        record = cursor.fetchone()
        print("You're connected to database: ", record)
        
        #Import tables as dataframes
        get_sales = "Select * from sales;"
        sales_df = pd.read_sql(get_sales, connection)
        
        get_emps = "Select * from employees;"
        emp_df = pd.read_sql(get_emps, connection)
        emp_df = emp_df.set_index('emp_id')
        
        get_props = "Select * from properties;"
        prop_df = pd.read_sql(get_props, connection)
        prop_df = prop_df.set_index('property_id')
        
        print('Collected data from database')
except Error as e:
    print("Error while connecting to MySQL", e)
    
finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed")


#*******************************CREATE PLOTS**********************************

#Create pie chart of the gender ratios
female = emp_df.groupby('gender').size()[0]
male = emp_df.groupby('gender').size()[1]

gender_ratio = [male, female]
gender_labels = ['Male', 'Female']

fig1 = plt.figure(figsize =(10, 7))
plt.pie(gender_ratio, labels = gender_labels, startangle = 90,
        colors = ['mediumseagreen', 'plum'], autopct='%1.1f%%',)
plt.title('Gender Ratio of MyHomes Employees', fontsize=20)
plt.show()



#Create a pie chart showing the ratio of property types
types = prop_df.groupby('type').size().tolist()
types_labels = ['Apartment', 'Bungalow', 'Commercial', 'House', 'Land']

fig2 = plt.figure(figsize=(10,7))
plt.pie(types, labels = types_labels, startangle = 90, autopct='%1.1f%%',
        colors = ['skyblue', 'orchid', 'springgreen', 'lightcoral', 'indigo'])
plt.title('Percentages of Properties by Type', fontsize=20)
plt.show()



#Create bar graph of the sales in each country
country_sales = prop_df.groupby('country').size()
country_labels = ['Ireland', 'Spain', 'United Kingdom']

x = range(len(country_sales))
print(x)

fig3, ax = plt.subplots(figsize=(10,7))
plt.bar(x, country_sales, tick_label = country_labels, width=0.5, color = 'teal')
ax.set_xlabel('Countries', fontsize=15)
ax.set_ylabel('Properties Sold', fontsize=15)
ax.set_title('Total No. of Properties Sold in Each Country', fontsize=20)
plt.show()



#Create bar graphs for avg sales per area
ire_areas = np.array([100, 101, 102, 103])
ireland = sales_df.loc[sales_df['area_id'].isin(ire_areas)]

uk_areas = np.array([200, 201, 202, 203])
uk = sales_df.loc[sales_df['area_id'].isin(uk_areas)]

spain_areas = np.array([300, 301, 302, 303])
spain = sales_df.loc[sales_df['area_id'].isin(spain_areas)]


fig4, (ax1, ax2, ax3) = plt.subplots(1,3, figsize=(12,5), sharey=True)
fig4.suptitle('Average Sales Per Area', fontsize=20)
fig4.text(0.52, 0.01, 'Areas', va='center', ha='center', fontsize=15)
fig4.text(0.04, 0.5, 'Average Sales', va='center', ha='center', 
          rotation='vertical', fontsize=15)

ax1.bar(ire_areas, ireland['avg_area_sales'], color = 'forestgreen')
ax2.bar(uk_areas, uk['avg_area_sales'], color = 'darkcyan')
ax3.bar(spain_areas, spain['avg_area_sales'], color='crimson')

ax1.set_xlabel('Ireland')
ax2.set_xlabel('UK')
ax3.set_xlabel('Spain')



#Create scatter plot of the total number of sales per year
dates = prop_df['date_sold'].tolist()
all_years = [year for year in range(2000, 2022, 2)]
years = []
f = '%Y-%m-%d'


for i in range(len(dates)):
    y = dates[i].year
    years.append(y)


values, counts = np.unique(years, return_counts=True)

fig5, ax5 = plt.subplots(figsize=(10,7))
plt.scatter(values, counts)
ax5.set_xlabel('Year', fontsize=15)
ax5.set_ylabel('Amount Sold', fontsize=15)
ax5.set_title('Number of Properties Sold Per Year', fontsize=20)
plt.xticks(all_years, rotation = 45)