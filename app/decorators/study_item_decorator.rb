class StudyItemDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def created_at_text
    h.to_date_text(created_at)
  end

  def code_badge_html
    "<span class='badge badge-secondary'>#{code_no}</span>"
  end

  def self.hello
    'aa'
  end


end
