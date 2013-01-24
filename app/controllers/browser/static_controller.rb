class Browser::StaticController < ApplicationController

  def index
    @page_title = "Home"
    @body_id = "home"
    @body_class = "page"
  end

end