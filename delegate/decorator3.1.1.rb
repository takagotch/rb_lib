class ModelDecorator
  attr_reader :object
  delegate :age, to: :object

  def initialize(object)
    @object = object
  end

  def name
    'Mr. ' + object.name
  end
end

