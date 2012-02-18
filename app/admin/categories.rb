ActiveAdmin.register Category do
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :parent_id
    end
    #f.inputs "Content" do
    #  f.input :body
    #end
    f.buttons
  end
end
