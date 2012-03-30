class Url
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url_path, :type => String
  field :http_status, :type => Integer
end
