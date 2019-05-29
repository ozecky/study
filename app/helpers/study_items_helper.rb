module StudyItemsHelper
  def to_date_text(datetime)
    return '' if datetime.blank?
    datetime.localtime.strftime('%Y/%m/%d')
  end

  def study_sub_item_options
    StudySubitem.all.map do |study_subitem|
      study_subitem = ActiveDecorator::Decorator.instance.decorate(study_subitem)
      [study_subitem.full_name, study_subitem.id]
    end
  end
end
