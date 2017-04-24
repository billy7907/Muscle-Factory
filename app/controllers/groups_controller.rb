class GroupsController < ApplicationController

  def index
    @groups = Group.all
    @day = params['day_id']

    render :index, layout: false
  end

end
