class TaskController < ApplicationController
	before_action :set_task, only: [ :view ]

	def view
	end

	private
	def set_task
		@task = Task.find_by_id(params[:id])
	end
end
