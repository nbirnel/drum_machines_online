# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
@seeds = "#{Rails.root}/public/seed_data"
CSV.foreach("#{@seeds}/notes.csv", :headers => true) do |row|
  Note.create!(row.to_hash)
end
