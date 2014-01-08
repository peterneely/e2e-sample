class ProductPage < BasePage

  button(:add_to_bag, :id => 'ctl00_contentBody_ctl02_submit')
  span(:bag_quantity, :id => 'miniBKQty')
  div(:minibag_popup, :id => 'minibag')
  button(:close, :id => 'close')
  div(:page, :id => 'outer')

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
end