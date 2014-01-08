class HomePage < BasePage

  button(:add_to_bag, :alt => 'Add to bag')

  def url_correct_for?(locale)
    url_segment = data_for(:locale_ids)[locale.downcase]
    url = "#{FigNewton.base_url}/Country/Change/#{url_segment}"
    @browser.goto url
    wait_until do
      @browser.url.include? data_for(:promotion_code_for)[locale.downcase]
    end
  end

  def add_product
    url_segment = data_for(:home_page)['products']
    url = "#{FigNewton.base_url}/#{url_segment}"
    @browser.goto url
    add_to_bag
  end
end