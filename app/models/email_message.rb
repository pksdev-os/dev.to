class EmailMessage < Ahoy::Message
  # So far this is mostly used to be compatible with administrate gem,
  # which doesn't seem to play nicely with namespaces. But there could be other
  # reasons to define behavior here, similar to how we use the Tag model.
  def body_html_content
    doctype_index = content.index("<!DOCTYPE")
    closing_html_index = content.index("</html>") + 6
    content[doctype_index..closing_html_index]
  end
end
