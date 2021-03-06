class GradingLevel < ActiveRecord::Base

	belongs_to :batch

	validates :name, presence: true, length:{minimum:1,maximum: 20}, format:{ with: /\A[a-zA-Z0-9+_" "-]+\Z/}
	validates :min_score, presence: true ,numericality: { only_integer: true}
	validates :description, presence: true ,length:{minimum:1,maximum: 30}

end
