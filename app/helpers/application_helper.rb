module ApplicationHelper
  def fix_url(str)
    if str.starts_with? "http://"
    else
      "http://" + str
    end
  end
end
