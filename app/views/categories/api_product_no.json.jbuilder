if @flag=='true'
  json.product_no @products.count

  json.(@products.first, :created_at, :updated_at)

  json.comments @products, :name, :price, :details

  json.product_info @products do |product|
    json.name product.name
    json.price product.price
    json.details product.details
  end

  json.product_details @products do |product|
    json.partial!'categories/product', product: product
  end

elsif @flag=='false'
  json.error_message @message
end
