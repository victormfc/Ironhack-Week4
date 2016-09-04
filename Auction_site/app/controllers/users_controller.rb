class UsersController < ApplicationController

	def index
	@users = User.all
	end

	def new
	@user = User.new
	render('new')
	end

	def create
	@user = User.new(user_params)
#este metodo viene definido debajo. l31
		if @user.save
      	redirect_to(users_path)
#lo lógico es que fuera a crear nuevo producto
    	else
      	render('new')
    	end
	end

	def show
	@user = User.find(params[:id])
	end


	def destroy

	end

private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
	