class StudyItemsController < ApplicationController
  before_action :set_study_item, only: [:edit, :update, :destroy]
  def index
    set_study_items
  end

  def new
    @study_item = StudyItem.new
  end

  def edit

  end

  def create
    StudyItem.transaction do
      StudyItem.create!(study_item_create_params)
    end
    @message = { notice: t('.prompt.notice') }
  rescue => e
    @message = { alert: t('.prompt.alert', error: e.message) }
  ensure
    set_study_items
    render 'study_items/update'
  end

  def update
    StudyItem.transaction do
      @study_item.update!(study_item_update_params)
    end
    @message = { notice: t('.prompt.notice') }
  rescue => e
    @message = { alert: t('.prompt.alert', error: e.message) }
  ensure
    set_study_items
    render 'study_items/update'
  end

  def destroy
    StudyItem.transaction do
      @study_item.destroy!
    end
    @message = { notice: t('.prompt.notice') }
  rescue => e
    @message = { alert: t('.prompt.alert', error: e.message) }
  ensure
    set_study_items
    render 'study_items/update'
  end

  private

  def set_study_items
    @study_items = StudyItem.list
  end

  def set_study_item
    @study_item = StudyItem.find(params[:id])
  end

  def study_item_create_params
    params.require(:study_item).permit(:name, :code_no)
  end

  def study_item_update_params
    params.require(:study_item).permit(:name, :code_no)
  end
end
