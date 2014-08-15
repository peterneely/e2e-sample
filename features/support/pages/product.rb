class Product < Base

  button(:add_to_bag, :id => 'ctl00_contentBody_ctl02_submit')
  span(:bag_quantity, :id => 'miniBKQty')

  def add_to_bag?(product_type)
    navigate_to_page_for(product_type)
    select_sizes_for(product_type)
    put_in_bag
  end

  private

  def navigate_to_page_for(product_type)
    key = "#{$locale}_#{product_type}"
    url_segment = product_type == :accessories ? "#{data_for(:home_page)[key]}" : "#{data_for(:home_page)[key][0]}"
    url = "#{FigNewton.base_url}/#{url_segment}"
    @browser.goto url
  end

  def select_sizes_for(product_type)
    case (product_type)
      when :formal_shirts
        shirts = ProductFormalShirt.new(@browser)
        shirts.select_collar
        shirts.select_sleeve
      when :jacket_or_blazer
        jackets = ProductJacketOrBlazer.new(@browser)
        jackets.select_chest_size
        jackets.select_sleeve_and_body_length
    end
  end

  def put_in_bag
    add_to_bag
    wait_until do
      bag_quantity == '1'
    end
  end
end