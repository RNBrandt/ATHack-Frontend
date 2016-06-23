class InitialController < ApplicationController
  include ApplicationHelper
  def index
    url = 'https://sf-survivor-services-api.herokuapp.com/organizations/'
    response = HTTParty.get(url)
    @organizations = response.parsed_response
    language_lib(@organizations)
    gender_lib(@organizations)
    p "*****************#{@genders}******"
  end
end
