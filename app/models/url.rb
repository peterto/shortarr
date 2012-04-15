class Url
  include Mongoid::Document
  include Mongoid::Timestamps

  validates :url_path, :uniqueness => true, :presence => true, :on => :create
  validates :url_path, :format => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix }

  field :url_path
  field :shortened_ul
  field :http_status
  
end
