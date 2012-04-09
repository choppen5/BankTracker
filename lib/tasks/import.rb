require 'csv'

file = "companies.csv"

CSV.open("companies.csv", :headers => true).each do |row|
    Company.create(:name => row[0],:phone => row[1],:address => row[2],:fax => row[3],:program => row[4])
end
  
