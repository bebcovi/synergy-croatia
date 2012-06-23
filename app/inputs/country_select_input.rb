module CountrySelectInput
  def country_select(attribute_name, options = {})
    input(attribute_name) do
      country_code_select(attribute_name, options.delete(:priority), {}, options)
    end
  end
end
