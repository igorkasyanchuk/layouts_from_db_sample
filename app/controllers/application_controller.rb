# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def self.layout_by_actions(h)
    layout :determine_layout
    code = lambda {
      res = "application"
      h.each do |k,v|
       (res = k; break) if v.include?self.action_name
      end
      res
    }
    define_method(:determine_layout, code)
  end  
  
end
