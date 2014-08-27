class Toy < ActiveRecord::Base

require 'paperclip'

validates :name, presence: true
validates :description, presence: true
validates :animal, presence: true


has_attached_file :photo , :styles => {:medium => "300x300>", :thumb => "100x100>" }
validates_attachment_content_type :photo, :content_type => 'image/jpeg'


scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }


before_save :set_keywords

 def notportrait?
   self.Portrait == false
  end

end


private

    def set_keywords
      self.keywords = [name, description, animal].map(&:downcase).join(' ')
    end