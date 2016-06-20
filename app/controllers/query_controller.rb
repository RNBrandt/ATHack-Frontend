class QueryController < ApplicationController
  def new
    @api = SupportApi.new
  end
end
