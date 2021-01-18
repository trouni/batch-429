require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'

# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

# beers = []

# CSV.foreach(filepath, csv_options) do |row|
#   # p row
#   beers << {
#     name: row['Name'],
#     appearance: row['Appearance'],
#     origin: row['Origin']
#   }
# end

# p beers
csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Guinness', 'Stout', 'Ireland']
  csv << ['Chimay', 'White', 'Belgium']
  # ...
end