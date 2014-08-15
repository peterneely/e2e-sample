class Home < Base

  def url_correct_for?(locale)
    $locale = locale.downcase
    url_segment = data_for(:locale_ids)[$locale]
    url = "#{FigNewton.base_url}/Country/Change/#{url_segment}"
    @browser.goto url
    wait_until do
      @browser.url.include? data_for(:promotion_code_for)[$locale]
    end
  end
end