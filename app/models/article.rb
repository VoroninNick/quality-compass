class Article < ActiveRecord::Base
  attr_accessible :avatar, :full_description, :name, :published, :short_description, :slug, :delete_avatar
  attr_accessor :delete_avatar
  
  translates :full_description, :name, :short_description

  class Translation
    attr_accessible :locale
  end

  validates :name, presence: true
  validates :slug, uniqueness: true, presence: true

  before_validation :generate_slug_for_article, :remove_avatar
  
  has_attached_file :avatar, :styles => { :thumb => '180>', :item => '600>' },
                    :url  => '/assets/article/:id/:style/:basename.:extension',
                    :path => ':rails_root/public/assets/article/:id/:style/:basename.:extension'

  def to_param
    slug
  end

  def generate_slug_for_article
    self.slug ||= name.parameterize
  end
  
  def remove_avatar
    self.avatar.clear if self.delete_avatar == '1'
  end

  rails_admin do
    list do
      field :published
      field :name
      field :avatar
    end

    edit do
      field :published
      field :name
      field :short_description
      field :full_description do
        ckeditor true
      end
      field :avatar
    end
  end
end
