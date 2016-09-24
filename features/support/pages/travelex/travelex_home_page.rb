require 'touch_action'

class TravelexHomePage
  include PageObject

  page_url("http://travelex.co.uk")

  #elements
  div(:slider,:css=>".slick-track")
  div(:sliderList){slider_element.div_elements(:css =>".slick-slide")}
  # div(:sliderList2){sliderList_elements.div_elements(:css =>".slick-slide")}

  def temp
    sliderList_element[0].touch_action(:swipe)
    # sliderList_element[0].drag_and_drop(sliderList_element[0],sliderList_element[1])
  end

end