FactoryGirl.define do
  factory :training do
    infoletter_file         Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/files/infoletter.pdf", "application/pdf")
    participation_form_file Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/files/participation_form.pdf", "application/pdf")
  end
end
