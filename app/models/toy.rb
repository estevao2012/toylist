class Toy < ActiveRecord::Base

require 'paperclip'

validates :name, presence: true
validates :description, presence: true
validates :animal, presence: true


has_attached_file :photo , :styles => {:medium => "300x300>", :thumb => "100x100>" }
validates_attachment_content_type :photo, :content_type => 'image/jpeg'


scope :notportrait, -> {where(Portrait: nil)}


 def notportrait?
   :Portrait.present?
  end

end


