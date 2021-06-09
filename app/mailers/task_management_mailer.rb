class TaskManagementMailer < ApplicationMailer
  def task_not_done
    @task_management = params[:task_management]

    mail(to: 'sunilgupta970@gmail.com', subject: "You have not completed task!")
  end
end
