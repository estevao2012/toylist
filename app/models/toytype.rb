class Toytype < ActiveRecord::Base

	has_many :toys

validates :toytype, presence: true
validates :description, presence: true

end
