module StaticPagesHelper

  def find_name_by_admin_id(id)
    admin = Admin.all
    if admin.find(id).name == nil
      admin.find(id).email
    else
      admin.find(id).name
    end
  end

end
