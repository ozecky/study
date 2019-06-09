class StudyItemsSubitem < ApplicationRecord
  belongs_to :study_item
  belongs_to :study_subitem
end