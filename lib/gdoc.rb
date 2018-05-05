require "gdoc/version"

module Gdoc
  attr_accessor :depreciation

  def depreciation
    @depreciation.nil? ? false : @depreciation
  end
end
