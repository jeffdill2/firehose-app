class Pic < ActiveRecord::Base

	mount_uploader :image, ImageUploader

	def helper_string
		"#{self.lesson}, #{self.emotion}, #{self.learned}"
		#self.lesson.to_s + ", " + self.emotion + ", " + self.learned
	end

end
