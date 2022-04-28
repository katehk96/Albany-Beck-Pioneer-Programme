""" Script that returns the total trade value for a particular day and returns
    a user's trade history """

from datetime import datetime

class TradeHistory:
    
    def __init__(self):
        pass
    
    #Searches transactions for an inputted date and sums the total amount 
    #traded
    def total_day_trade(self, transactions):
        day_total_trade = 0
        
        while True:
            user_date = input('What date would you like to check?\
                                  \nPlease enter date in YYYY-MM-DD format\n')
            
            
            #Check that date is inputted in correct format
            try:
                user_date = datetime.strptime(user_date, '%Y-%m-%d').date()
            
                for i in range(len(transactions)):
                    if transactions[i][3] == str(user_date):
                        day_total_trade += float(transactions[i][2])
                    else:
                        pass
                
                print('\nTotal trade amount for date {}: \t€'.format(user_date), 
                      day_total_trade)
                
                break
            
            except ValueError:
                print('\nInvalid date format')
        
    
    #Search transaction list for all instances of the given username and return
    #all user transactions
    def user_history(self, transactions, username):
        user_hist = []
        
        for i in range(len(transactions)):
            #Search for username in both buyer and seller ID columns
            if transactions[i][4] == username or transactions[i][5] == username:
                user_hist.append(transactions[i])
                
        user_hist.sort(key = lambda x: x[3])
        
        print(transactions[0])
        list(map(lambda x: print(x), user_hist))
