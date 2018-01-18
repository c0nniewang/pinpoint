class Api::V1::ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    render json: @activities
  end

  def create
    activity = Activity.create(activity_params)
    render json: activity
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    if @activity.save
      render json: @activity
    else
      render json: {errors: @activity.errors.full_messages}, status: 422
    end
  end

  private
  def activity_params
    params.permit(:name, :description, :lat, :long, :completed, :user_id, :category_id)
  end

end
