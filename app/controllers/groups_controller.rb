class GroupsController < ApplicationController
    def index
        @group = Group.all
        @user = current_user
    end

    def show
        @group = Group.find(params[:id])
    end

    def create
        @group = Group.new(group_params)
        @group.owner = current_user.name

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

    def update
        @group = Group.find(params[:id])
        @user = current_user
        current_user.group = @group
        current_user.save
        redirect_to @group
    end

    def delete
        current_user.group.destroy
    end

    private
    def group_params
        params.require(:group).permit(:name)
    end
end