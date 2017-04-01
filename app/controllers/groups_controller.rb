class GroupsController < ApplicationController

  def index
    @groups = Group.all
    @day = params['day_id']

  end


end
