require 'forwardable'

class ModelDecorator
  extend Forwardable
  attr_reader :object
  def _delegator :object, :age

  def initialize(object)
    @object = object
  end

  def name
    'Mr. ' + object.name
  end
end

