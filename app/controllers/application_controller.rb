class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  before_action :set_locale

  private

  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    I18n.locale = locale_in_params || locale_in_accept_language || I18n.default_locale
  end

  def locale_in_params
    if params[:locale].present?
      params[:locale].to_sym.presence_in(I18n::available_locales) || I18n.default_locale
    else
      nil
    end
  end

  def locale_in_accept_language
    request.env['HTTP_ACCEPT_LANGUAGE']
        .to_s # nil 対策
        .split(',')
        .map{ |_| _[0..1].to_sym }
        .select { |_| I18n::available_locales.include?(_) }
        .first
  end

end
