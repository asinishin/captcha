class RegistrationsController < ApplicationController
  include RecaptchaVerifiable

  def index

  end

  def new
    @user = User.new
  end

  def create
    redirect_to 'index'
  end
end
