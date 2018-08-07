# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json
  before_action :configure_sign_in_params, only: [:create]
  skip_before_action :verify_signed_out_user, only: [:destroy]

  # POST /resource/sign_in
  def create
    puts @user[:email]
    if @user && @user.valid_password?(params[:user][:password])
      sign_in @user
      render :json => @user
    else
      render json: {
        errors: [
          {
            status: '400',
            title: 'Bad Request',
            detail: 'Wrong email or password',
            code: '100'
          }
        ]
      }, status: :bad_request
    end
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    #devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    puts params[:user][:password]
    @user = User.find_by_email(params[:user][:email])
  end
  
  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
end
