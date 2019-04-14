class AddReferenceToStudyItems < ActiveRecord::Migration[5.1]
  def change
    say 'study_itemsとstudy_itemsをreference結合'
    say 'null:falseにするとエラーがでるので一旦null許可'
    add_reference :study_items, :study_subitem, index: true, foreign_key: true

    say 'change内に部分的にreversibleでない処理を挟む場合はreversibeを使用する'
    reversible do |dir|
      dir.up do
        say 'upの時のみこのスクリプトが実行される'
        study_subitems = StudySubitem.all.to_a
        StudyItem.all.each_with_index do |study_item, index|
          study_item.update!(study_subitem_id: study_subitems[index].id)
        end
      end
      dir.down do
        say 'downの時のみこのコメントが表示される'
      end
    end
    say 'データを満たした後でnull:falseに設定'
    say_with_time 'コメントだけでなく経過時間も表示される' do
      change_column_null :study_items, :study_subitem_id, false
    end
  end
end
