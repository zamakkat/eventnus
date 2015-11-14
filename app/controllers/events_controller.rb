class EventsController < ApplicationController
  load_and_authorize_resource param_method: :model_params

  def index
    @events = @events.order(created_at: :desc).page(params[:page])
  end

  def new
  end

  def create
    if @event.save
      redirect_to @event, notice: "#{Event.model_name.human} was successfully created."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @event.update(model_params)
      redirect_to @event, notice: "#{Event.model_name.human} was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: "#{Event.model_name.human} was successfully destroyed"
  end

  private

    def model_params
      params.require(:event).permit(:name, :venue, :date, :start_time, :end_time, :url, :details)
    end
end
