class StaticPagesController < ApplicationController
  def home
    @events = Event.all
  end

  def message
  end

  def interview
  end

  def photo
  end

  def join
  end

  def event_manage
    @events = Event.all
  end
end
