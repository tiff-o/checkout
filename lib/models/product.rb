class Product
  attr_reader :uuid, :name, :price

  def initialize(uuid:, name:, price:)
    @uuid = uuid
    @name = name
    @price = price
  end

  def show
    @product = Product.new(uuid: @uuid, name: @name, price: @price)
  end

  def all
    @products = Product.all
  end
end
