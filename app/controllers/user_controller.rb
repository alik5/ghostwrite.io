class UserController < ApplicationController

	before_action :set_user, only: [:show, :edit, :update, :destroy]
	@users = User.all

	def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


	private

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :profile_name, :email)
	end

end
