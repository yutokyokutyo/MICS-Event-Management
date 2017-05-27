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
end
