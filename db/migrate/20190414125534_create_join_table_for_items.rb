class CreateJoinTableForItems < ActiveRecord::Migration[5.1]
  def change
    say '中間テーブルを定義してstudy_itemsとstudy_sub_itemsを多対多に変更'

    create_join_table :study_items, :study_subitems do |t|
      t.index [:study_item_id, :study_subitem_id]
      t.index [:study_subitem_id, :study_item_id]
    end

    say 'change内に部分的にreversibleでない処理を挟む場合はreversibeを使用'
    reversible do |dir|
      dir.up do
        say 'upの時のみこのスクリプトが実行される'
        StudyItem.all.each do |study_item|
          StudyItemsSubitem.create!(
              study_item_id: study_item.id, study_subitem_id: study_item.study_subitem_id)
        end
        say '旧reference削除'
        remove_reference :study_items, :study_subitem, index: true, foreign_key: true, null: false
      end
      dir.down do
        say 'downの時のみこのスクリプトが実行される'
        say '旧reference復活'
        add_reference :study_items, :study_subitem, index: true, foreign_key: true
        StudyItemsSubitem.all.each do |study_items_subitem|
          StudyItem.find(study_items_subitem.study_item_id).update!(
              study_subitem_id: study_items_subitem.study_subitem_id)
        end
        change_column_null :study_items, :study_subitem_id, false
      end
    end
  end
end
