ActiveAdmin.register Customer do
  permit_params :firstname, :lastname, :phonenumber, :email, :notes, :picture

  show do 
    attributes_table do
      row :firstname
      row :lastname
      row :phonenumber
      row :email
      row :picture do |cust|
        if cust.picture.attached?
          image_tag cust.picture.variant(:profile)
        end
      end
      row :notes
    end
    active_admin_comments
  end

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :picture, as: :file
    end
    f.actions
  end

end
