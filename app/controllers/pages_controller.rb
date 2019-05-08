class PagesController < ApplicationController
  def top
  end

  def study_1
  end

  def study_2
  end

  def study_3
  end

  def study_5
    @study_items = StudyItem.all
  end
end
