class GithubController < ApplicationController
  def webhook
    puts params.inspect
    render :json => { :status => 200, :response => 'OK' }
  end
end
