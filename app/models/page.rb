class Page < ApplicationRecord

  validates :name, :path_to_file, :content, presence: true

end
