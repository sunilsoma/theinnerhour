ActiveAdmin.register TaskManagement do

  permit_params :admin_user_id, :states, :start_date, :end_date, :deadline, :not_done

  form do |f|
    f.inputs do
      f.input :admin_user_id, as: :hidden, input_html: {value: current_admin_user.id}
      f.input :start_date
      f.input :end_date
      f.input :deadline
      f.input :states, as: :select, collection: TaskManagement::STATES
      f.input :not_done
    end
    f.actions
  end
  
end
