class TodoingsController < ApplicationController
    def index
      @todoings = Todoing.all
    end
  
    def show
      @todoing = Todoing.find(params[:id])
    end
  
    def new
      @todoing = Todoing.new
    end
  
    def create
      @todoing = Todoing.new(todoing_params)
      if @todoing.save
        redirect_to todoings_path, notice: 'Task successfully created!'
      else
        redirect_to todoings_path, alert: 'Failed to create task!'
      end
    end
  
    def update; end
  
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
  