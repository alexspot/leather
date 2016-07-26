RailsAdmin.config do |config|
  config.model Product do
    edit do
      field :title
      field :description
      field :price
      field :photos
    end
  end

end