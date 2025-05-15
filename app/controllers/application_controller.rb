class ApplicationController < ActionController::Base
  use_inertia_instance_props
  inertia_share current_user: -> { current_user }

  before_action -> {
    InertiaRails.configure do |config|
      config.default_render = true
    end
  }
end
