class TodoingsController < ApplicationController
before_action :set_todoing, only: [:show, :edit, :update, :destroy]
    def index
      @todoings = current_user.Todoings.all
    end
  
    def show
      @todoing = Todoing.find(params[:id])
    end
  
    def new
      @todoing = current_user.Todoing.build
    end
  
    def create
      @todoing = current_user.Todoing.build(todoing_params)
      if @todoing.save
        redirect_to todoings_path, notice: 'Task successfully created!'
      else
        redirect_to todoings_path, alert: 'Failed to create task!'
      end
    end
  
    def update
      if @todoing.update(todoing_params)
        redirect_to todoing_path(@todoing)
      else
        render :edit
      end
    end
  
    def destroy
      @todoing = Todoing.find(params[:id])
      @todoing.destroy
      redirect_to action: 'index', notice: 'Task secessfully deleted'
    end
  
    private
  
    def todoing_params
      params.require(:todoing).permit(:task)
    end
  end
  