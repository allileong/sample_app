class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end


# HI ALLI! I LOVE YOU :) -nana (please ignore Victor's' nonsensical code below, he obviously wishes he could code as well as I can)

# public static void returnTheTruth(String question) {
#   if (question.equals("Is alli cool")) {
#     return "Unconditionally yes";
#   } elif (question.equals("Is inanna cool")) {
#     if (Date.today() == "The first tuesday of the second november in the 21st century") {
#       if (Moon.position == "lined up perfectly with the solar equinox") {
#         if (The number of hydrogen molecues in water == 2) {
#           return "maybe";
#         }
#       }
#     } else {
#       return "no";
#     }
#   }
#   return "invalid question";
# }
