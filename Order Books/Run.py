""" Script that imports all other scripts for assignment 1. When run, it first
    asks the user to register and/or log in, and then allows them to view 
    orders, add/cancel/replace orders, view the status of an order, view the
    total trade value for any date, and view their trade history. """

#Set directory
import os
os.chdir(r'C:\Users\kateh\Documents\AB\Python\A1')

#Import all other required scripts
from csv import reader
import KK_A1_login as login
import KK_A1_OrderBooks as OB
import KK_A1_Sort as S
import KK_A1_ManageOrders as MO
import KK_A1_CheckUpdates as CU
import KK_A1_TradeHistory as T
import csv


def runOrders():
    #First ask user to register and /or log in
    username = login.UserLogin().begin()
    
    message = '********MENU******** \n1. View orders\n2. Manage orders\
               \n3. View order status\n4. View total day trade value\
               \n5. View trade history\n6. End programme\n'
    
    try:
        with open('orders.csv', 'r') as read_obj:
            csv_reader = reader(read_obj)
            order_list = list(csv_reader)
        
        orders = order_list[1:] #
        header = order_list[0]
        
        read_obj.close()
    
    except:
        print('Error opening OrderBook file')
        

    
    S.Sort().get_updates(header, orders) #Carries out all possible transactions
    
    #Use a while loop to allow a user to continuously carry out tasks until
    #they close the programme
    while True:
        to_do = input(message)
        
        #View buy or sell orders
        if to_do == '1' or to_do == '1.':
            OB.OrderBooks().view_orders(header, orders)
        
        
       #Manage orders 
        elif to_do == '2' or to_do == '2.':
            
            while True:
                task = input('********Manage Orders********\
                                \n1. Add new order\n2. Cancel order\
                                \n3. Replace order\n4. Exit to Main Menu\n')
                
                if task == '1' or task == '1.':
                    MO.ManageOrders().add_order(orders, username)
                    
                elif task == '2' or task == '2.':
                    MO.ManageOrders().cancel_order(orders, username)
                    
                elif task == '3' or task == '3.':
                    MO.ManageOrders().replace_order(orders, username)
                    
                elif task == '4' or task == '4.': #Go back to main menu
                    MO.ManageOrders().update_orders(header, orders)
                    break
                
                else:
                    print('Please Enter 1, 2, 3 or 4')
            
        
        #Check an order status
        elif to_do == '3' or to_do == '3.':
            CU.CheckUpdates().order_status(username)
            
        
        #Get day total transaction amount
        elif to_do == '4' or to_do == '4.':
            with open('transactions.csv', 'r') as transactions:
                csv_reader = csv.reader(transactions)
                transactions = list(csv_reader)
            T.TradeHistory().total_day_trade(transactions)
        
        
        #View user history
        elif to_do == '5' or to_do == '5.':       
            with open('transactions.csv', 'r') as transactions:
                csv_reader = csv.reader(transactions)
                transactions = list(csv_reader)
            T.TradeHistory().user_history(transactions, username)
            
                
        #End programme
        elif to_do == '6' or to_do == '6.':
            print('\n********Goodbye********')
            break
    
        else:
            print('\nPlease enter a number from 1 to 6')
        
runOrders()
