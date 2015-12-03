class GroupsController < ApplicationController
    def index
        @group = Group.all
    end

    def show
        @group = Group.find(params[:id])
    end

    def create
        @group = Group.new(group_params)

        if @group.save
            redirect_to @group
        else
            render 'new'
        end
    end

    def new
        @group = Group.new
    end

    def join
        @group = Group.find(params[:id])
        # @group.add() // Here we need to add the User's name to the Group.
    end

    private
    def group_params
        params.require(:group).permit(:name)
    end
end
