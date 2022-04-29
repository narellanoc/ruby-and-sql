# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
puts "There are #{Salesperson.all.count} sales people."

new_salesperon1 = Salesperson.new
new_salesperon1["first_name"] = "Max"
new_salesperon1["last_name"] = "Garcia"
new_salesperon1["email"] = "mgarcia@gmail.com"
new_salesperon1.save

new_salesperon2 = Salesperson.new
new_salesperon2["first_name"] = "Juan"
new_salesperon2["last_name"] = "Puga"
new_salesperon2["email"] = "jpuga@gmail.com"
new_salesperon2.save

new_salesperon3 = Salesperson.new
new_salesperon3["first_name"] = "Nicolas"
new_salesperon3["last_name"] = "Arellano"
new_salesperon3["email"] = "narellano@gmail.com"
new_salesperon3.save

puts "There are #{Salesperson.all.count} sales people."
# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
# jpuga = Salesperson.find_by({"first_name"=>"Juan","last_name" => "Puga"})
# jpuga["email"] = "gpuga@gmail.com"
# jpuga.save


# CHALLENGE:
# 5. write code to display each salesperson's full name

all_salespeople = Salesperson.all
for salesperson in all_salespeople
    puts "#{salesperson["first_name"]} #{salesperson["last_name"]}"
end
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
