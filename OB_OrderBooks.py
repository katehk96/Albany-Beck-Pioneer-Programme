""" This script contains a class OrderBooks which, when called, allows a user
    to view buy or sell orders for a particular stock, and add, cancel, or 
    replace orders."""

stocks = ['AAPL', 'MSFT', 'GOOG', 'AMZN', 'TSLA', 'FB', 'NVDA', 'JPM', 'JNJ',
         'PFE', 'DIS', 'ADBE', 'PEP', 'NKE', 'NFLX', 'VZ', 'PYPL', 'MCD', 
         'AZN', 'UPS', 'SAP', 'SONY', 'SBUX', 'RYA', 'TCO', 'KRZ', 'MUFG', 
         'MRNA', 'UBER', 'FDX']

class OrderBooks:
    def __init__(self):
        pass

    #Return list of all buy orders for stock entered by user
    def view_buy_orders(self, stock_name, orders):
        buy = []
        
        for i in range(len(orders)):
            
            if orders[i][3] == 'BUY' and orders[i][0] == stock_name:
                buy.append(orders[i])
            else:
                pass
        
        return(buy)
            
    
    #Return list of all sell orders for stock entered by user
    def view_sell_orders(self, stock_name, orders):
        sell = []
        
        for i in range(len(orders)):

            if orders[i][3] == 'SELL' and orders[i][0] == stock_name:
                sell.append(orders[i])
            else:
                pass
            
        return(sell)
    
    
    #Return list of all orders for stock entered by user
    def get_all_orders(self, orders):
        all_buy = []
        all_sell = []
        
        for i in range(len(orders)):
            if orders[i][3] == 'BUY':
                all_buy.append(orders[i])
            
            elif orders[i][3] == 'SELL':
                all_sell.append(orders[i])
            else:
                pass
        
        return(all_buy, all_sell)
    
    
    #Asks user to input stock name and type of order they want to see, then
    #calls relevant method and returns the list of orders with those conditions
    def view_orders(self, header, orders):
        stock_name = ''
        while True:
            message = input('What stock would you like to view?\n')
            message = message.upper()
            if message in stocks:
                stock_name = message
                break
            else:
                print('Stock symbol invalid')
            
        type_to_view = input('What order type would you like to view? BUY/SELL/BOTH\n')
        
        if type_to_view == 'BUY' or type_to_view == 'buy':
            print('\nBuy orders for {}:\n'.format(stock_name))
            print(header) #Cotains column names
            
            #Iterate over list and print for readability
            list(map(lambda x: print(x), self.view_buy_orders(stock_name, orders)))

        elif type_to_view == 'SELL' or type_to_view == 'sell':
            print('\nSell orders for {}:\n'.format(stock_name))
            print(header)
            
            list(map(lambda x: print(x), self.view_sell_orders(stock_name, orders)))
            
        elif type_to_view == 'BOTH' or type_to_view == 'both':
            print('\nBuy orders for {}:'.format(stock_name))
            print(header)
            
            list(map(lambda x: print(x), self.view_buy_orders(stock_name, orders)))
            
            print('\nSell orders for {}:\n'.format(stock_name))
            print(header)
            
            list(map(lambda x: print(x), self.view_sell_orders(stock_name, orders)))
        
        else:
            print('Please type "BUY" or "SELL"')
    
    
    #Returns separate buy and sell order books for a particular stock
    def get_order_book(self):
        stock_name = input('What stock would you like to view?\n')
        
        buy = self.view_buy_orders(stock_name)
        sell = self.view_sell_orders(stock_name)
        
        return buy, sell