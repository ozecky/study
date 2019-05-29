module StudyItemDecorator
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
