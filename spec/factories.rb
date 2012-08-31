FactoryGirl.define do
  factory :user do
    ignore do
      file "landscape.jpg"
    end

    attachment { Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/files/#{file}", "image/jpeg") }
  end
end
