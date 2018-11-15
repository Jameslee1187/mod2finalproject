class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
    @potlucks = Potluck.all
    @locations = Location.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      redirect_to new_user_path, :flash => { :error => "Get it right stupid" }
    end
  end

  def show
    @user = User.find(params[:id])
  end

 def authenticate(password)
   BCrypt::Password.new(@user.password_digest) == password
 end



  private

  def user_params
    params.require(:user).permit(:name, :age, :location, :occupation)
  end

end
