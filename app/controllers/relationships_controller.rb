class RelationshipsController < ApplicationController
  def create
    event = Event.find(params[:joined_id])
    current_user.join(event)
    redirect_to event
  end

  def destroy
    event = Relationship.find(params[:id]).join
    current_user.unjoin(event)
    redirect_to event
  end
end
