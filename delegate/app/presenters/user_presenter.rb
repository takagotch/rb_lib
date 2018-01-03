class UserPresenter
  attr_accessor :user, :view_context
  delegate :family_name, :given_name, to: :user

  def initialize(user, view_context)
    self.user = user  
    self.view_context = view_context
    yeild(self) if block_given?
  end

  def full_name
    family_name + ' ' + given_name
  end

  def full_name_with_hyperlink
    view_context.link_to(full_name, user)
  end

  class << self
    def build(users, view_context)
      users.each { |user| yield new(user, view_context) }
    end
  end
end

