class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :post


  	# after_save :add_score

  	# private

  	# def add_score
   # 	 	self.user.score += 10
   #  	self.user.save
 	 # end
end
