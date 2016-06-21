class InitialController < ApplicationController
  def index
    @languages = {}
    language_list = []
    url = 'https://sf-survivor-services-api.herokuapp.com/organizations/'
    response = HTTParty.get(url)
    @organizations = response.parsed_response
    @test = @organizations
    p @test
    # p @test["languages"]
    @organizations.each do |organization|
      language_list << organization["languages"]
      p language_list
    end
    language_list.each do |language|
      language.each do |words|
        @languages[words] = true
      end
    end
  end
end
