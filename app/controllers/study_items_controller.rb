class StudyItemsController < ApplicationController
  def edit
    respond_to do |format|
      format.html do
        puts 'format.html'
      end
      format.js do
        puts 'format.js'
      end
      format.json do
        puts 'format.json'
      end
      format.csv do
        puts 'format.csv'
      end
    end
  end
end
