ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	
  form do |f|
    f.inputs do
    f.input :description
    f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
  end
  f.actions
  end

    index do
    selectable_column
    id_column
    column :image do |post|
      image_tag post.image.url(:thumb)
    end
    actions
  end

	 show do
	 attributes_table do
	   row :image do |post|
	     image_tag post.image.url(:medium)
	   end
	   row :description
	 end
	 active_admin_comments
	end

end
