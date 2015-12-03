class GroupsController < ApplicationController
  def index
  end
  def show
    @group = Group.find(params[:id])
  end
  def create
    @group = Group.new(group_params)
    
    if @group.save
      current_user.group = @group
      current_user.save
      redirect_to @group
    else
      render 'new'
    end
  end
  def new
    @group = Group.new
  end
  private
  def group_params
    params.require(:group).permit(:name)
  end
end
