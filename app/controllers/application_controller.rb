class ApplicationController < ActionController::Base
  before_action :configure_devise_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  after_action :create_badges, only: :create
  include Pundit::Authorization

  # Pundit: allow-list approach
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def create_badges
    # find all activities
    @activities = Activity.all

    #  for all activity create a badge for the user and this activity
    @activities.each do |activity|
      # if activity.level == '1'
      Badge.create(user: current_user, activity: activity, status: 'unavailable')
      # else
      #   Badge.create(user: current_user, activity: activity, status: 'unavailable')
      # end
    end
  end

  protected

  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:classroom_id, :first_name, :last_name, :access_code])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username, { tags: [] }, :age, :description, photos: []])
  end
end
