class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:id])
    binding.pry
    if @event.save
      flash[:success] = "イベントを作成しました😆"
      redirect_to root_url
    else
      render 'new'
    end
  end
end
