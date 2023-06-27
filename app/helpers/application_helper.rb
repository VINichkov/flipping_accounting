module ApplicationHelper
  def object_name(collection)
    if collection.count > 0
      collection.first.class.name.downcase
    else
      'objects'
    end
  end

  def object_form_dom_id(record, prefix = nil)
    class_name = record.class.name.downcase
    result = record.id ? "#{class_name}_#{record.id}" : "#{record.class.name}_new"
    prefix ? "#{prefix}_#{result}" : result
  end

  def customer_dom_id(record, prefix = nil)
    if record.class.name['Form']
      object_form_dom_id(record, prefix)
    else
      dom_id(record, prefix)
    end
  end
end
