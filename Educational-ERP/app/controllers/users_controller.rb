class UsersController < ApplicationController

	def new 
		@user=User.new
	end

	def create
		@user=User.new(user_params)
		if @user.save
			redirect_to user_path(@user)
		else
			render 'new'
		end
	end

	def show
		@user=User.find(params[:id])
	end

	def search
	  name=params[:search].split(" ")
      @users=User.where("first_name like '%#{name[0]}%' OR last_name like '%#{name[1]}%'
                            OR first_name like '%#{name[1]}%' OR last_name like '%#{name[0]}%'")

	end

	def edit
		@user=User.find(params[:id])
	end

	def update
		@user=User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path(@user)
	end

	def select
		@users=User.where("role Like '#{params[:user][:role]}'")
	end
	
	def destroy
		@user=User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	private
	def user_params
		params.require(:user).permit(:username,:first_name,:last_name,:email,:role,:hashed_password)
	end
end
