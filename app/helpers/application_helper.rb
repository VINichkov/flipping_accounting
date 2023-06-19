module ApplicationHelper
  def object_name(collection)
    if collection.count > 0
      collection.first.class.name.downcase
    else
      'objects'
    end
  end
end
