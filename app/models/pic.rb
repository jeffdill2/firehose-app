class Pic < ActiveRecord::Base

	mount_uploader :image, ImageUploader

	validates :lesson, 	:presence => true, 
						:numericality => 
						{ 
							:less_than_or_equal_to => 100 
						}

	validates :emotion, :presence => true

	validates :learned, :presence => true

	validates :image, :presence => true

	def helper_string
		"#{self.lesson}, #{self.emotion}, #{self.learned}"
		#self.lesson.to_s + ", " + self.emotion + ", " + self.learned
	end

end
