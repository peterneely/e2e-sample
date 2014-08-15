class Product < Base

  button(:add_to_bag, :id => 'ctl00_contentBody_ctl02_submit')
  span(:bag_quantity, :id => 'miniBKQty')

  def add_to_bag?(product_type)
    navigate_to_page_for(product_type)
    select_sizes_for(product_type)
    add_to_bag
    in_bag?
  end

  private

  def navigate_to_page_for(product_type)
    url_segment = product_type == :accessories ? data_for(product_type)[$locale] : data_for(product_type)[$locale][0]
    url = "#{FigNewton.base_url}/#{url_segment}"
    @browser.goto url
  end

  def select_sizes_for(product_type)
    case (product_type)
      when :formal_shirts then product = create(ProductFormalShirt)
      when :jackets_and_blazers then product = create(ProductJacketsAndBlazers)
    end
    if product == nil then return else product.select_sizes end
  end

  def in_bag?
    wait_until do
      bag_quantity == '1'
    end
    bag_quantity == '1'
  end
end