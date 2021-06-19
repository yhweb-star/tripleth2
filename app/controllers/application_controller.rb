class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
      keys: [:name, :prtext, :area_id, :gender_id, :age, :job_style_id, :exercise_style_id, :image, :height, :weight, :goal])
  end

end
