namespace :db do
  namespace :populate do
    task study_3: :environment do
      make_study_3
    end
  end
end

def make_study_3
  ApplicationRecord.transaction do
    StudyItem.create!(name: 'item_1', code: '1234')
    StudyItem.create!(name: 'item_2', code: '2345')
    StudySubitem.create!(name: 'subitem_1', code: '9999')
    StudySubitem.create!(name: 'subitem_2', code: '8888')
  end
  puts "[POPULATE] done! #{__method__}"
rescue => e
  puts e.message
  puts e.backtrace.join("\n")
end