""" Script to execute trade matches. First, the orders will be sorted by stock
    name and price. When all_trades() is called it will iterate through the buy
    and sell order lists, check all matches for quantities to be bought and
    sold and check that the buyer price is the total sale price (stock price
    plus fee). If all conditions are met, the trade will be executed and added
    to a transactions csv file."""

import KK_A1_OrderBooks as OB
import KK_A1_Exchange as E
import csv

with open('orders.csv', 'r') as read_obj:
    csv_reader = csv.reader(read_obj)
    order_list = list(csv_reader)

order_updated = order_list[1:]
header = order_list[0]

class Sort:
    def __init__(self):
        pass
    
    #Return lists of all buy orders and all sell orders
    def get_all_order_books(self, orders):
        buy, sell = OB.OrderBooks().get_all_orders(orders)
        
        return buy, sell
        
        
    #Sort the buy and sell order books by stock name and price
    def sort_all_by_price(self, orders):
        buy, sell = self.get_all_order_books(orders)

        #Make sure the prices are in integers
        #Int was used for ease, but this can be changed to float
        for i in range(len(buy)):
            buy[i][2] = int(buy[i][2])
            
        for i in range(len(sell)):
            sell[i][2] = int(sell[i][2])
        
        #Sort by stock and price
        buy.sort(key = lambda x: (x[0], -x[2]))
        sell.sort(key = lambda x: (x[0], x[2]))
        
        return buy, sell
    
    
    #Check how much stock can be traded - this quantity will be used to
    #determine the fee to be charged
    def check_quantity(self, b, s):
        buy_quantity = int(b[1])
        sell_quantity = int(s[1])
        
        order_quantity = abs(buy_quantity-sell_quantity) 
        
        return order_quantity
    
    
    #Update the order status for buy and sell orders
    def update_order_status(self, buy_order, sell_order):
        buy_order[1] = int(buy_order[1])
        sell_order[1] = int(sell_order[1])
        
        buy_status = ''
        sell_status = ''
        
        #If buy order quantity is larger than sell order quantity, the buy
        #order will be partially filled and the sell order will be completed
        if buy_order[1] > sell_order[1]:
            buy_order[1] -= sell_order[1]
            sell_order[1] = 0

            buy_status = 'Partially filled'
            sell_status = 'Order complete'
        
        #If sell order quantity is larger than buy order quantity, the sell
        #order will be partially filled and the buy order will be completed
        elif buy_order[1] < sell_order[1]:
            buy_order[1] = 0
            sell_order[1] -= buy_order[1]

            buy_status = 'Order complete'
            sell_status = 'Partially filled'
        
        #If the quantites are equal, both orders will be completed
        elif buy_order[1] == sell_order[1]:
            buy_order[1] = 0
            sell_order[1] = 0
            
            buy_status = 'Order complete'
            sell_status = 'Order complete'
            
        return buy_order, sell_order, buy_status, sell_status
    
    
    #Iterate through all orders and execute all possible trades
    def all_trades(self, orders):
        all_buy, all_sell = self.sort_all_by_price(orders)
        
        transactions_header = ['Stock', 'Quantity Traded', 'Sale Cost', 
                                'Date', 'Buyer ID', 'Seller ID']
        transactions = []
        
        
        #Iterate through list of all BUY orders
        for i in range(len(all_buy)):
            
            #Iterate through list of all SELL orders
            for j in range(len(all_sell)):
                
                #If the stock name is the same, check the difference in quantities
                if all_buy[i][0] == all_sell[j][0]:
                   
                    buy_order = all_buy[i]
                    sell_order = all_sell[j]
                    
                    quantity = self.check_quantity(buy_order, sell_order)
                    
                    
                    #Get the fee for the amount of stock that can be traded
                    fee = E.Exchange().fee_ladder(quantity)

                    
                    #Get the total sale price of the stock including the fee
                    total_price = int(sell_order[2]) + int(sell_order[2])*fee
                    #print(total_price)
                    #print()
                    
                    #If both order quantities are above 0, the buy amount is 
                    #greater than the total sell price, and the username is
                    #not the same, execute the trade
                    if buy_order[1]!=0 and sell_order[1]!=0 and buy_order[2] >= total_price and buy_order[7]!=sell_order[7]:
                        buy_order, sell_order, buy_status, sell_status = self.update_order_status(buy_order, sell_order)
                        
                        transaction_date = min([buy_order[6], sell_order[6]])
                        
                        transactions.append([buy_order[0], quantity, 
                                             total_price, transaction_date,
                                             buy_order[7], sell_order[7]])
                        
                        all_buy[i] = buy_order
                        all_sell[j] = sell_order
                        
                        all_buy[i][4] = buy_status
                        all_sell[j][4] = sell_status
                        
                    else:
                        pass
                    
        #Write all transactions to a csv file
        with open('transactions.csv', 'w', newline='') as transactions_file:
            write = csv.writer(transactions_file)
            write.writerow(transactions_header)
            write.writerows(transactions)
            
            return transactions, all_buy, all_sell
        
    
    #Write all orders to an updated file after all possible transactions have
    #been carried out
    def get_updates(self, header, orders_updated):
        transactions, all_buy, all_sell = self.all_trades(orders_updated)
        
        all_buy.extend(all_sell)
        
        with open('orders.csv', 'w', newline='') as update_orders:
            write = csv.writer(update_orders)
            write.writerow(header)
            write.writerows(all_buy)
