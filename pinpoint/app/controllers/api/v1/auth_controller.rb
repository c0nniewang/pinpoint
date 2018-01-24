class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      render json: {id: user.id, email: user.email, name: user.name, token: issue_token(user)}
    else
      render({json: {error: 'User is not valid'}, status: 401})
    end
  end

  def show
    if current_user
      render json: {id: current_user.id, email: current_user.email, name: user.name, token: issue_token(user)}
    else
      render({json: {error: 'Token is not valid'}, status: 401})
    end
  end

end
