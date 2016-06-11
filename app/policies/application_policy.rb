class ApplicationPolicy < ActionController::Base
  include Pundit
  protect_from_forgery
end
