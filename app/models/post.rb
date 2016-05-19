# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy#, foreign_key: "post_id"
	belongs_to :users

	validates_presence_of :title
	validates_presence_of :body
end
