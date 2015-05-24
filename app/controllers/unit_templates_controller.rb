class UnitTemplatesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_unit_template, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @unit_templates = UnitTemplate.all
    respond_with(@unit_templates)
  end

  def show
    respond_with(@unit_template)
  end

  def new
    @unit_template = UnitTemplate.new
    respond_with(@unit_template)
  end

  def edit
  end

  def create
    @unit_template = UnitTemplate.new(unit_template_params)
    @unit_template.save
    respond_with(@unit_template)
  end

  def update
    @unit_template.update(unit_template_params)
    respond_with(@unit_template)
  end

  def destroy
    @unit_template.destroy
    respond_with(@unit_template)
  end

  private
    def set_unit_template
      @unit_template = UnitTemplate.find(params[:id])
    end

    def unit_template_params
      params.require(:unit_template).permit(:offer_id, :price, :duration, :max_students, :unit_interval, :lesson_interval)
    end
end
