require 'test_helper'

class StudySubitemDecoratorTest < ActiveSupport::TestCase
  def setup
    @study_subitem = StudySubitem.new.extend StudySubitemDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
