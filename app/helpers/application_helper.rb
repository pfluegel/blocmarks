module ApplicationHelper

  def form_group_tag(errors, &block)

    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error form-inline'
     else
      content_tag :div, capture(&block), class: 'form-group form-inline'
    end
  end
  def users_bookmarks(user, bookmarks)
    user.bookmarks.map { |books| books == bookmarks}
  end

end
