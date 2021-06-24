# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(sign_up_params)
      unless @user.valid?
        render :new and return  #returnで以下の実行を停止(※renderが２回実施されるとerrorとなる)
      end
    session["devise.regist_data"] = {user: @user.attributes}
    session["devise.regist_data"][:user]["password"] = params[:user][:password]
    @chara = @user.build_chara
    render :new_chara
  end

  def create_chara 
    @user = User.new(session["devise.regist_data"]["user"])
    @chara = Chara.new(chara_params)
      unless @chara.valid?
        render :new_chara and return
      end
    @user.build_chara(@chara.attributes)
    session["chara.regist_data"] = @chara.attributes
    @person = @user.build_person
    render :new_person
  end

  def create_person
    @user = User.new(session["devise.regist_data"]["user"])
    @chara = Chara.new(session["chara.regist_data"])
    @person = Person.new(person_params)
      unless @person.valid?
        render :new_person and return
      end 
  # ActiveStorageはmodelで保存
    @user.build_chara(@chara.attributes)
    @user.save
    @person.user_id = @user.id
    @person.save
    sign_in(:user, @user)
    redirect_to root_path
  end

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  private

  def chara_params
    params.require(:chara).permit(:text, :area_id, :gender_id, :age, :job_style_id, :exercise_style_id)
  end

  def person_params
    params.require(:person).permit(:avatar, :height, :weight, :goal, :body)
  end
end
