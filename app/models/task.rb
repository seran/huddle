class Task < ApplicationRecord
  belongs_to :list
	enum :state, [ :draft, :todo, :doing, :completed ]
end
