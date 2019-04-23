class ChangeCodeDataType < ActiveRecord::Migration[5.1]
  def change
    say 'codeをcode_noにカラム名を変更し、integerに変更、null:falseに設定'

    rename_column :study_items, :code, :code_no
    rename_column :study_subitems, :code, :code_no

    say 'change_columnはreversibleではないのでreversibleを使用する必要あり'
    reversible do |dir|
      dir.up do
        say 'up時の処理 string=>integer'
        change_column :study_items, :code_no, :integer
        change_column :study_subitems, :code_no, :integer
      end
      dir.down do
        say 'down時の処理 integer=>string'
        change_column :study_items, :code_no, :string
        change_column :study_subitems, :code_no, :string
      end
    end

    say 'null:true<=>falseはchange_column_nullを使用'
    change_column_null :study_items, :code_no, false
    change_column_null :study_subitems, :code_no, false
  end
end
