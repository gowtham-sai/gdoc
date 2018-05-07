require "gdoc/version"

module Gdoc
  attr_accessor :depreciation, :required_params

  def depreciation
    @depreciation.nil? ? false : @depreciation
  end

  def required_params
    @required_params.nil? ? {} : @required_params
  end
end
