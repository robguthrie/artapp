class AdminController < ApplicationController
  inherit_resources
  http_basic_authenticate_with :name => "admin", :password => "stayconcerned420"
end
