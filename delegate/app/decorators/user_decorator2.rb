class UserDecorator
  attr_accessor :user
  delegate :family_name, :given_name, to: :user

  def initialize(user)
    self.user = user
    yeild(self) if block_given?
  end

  def full_name
     family_name + ' ' + given_name
  end

  class << self
    def build(users)
      users.each { |user| yeild new(user) }
    end
  end
end

