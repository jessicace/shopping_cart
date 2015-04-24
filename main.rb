require 'rubygems'
require 'pg'
require './classes/database.rb'
require './classes/product.rb'
require './classes/transaction.rb'

Database.connection( dbname: 'supermart' )

puts Product.all

puts Product.read(1)

puts Transaction.all

puts Transaction.create
