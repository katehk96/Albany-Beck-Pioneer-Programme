""" Script that allows a user to add, cancel, or replace an order"""

import csv
import datetime

stock_list = ['AAPL', 'MSFT', 'GOOG', 'AMZN', 'TSLA', 'FB', 'NVDA', 'JPM', 
              'JNJ','PFE', 'DIS', 'ADBE', 'PEP', 'NKE', 'NFLX', 'VZ', 'PYPL', 
              'MCD', 'AZN', 'UPS', 'SAP', 'SONY', 'SBUX', 'RYA', 'TCO', 'KRZ', 
              'MUFG', 'MRNA', 'UBER', 'FDX']

class ManageOrders:
        
    #Allow user to add an order
    def add_order(self, orders, username):
        #Get user-input details
        stock, q, p, order_type = self.get_details()
        
        #Get status, order_id, date and username
        status = 'New order'
        order_id = int(orders[-1][5]) +1
        order_date = datetime.date.today().strftime('%Y-%m-%d')
        user = username
        
        new_order = [stock, q, p, order_type, status, order_id,
                         order_date, user]
            
        orders.append(new_order)
        print('New order added')
        
        return orders
            
    
    #Allow user to cancel an order made by them
    def cancel_order(self, orders, username):
        #header, orders = read_orders()
            
        order_id = input('Please enter the order ID:\t')
        
        for i in range(len(orders)):
            if orders[i][5] == str(order_id) and orders[i][7] == username:
                orders.pop(i)
                print('Order {} cancelled\n'.format(order_id))
                
            elif orders[i][5] == str(order_id) and orders[i][7] != username:
                print('Order number does not match user')
                
            else:
                pass
        
        return orders
        
    
    #Allow user to replace an order made by them
    def replace_order(self, orders, username):
        order_id = input('Please enter the order ID:\t')
        
        #Check against all orders
        for i in range(len(orders)):
            #If the order ID matches the username, allow them to replace the
            #order
            if orders[i][5] == str(order_id) and orders[i][7] == username:
                stock, q, p, order_type = self.get_details()
                status = 'New order'
                order_date = datetime.date.today().strftime('%Y-%m-%d')
                
                replaced_order = [stock, q, p, order_type, status, order_id, 
                                  order_date, username]
                
                orders[i] = replaced_order
                
            elif orders[i][5] == str(order_id) and orders[i][7] != username:
                print('Order number does not match user')
                
            else:
                pass
            
        print('Order replaced')
        
        return orders
        
    #Update the order csv file with changes made by the user
    def update_orders(self, header, orders):
        with open('orders.csv', 'w', newline='') as csvfile:
            write = csv.writer(csvfile)
            write.writerow(header)
            write.writerows(orders)
            
    
    #Method that asks the user to input details - stock name, quantity, amount
    #and type (buy or sell)
    def get_details(self):
        while True:
            stock = input(str('Stock to order:\t'))
            stock = stock.upper()
            
            if stock in stock_list:
                break
            else:
                print('Invalid stock symbol')
            
        while True:
            quantity = input('Quantity:\t')
            
            try:
                q = int(quantity)
                break
            except ValueError:
                print('Quantity must be an integer')        
        
        while True:
            price = input('Amount offer:\t')
            
            try:
                p = float(price)
                break
            except ValueError:
                print('Price must be a float or integer')
                
        while True:
            order_type = input('BUY or SELL:\t')
            order_type = order_type.upper()
            
            if order_type == 'BUY' or order_type == 'SELL':
                break
            else:
                print('Order type not valid. Please enter BUY or SELL')
                
        return stock, q, p, order_type