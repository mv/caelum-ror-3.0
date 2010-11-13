class RestauranteObserver < ActiveRecord::Observer
  def after_create(model)
    # code to confirm via email
  end
end
