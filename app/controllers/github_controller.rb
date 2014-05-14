class GithubController < ApplicationController
  protect_from_forgery with: :null_session

  def webhook
    puts params.inspect
    render :json => { :status => 200, :response => 'OK' }
  end
end
