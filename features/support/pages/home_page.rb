class HomePage < BasePage

  def url_correct_for?(locale)
    url_segment = data_for(:locale_ids)[locale.downcase]
    url = "#{FigNewton.base_url}/Country/Change/#{url_segment}"
    @browser.goto url
    wait_until do
      @browser.url.include? data_for(:promotion_code_for)[locale.downcase]
    end
  end

  def navigate_to_page_for(product)
    case (product)
      when :formal_shirt then url = "#{FigNewton.base_url}/#{data_for(:home_page)['formal_shirts'][0]}"
      when :jacket_or_blazer then url = "#{FigNewton.base_url}/#{data_for(:home_page)['jacket_or_blazer'][0]}"
    end
    @browser.goto url
    url
  end
end