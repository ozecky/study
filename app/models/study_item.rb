class StudyItem < ApplicationRecord
  has_many :study_items_subitems, dependent: :destroy
  has_many :study_subitems, through: :study_items_subitems


  # default_scope { where('code_no > ?', 2000) }

  scope :upper_2000, -> { where('code_no > ?', 2000) }
  scope :upper_3000, -> { where('code_no > ?', 3000) }
  scope :upper, -> (threshold) { where('code_no > ?', threshold) }
  scope :upper_even, -> (threshold) { where('code_no > ?', threshold) if threshold % 2 == 0 }

  def self.list
    StudyItemDecorator.decorate_collection(StudyItem.all)
  end
end
