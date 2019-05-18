require 'csv'

csv_str = CSV.generate do |csv|
  csv << ['format', 'csv']
end
