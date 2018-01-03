class UserDecorator
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class UserDecorator < ModelDecorator
  def name
    'Mr. ' + super
  end
end

#=>
userdecorator = UserDecorator.new('Smith')
puts y.name

