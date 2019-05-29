require 'test_helper'

class StudyItemDecoratorTest < ActiveSupport::TestCase
  def setup
    @study_item = StudyItem.new.extend StudyItemDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
