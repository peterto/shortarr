class Url
  include Mongoid::Document
  field :url_path, :type => String
  field :http_status, :type => Integer
end
