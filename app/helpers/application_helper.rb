module ApplicationHelper

  def currency(value)
    number_with_precision(value, separator: ",", delimiter: ".", precision: 0)
  end

end
