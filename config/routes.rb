Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ja/ do
    root 'pages#top'

    get 'pages/study_1'
    get 'pages/study_2'
    get 'pages/study_2_modal'
    get 'pages/study_3'
    get 'pages/study_4'
    get 'pages/study_5'
    get 'pages/study_7'
    get 'pages/study_8'
    resources :study_items, only: [:index, :new, :edit, :create, :update, :destroy]
  end
end
