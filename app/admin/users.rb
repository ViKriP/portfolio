ActiveAdmin.register User do
  permit_params :first_name, :last_name, :email, :password, :password_confirmation

  index do
    selectable_column

    id_column
    column :email
    column :first_name
    column :last_name
    column :provider
    column :uid

    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :provider
  filter :uid

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
