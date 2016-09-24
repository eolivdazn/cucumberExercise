class WikipediaContentPage
  include PageObject

  #elements
  div(:content, :css=>"#mw-content-text")

end