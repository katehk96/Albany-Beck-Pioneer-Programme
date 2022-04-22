"""This script contains a class that allows a user to register or login"""

import csv

#Read in list of user logins
try:
    with open(r'users.csv', 'r') as read_obj:
        csv_reader = csv.reader(read_obj)
        user_details = list(csv_reader)
    
    read_obj.close()
    
except:
    print('Error opening user file')


class UserLogin:
    def __init__(self):
        pass

    def register(self):
        #While loop to keep asking the user to select a username until one is
        #chosen that doesn't already exist
        while True:
            username= input('Please select username: ')
                
            #If the username already exists, get user to choose another
            if any(username in sublist for sublist in user_details):
                print('\nUsername already exists')
            
            #Once they have chosen an non-existent username, create password
            #and update the user details file
            else:
                password = input('Please enter password: ')
                new_user = [username, password]
                user_details.append(new_user)
                
                with open(r'users.csv', 'w', newline='') as csvfile:
                    writer = csv.writer(csvfile)
                    writer.writerows(user_details)
                    
                csvfile.close()
                
                break
            
    
    
    def login(self):
        #Use while loop to keep trying until the username-password pair are correct
        print('\n********Log in********')
        while True:
            username = input('Please enter username: ')
            password = input('Please enter password: ')
            
            details = [username, password]
            
            if details in user_details:
                print('\n********Logging in********')
                break
            
            else:
                print('\nInvalid username or password')
                
        return username
    
    
    #begin() asks the user if they are registered then calls either register() 
    #or login()
    def begin(self):
        username = '' #Set as empty string until login details are entered
        
        while True:
            message = input('Are you registered? Answer Y/N\n')
            
            if message == 'Y' or message == 'y':
                username = self.login()
                break
                
            elif message == 'N' or message == 'n':
                self.register()
                username = self.login()
                break
            
            else:
                print('Please enter Y or N')

            
        return username