class UserDecorator
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class ModelDecorator
  attr_reader :object

  def initialize(obect)
    @object = object
  end

  def name
    'Mr. ' + object.name
  end
end

#=>
userdecorator = UserDecorator.new('Smith')
modeldecorator = ModelDecorator.new(userdecorator)
puts modeldecorator.name


