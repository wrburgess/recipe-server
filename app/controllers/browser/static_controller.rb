class Browser::StaticController < BrowserController

  def index
    @page_title = "Home"
    @body_id = "home"
    @body_class = "page"
  end

end