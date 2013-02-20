class LoginsController < ApplicationController
  # GET /logins
  # GET /logins.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @logins }
    end
  end
end