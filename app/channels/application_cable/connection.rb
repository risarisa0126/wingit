module ApplicationCable
  class Connection < ActionCable::Connection::Base
	identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    protected
    def find_verified_user
      if session["warden.user.guide.key"] != nil
      	verified_user = Guide.find(session["warden.user.guide.key"][0][0])
      elsif session["warden.user.tourist.key"] != nil
      	verified_user = Tourist.find(session["warden.user.tourist.key"][0][0])
      else
	      reject_unauthorized_connection
	    end
    end

    def session
      @session ||= cookies.encrypted[Rails.application.config.session_options[:key]]
    end
  end
end
