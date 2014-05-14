class GithubController < ApplicationController
  def webhook
    puts params.inspect
  end
end
