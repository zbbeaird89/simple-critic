require "movies_helper.rb"

module ApplicationHelper
  include MoviesHelper

  def gravatar_for(email, size=200)
    gravatar = Digest::MD5::hexdigest(email).downcase
    url = "http://gravatar.com/avatar/#{gravatar}.png?s=#{size}"
  end

end
