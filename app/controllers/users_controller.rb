class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def create
    if User.create(name: params["user"]["name"], age: params["user"]["age"], mail: params["user"]["mail"]).valid?
    # render plain: params["user"]["name"] + "(" + params["user"]["age"] + ")" + params["user"]["mail"]
      redirect_to "/"
    else
      render plain: "error"
    end
  end
end
