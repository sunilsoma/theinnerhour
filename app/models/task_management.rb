class TaskManagement < ApplicationRecord
	STATES = ["BACKLOG", "INPROGRESS", "DONE"]
	after_commit :send_email, if: Proc.new{|b|b.not_done?}


	def not_done?
		not_done == true
	end
	private
	def send_email
		#binding.pry
		TaskManagementMailer.with(task_management: self).task_not_done.deliver_later(wait_until: self.deadline - 1.day)
		TaskManagementMailer.with(task_management: self).task_not_done.deliver_later(wait_until: self.deadline - 1.hours)
	end
end
