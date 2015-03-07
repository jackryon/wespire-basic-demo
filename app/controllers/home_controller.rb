class HomeController < ApplicationController


  before_filter :authenticate_user!, only: [:welcome]


  # unauthenticated
  def index
  end


  # after sign in
  def welcome
  end


end