class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def resource_model
    controller_name.classify.constantize
  end

  def resource_class
    resource_model.name.downcase.to_sym
  end

  def resource_permitted_params
    resource_model.permitted_params
  end

  private

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def after_sign_in_path_for(resource)
    home_index_path
  end

  def permitted_params
    params.require(resource_class).permit(resource_permitted_params)
  end
end
