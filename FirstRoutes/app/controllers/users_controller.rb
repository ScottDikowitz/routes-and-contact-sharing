class UsersController < ApplicationController

  def index
    # render text: "I'm in the index action!"
    # render json: params[:id]

    render json: User.all
  end

  def show
    render json: params
  end

  def create
    render json: params[:param2]
  end
end
