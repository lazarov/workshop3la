class UsersController < ApplicationController

  expose(:user)
  expose(:users)
  expose_decorated(:user, decorator: UserDecorator)
  expose_decorated(:reviews, ancestor: :user)

  def index
  end

  def show
  end

end
