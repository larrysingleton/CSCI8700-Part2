class UserController < ApplicationController
  def login
    authenticated = false
    if (authenticated)
      redirect_to "/account/"
    else
      redirect_to "/"
    end
  end

  def register
  end

  def logout
  end
end
