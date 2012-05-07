class UsersController < ApplicationController

  # before_filter :check_login, :except =>[:new,:create]
  #created by tapan
  #created_on:04/05/2012
  #purpose: new user form

  def new
    @user = User.new
     respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: to show all users

  def index
   @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: to show a user

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: to create a new user

  def create
    @user = User.new(params[:user])
    respond_to do |format|
    if @user.save
      format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
  end
  end
  #created by tapan
  #created_on:04/05/2012
  #purpose: to edit an existing user

  def edit
     @user = User.find(params[:id])
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: to update an existing user

  def update
     @user = User.find(params[:id])
      respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  #created by tapan
  #created_on:04/05/2012
  #purpose: to delete an existing user

  def destroy
    @user = User.find(params[:id])
    @user.destroy
     respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
  def check_login
    redirect_to root_url unless current_user
  end
 end
