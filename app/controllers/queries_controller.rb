class QueriesController < ApplicationController
include ApplicationHelper
  def index
    url = 'https://sf-survivor-services-api.herokuapp.com/organizations/'
    response = Url.get(url)
    @organizations = response.parsed_response
    language_lib(@organizations)
    gender_lib(@organizations)
    p "*****************#{@genders}******"
  end

  def create
    p params[:request]
    url = "https://sf-survivor-services-api.herokuapp.com/organizations/"
    Url.post(url, params[:request])
    # HTTParty.post(url),
    # :headers => :params
  end
end
 #This will move to another file soon
 class Url
  include HTTParty
 end
