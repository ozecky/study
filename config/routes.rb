Rails.application.routes.draw do
  root 'pages#top'

  get 'pages/study_1'
  get 'pages/study_2'
  get 'pages/study_2_modal'
end
