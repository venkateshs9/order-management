class UsersController < ApplicationController
  def index
    @users = User.order(:created_at)
  end

  def download_orders
    user = User.find(user_params[:id])
    orders = user.orders

    respond_to do |format| 
      format.html { redirect_to root_path }
      format.csv { send_data orders.to_csv.perform_async(*args),
                   filename: "#{user.username}_orders.csv" } 
    end
  end

  private

  def user_params
    params.permit(:id)
  end
end
