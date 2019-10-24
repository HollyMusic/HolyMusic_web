ActiveAdmin.register User do

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :username
      f.input :full_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

  index do
    id_column
    column :username
    column :full_name
    column :email
    column :current_sign_in_at
    actions
  end

  permit_params :username, :full_name, :email, :password, :password_confirmation

end
