class UsersController < ApplicationController

  def index
    # render text: "I'm in the index action!"
    # render json: params[:id]

    render json: User.all
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def update
    user = User.find(params[:id])

    user.update(user_params)
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
