class Toytype < ActiveRecord::Base

	belongs_to :toy

validates :toytype, presence: true
validates :description, presence: true

end
