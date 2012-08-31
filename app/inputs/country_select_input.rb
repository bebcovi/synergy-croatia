class CountrySelectInput < SimpleForm::Inputs::Base
  def input
    @builder.country_code_select(attribute_name, options.delete(:priority), {}, options)
  end
end
