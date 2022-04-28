#import os
from mysql.connector import Error, connect

#os.chdir(r'C:\Users\kateh\Documents\AB\Assignment 2')

try:
    connection = connect(host='localhost',
                                         database='myhomes_olap',
                                         user='katehk',
                                         password='MistborN48!')
    if connection.is_connected():
        db_Info = connection.get_server_info()
        #print("Connected to MySQL Server version ", db_Info)
        cursor = connection.cursor()
        cursor.execute("select database();")
        record = cursor.fetchone()
        #print("You're connected to database: ", record)

except Error as e:
    print("Error while connecting to MySQL", e)



def show_databases():
    show_db_query = "SHOW DATABASES"
    with connection.cursor() as cursor:
        cursor.execute(show_db_query)
        for db in cursor:
            print(db)
            
#show_databases()


def show_tables():
    show_table_query = "SHOW TABLES"
    with connection.cursor() as cursor:
        cursor.execute(show_table_query)
        for table in cursor:
            print(table)
            
#show_tables()


def describe_table(table):
    show_table_query = "DESCRIBE " + table
    #print(show_table_query)
    with connection.cursor() as cursor:
        cursor.execute(show_table_query)
        result = cursor.fetchall()
        for row in result:
            print(row)
            
#describe_table('properties')


def create_table(create_table_query):
    with connection.cursor() as cursor:
        cursor.execute(create_table_query)
        connection.commit()
        
create_table_query = """
CREATE TABLE properties(
    property_id int AUTO_INCREMENT PRIMARY KEY,
    type varchar(10) NOT NULL,
    details varchar(100),
    date_on_market date NOT NULL,
    date_sold date,
    asking_price double(8,2),
    buyer_offer double(8,2),
    passed_health_safety boolean
)
"""


def alter_table():
    alter_table_query = """
    ALTER TABLE clients
    MODIFY COLUMN mobile varchar(15)
    """
    
    show_table_query = "DESCRIBE employees"
    with connection.cursor() as cursor:
        cursor.execute(alter_table_query)
        cursor.execute(show_table_query)
        # Fetch rows from last executed query
        result = cursor.fetchall()
        print("Movie Table Schema after alteration:")
        for row in result:
            print(row)

#alter_table()


def drop_table(table):
    drop_table_query = "DROP TABLE " + table
    
    with connection.cursor() as cursor:
        cursor.execute(drop_table_query)

#drop_table('properties')

def insert_into_table(insert_query):
    with connection.cursor() as cursor:
        cursor.execute(insert_query)
        connection.commit()

insert_query = """
INSERT INTO clients (first_name, surname, email, mobile)
VALUES
('Daniela','Publia','Daniela.Publia@gmail.com','(272) 543-6572' ),
('David','Bluh','David.Bluh@gmail.com','(937) 471-8782' ),
('Joaquin','Valerio','Joaquin.Valerio@yahoo.com','(708) 339-9279' ),
('Lorcan','Matthew','Lorcan.Matthew@yahoo.com','(331) 338-7844' ),
('Aisling','Wittie','Aisling.Wittie@gmail.com','(222) 957-8069' ),
('Kyle','Raychel','Kyle.Raychel@gmail.com','(224) 574-1498' ),
('Christopher','Constancy','C.Constancy@yahoo.com','(398) 573-2327' ),
('Meadhbh','Sheng','Meadhbh.Sheng@gmail.com','(532) 638-1700' ),
('Kimberley','Noman','Kimberley.Noman@yahoo.com','(522) 534-4213' ),
('Sam','Lay','Sam.Lay@yahoo.com','(753) 245-3260' ),
('Elena','Phaidra','Elena.Phaidra@gmail.com','(453) 272-1240' ),
('Andrea','Chauncey','Andrea.Chauncey@yahoo.com','(570) 520-5354' ),
('Dylan','Uund','Dylan.Uund@gmail.com','(973) 614-9086' ),
('Michelle','Grobe','Michelle.Grobe@yahoo.com','(702) 277-2072' ),
('Alan','Even','Alan.Even@yahoo.com','(753) 245-3260' ),
('Jack','Munn','Jack.Munn@yahoo.com','(222) 957-8069' ),
('Manuel','Lail','Manuel.Lail@gmail.com','(222) 957-8069' ),
('Julia','Mott','Julia.Mott@gmail.com','(222) 957-8069' ),
('Alexa','Franza','Alexa.Franza@yahoo.com','(586) 261-7852' ),
('Elias','Iiette','Elias.Iiette@gmail.com','(367) 293-6401' )
"""



#insert_into_table(insert_query)


def select():
    select_query = """
    SELECT *
    FROM clients
    """

    with connection.cursor() as cursor:
        cursor.execute(select_query)
        for row in cursor.fetchall():
            print(row)

select()

def delete():
    delete_query = """
    DELETE FROM properties
    """
    
    with connection.cursor() as cursor:
        cursor.execute(delete_query)
        connection.commit()


