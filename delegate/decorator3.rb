class UserDecorator
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end
end

class ModelDecorator
  attr_reader :object

  def initialize(object)
    @object = object
  end

  def name
    'Mr. ' + object.name
  end

  def age
    object.age
  end
end

