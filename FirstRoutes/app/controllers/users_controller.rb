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
    user = User.new(params[:user].permit(:email, :name))
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end
end
