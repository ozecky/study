class StudyItemsController < ApplicationController
  def edit
    respond_to do |format|
      format.html do
        puts 'format.html'
        render inline: '<h1>inline</h1>'
      end
      format.js do
        puts 'format.js'
      end
      format.json do
        puts 'format.json'
      end
    end
  end
end
