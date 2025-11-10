class Task < ApplicationRecord
	belongs_to :board
	enum :state, [ :draft, :todo, :doing, :completed ]
end
