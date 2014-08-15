class ProductJacketsAndBlazers < Base

  link(:chest_size, :href => '#jckt_chest')
  link(:sleeve_and_body_length, :href => '#slv_lngth')

  def select_sizes
    select_chest_size
    select_sleeve_and_body_length
  end

  private

  def select_chest_size
    chest_size_element.when_present.click
    @browser.link(:href, data_for(:jackets_and_blazers)[$locale][1]).when_present.click
    sleep 1
  end

  def select_sleeve_and_body_length
    sleeve_and_body_length_element.when_present.click
    @browser.link(:href, data_for(:jackets_and_blazers)[$locale][2]).when_present.click
    sleep 1
  end
end
