Dir["#{Rails.root}/app/inputs/**/*.rb"].each do |input_file|
  require input_file
  input_module = File.basename(input_file).chomp(".rb").camelize.constantize
  SimpleForm::FormBuilder.send(:include, input_module)
end
