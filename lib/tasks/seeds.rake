require 'csv'

namespace :seeds do
  @seeds = "#{Rails.root}/public/seed_data"
  task :notes => :environment do
    desc "Import Notes" 
    CSV.foreach("#{@seeds}/notes.csv", :headers => true) do |row|
      Note.create!(row.to_hash)
    end
  end
end
