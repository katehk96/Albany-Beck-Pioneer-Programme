""" Script to determine the fee to be charged for an order """

class Exchange:
    def __init__(self):
        pass
    
    #Check the quantity of stock to be bought/sold and return a fee percentage
    #based on that - with larger orders having lower fees
    def fee_ladder(self, order_quantity):
        fee_percentage = 0
        
        if order_quantity < 25:
            fee_percentage = 0.4
            
        elif 25 <= order_quantity < 50:
            fee_percentage = 0.3
            
        elif 50 <= order_quantity < 75:
            fee_percentage = 0.2
            
        elif order_quantity >= 75:
            fee_percentage = 0.1
            
        return fee_percentage
