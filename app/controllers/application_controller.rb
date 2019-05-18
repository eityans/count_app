class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
    render html: "(っ＾ω＾ｃ)"
  end
  
  def goodbye
    render html: "(っ´＾ω＾`ｃ)"
  
  end
  
end
