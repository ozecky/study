Rails.application.routes.draw do
  root 'pages#top'

  get 'pages/study_1'
  get 'pages/study_2'
  get 'pages/study_2_modal'
  get 'pages/study_3'
  get 'pages/study_4'
  get 'pages/study_5'
  get 'pages/study_7'
  resources :study_items, only: [:index, :edit, :update, :destroy]
end
