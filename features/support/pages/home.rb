class Home < Base

  def url_correct_for?(locale)
    $locale = locale.downcase
    @browser.goto locale_url
    wait_until do
      @browser.url.include? data_for(:promotion_codes)[$locale]
    end
  end

  private

  def locale_url
    url_segment = data_for(:locale_ids)[$locale]
    url = "#{FigNewton.base_url}/Country/Change/#{url_segment}"
    url
  end
end