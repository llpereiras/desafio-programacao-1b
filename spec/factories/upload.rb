FactoryGirl.define do
  factory :upload, class: Upload do
    arquivo { Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/support/uploads/dados.txt'))) }
  end
end
