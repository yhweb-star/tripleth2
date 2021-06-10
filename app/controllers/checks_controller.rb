class ChecksController < ApplicationController
  def new
    @checks = Check.all
    @check = Check.new
  end

  def create
    Check.create(check_parameter)
    redirect_to checks_path
  end

  def show
  end

  def destroy
  end

  private

  def check_params
    params.require(:check).permit(:weight, :image, :start_time).merge(user_id: current_user.id)
  end

end
