module Dictionary
  def object_index_factory(class_name)
    return  class_name.new, class_name.page(params[:page]).per(params[:per_page]).order(created_at: :desc)
  end
end
