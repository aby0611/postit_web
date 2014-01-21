module ApplicationHelper
  def fix_url(str)
    str.starts_with?('http://') ? str : str.prepend('http://')
  end
end
