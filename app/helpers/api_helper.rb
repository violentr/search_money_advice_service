module ApiHelper
  def link_content(item)
    item.children.first.attributes["href"].value
  end
end
