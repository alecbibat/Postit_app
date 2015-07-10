module ApplicationHelper

  # takes a url string
  # appends "http://"
  def fix_url(str)
    if str.starts_with? "http://"
    else
      "http://" + str
    end
  end

  # takes a datetime object
  # standardizes and returns string
  def datetime(dt)
    dt.strftime("%k:%M %m/%d/%y %Z")
  end
end

def current_user
  @current_user ||= User.find_by(id: session[:user].id)
end
