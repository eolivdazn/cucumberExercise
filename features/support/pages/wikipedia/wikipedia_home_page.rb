class WikipediaHomePage
  include PageObject

  page_url "#{FigNewton.base_url}"

  #elements
  text_field(:searchInput,    :css=>"#searchInput")
  button(:searchBtn,          :css=>".pure-button-primary-progressive")
  div(:searchdidyoumean,      :css=>".searchdidyoumean")
  div(:suggestion,            :css=>"#mw-search-DYM-suggestion")

  div(:searchResult,:css => ".mw-search-results")
  div(:searchList){searchResult_element.div_elements(:css =>".mw-search-result-heading > a")}

  def search arg
    searchInput_element.send_keys arg
    searchBtn
  end

  def temp
        searchList_element[0].element.click
  end

end

