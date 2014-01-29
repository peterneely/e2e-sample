class ProductPage < BasePage


  button(:add_to_bag, :id => 'ctl00_contentBody_ctl02_submit')
  span(:bag_quantity, :id => 'miniBKQty')
  div(:minibag_popup, :id => 'minibag')
  button(:close, :id => 'close')
  div(:page, :id => 'outer')
  link(:collar_size, :href => '#collar_size')
  link(:sleeve_length, :href => '#sleeve_length')
  link(:chest_size, :href => '#jckt_chest')
  link(:sleeve_and_body_length, :href => '#slv_lngth')

  def add_product?
    url_segment = data_for(:home_page)['products']
    url = "#{FigNewton.base_url}/#{url_segment}"
    @browser.goto url
    add_to_bag_element.when_visible.click
    wait_until do
      bag_quantity == '1'
    end
  end

  def minibag_popup_visible?
    wait_until(5) do
      minibag_popup?
    end
  end

  def viewing_minibag?
    add_product?
    minibag_popup_visible?
  end

  def minibag_click_close_button
    close
  end

  def minibag_click_outside
    page_element.click
  end

  def add_to_bag_from?(product_url)
    if (product_url.include? "men's-formal-shirts")
      select_collar
      select_sleeve
    elsif (product_url.include? "men's-blazers-and-jackets")
      select_chest_size
      select_sleeve_and_body_length
    end
    add_to_bag
  end

  private

  def select_collar
    collar_size_element.when_present.click
    @browser.link(:href, data_for(:home_page)['formal_shirts'][1]).when_present.click
    sleep 1
  end

  def select_sleeve
    sleeve_length_element.when_present.click
    @browser.link(:href, data_for(:home_page)['formal_shirts'][2]).when_present.click
    sleep 1
  end

  def select_chest_size
    chest_size_element.when_present.click
    @browser.link(:href, data_for(:home_page)['jacket_or_blazer'][1]).when_present.click
    sleep 1
  end

  def select_sleeve_and_body_length
    sleeve_and_body_length_element.when_present.click
    @browser.link(:href, data_for(:home_page)['jacket_or_blazer'][2]).when_present.click
    sleep 1
  end
end