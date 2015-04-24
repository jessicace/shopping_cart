class Product < Database
  TABLE_NAME = "products"
  attr_reader :id, :name, :price, :gst, :category

  def initialize(id, name, price, gst, category)
    @id = id
    @name = name
    @price = price
    @gst = gst
    @category = category
  end

  def self.table_name
    TABLE_NAME
  end

  def self.all
    res = super
    hash = {}
    res.each do |row|
      hash[row['id']] = self.new(row['id'], row['name'], row['price'], row['gst'], row['category'])
    end
    hash
  end

  def self.read(item_id)
    item = item_id.to_s
    return self.all[item]
  end
  
  def to_s
    "#{@name.capitalize} : #{@price} (GST: #{@gst}) #{@id} Category: #{@category.capitalize}"
  end
end
