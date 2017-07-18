module PostsHelper
  def fine_name_by_admin_id(id)
    @admin = Admin.all
    if @admin.find(id).name == nil
      @admin.find(id).email
    else
      @admin.find(id).name
    end
  end

  def show_all

  end

  def help_for_delop_admin
    if admin_signed_in?
      [current_admin.email, current_admin.name,
        current_admin.email, current_admin.age, current_admin.location ]

      #render html: "#{current_admin.email}  #{current_admin.name}
                    #{current_admin.email}
                    #{current_admin.age}
                    #{current_admin.location}"
      #render html: current_admin.name
      #current_admin.age
      #current_admin.gender
      #current_admin.location
    end
  end
end
