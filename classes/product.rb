class Product < Database
  TABLE_NAME = "products"

  def initialize(id)
    @id = id
  end
  
end
