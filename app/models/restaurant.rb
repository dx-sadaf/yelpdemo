class Restaurant < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :name, :address, :phone, :image, presence: true
  validates :phone, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/, message: "must be in the format (123) 456-7890" }
  validates :website, format: { with: /\Ahttps?:\/\/.*\z/, message: "must start with http:// or https://" }


  has_many :reviews

=begin
  searchable do
    text :name, :address
    string  :sort_title do
      title.downcase.gsub(/^(an?|the)/, '')
    end
  end
=end

end
