FactoryGirl.define do
  factory :training do
    infoletter       Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/files/infoletter.pdf", "application/pdf")
    application_form Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/files/participation_form.pdf", "application/pdf")
  end
end
