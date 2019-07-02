class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  class << self
    alias_method :i18n, :human_attribute_name

    def i18n_name(options = {})
      model_name.human(options)
    end
  end
end
