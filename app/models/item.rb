require "digest/sha2"

class Item < ActiveRecord::Base
  attr_accessible :description, :identifier, :name, :quantity
  def identifierFromBarcode (code)
    code.gsub! /^[\s\\]+|[\s\\]+$/, ""
    identifier = Digest::SHA2.hexdigest(code)
  end
end
