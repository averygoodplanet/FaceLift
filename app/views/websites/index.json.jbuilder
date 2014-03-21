json.array!(@websites) do |website|
  json.extract! website, :id, :title, :description, :before_image, :after_image
  json.url website_url(website, format: :json)
end
