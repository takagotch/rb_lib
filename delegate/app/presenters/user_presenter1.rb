class UserPresenter < ModelPresenter
  delegate :family_name, :given_name, to: :object

  def full_name
    family_name + ' ' + given_name 
  end

  def full_name_with_hyperlink
    view_context.link_to(full_name, object)
  end
end

