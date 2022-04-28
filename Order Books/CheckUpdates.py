"""Script to allow the user to check the status of an order """
import csv

class CheckUpdates:
    
    def order_status(self, username):
        with open('orders.csv', 'r') as status:
            csv_reader = csv.reader(status)
            updated_orders = list(csv_reader)
            
        order_id = input('\nPlease enter the order ID to check\n')
        order_status = []
        
        #Iterate through all updated orders
        for i in range(len(updated_orders)):
            
            #If the username and order ID match, append to order_status
            if updated_orders[i][5] == order_id and updated_orders[i][7] == username:
                order_status.append(updated_orders[i])
            
            else:
                pass
                
        #If order status is empty, print error message. Else, print information
        #for the order
        if len(order_status) == 1:
            print(updated_orders[0])
            print(order_status[0])
        else:
            print('No order for {} with order ID {}'.format(username, order_id))
