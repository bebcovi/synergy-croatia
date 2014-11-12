require "synergy/engine"
require "active_support/core_ext/module/attribute_accessors"
require "ostruct"

module Synergy
  def self.app
    Rails.application.class
  end

  def self.config(name)
    class_variable_set("@@#{name}", OpenStruct.new)
    mattr_reader name
  end

  config :active_admin
end
