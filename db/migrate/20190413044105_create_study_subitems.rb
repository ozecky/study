class CreateStudySubitems < ActiveRecord::Migration[5.1]
  def change
    say 'study_subitems作成'
    create_table :study_subitems do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
