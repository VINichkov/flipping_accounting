class ApplicationController < ActionController::Base
  def object_name(collection)
    object_name =  collection&.first.class.name.downcase
    object_name == "nilclass" ? 'objects' : object_name
  end
end
