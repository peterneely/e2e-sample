class ProductFormalShirt < Base

  link(:collar_size, :href => '#collar_size')
  link(:sleeve_length, :href => '#sleeve_length')

  def select_sizes
    select_collar_size
    select_sleeve_length
  end

  private

  def select_collar_size
    collar_size_element.when_present.click
    @browser.link(:href, data_for(:formal_shirts)[$locale][1]).when_present.click
    sleep 1
  end

  def select_sleeve_length
    sleeve_length_element.when_present.click
    @browser.link(:href, data_for(:formal_shirts)[$locale][2]).when_present.click
    sleep 1
  end
end