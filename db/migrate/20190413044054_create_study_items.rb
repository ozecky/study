class CreateStudyItems < ActiveRecord::Migration[5.1]
  def change
    say 'study_items作成'
    create_table :study_items do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
