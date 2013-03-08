class ApplicationController < ActionController::Base
  protect_from_forgery

def signed_in_root_path(user)
        scope = Devise::Mapping.find_scope!(user)
        home_path = "#{scope}_root_path"
        if respond_to?(home_path, true)
          send(home_path)
        elsif respond_to?(:root_path)
          root_path
        else
          "/"
        end
      end

end
