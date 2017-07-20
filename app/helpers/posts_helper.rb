module PostsHelper
  def find_name_by_admin_id(id)
    admin = Admin.all
    if admin.find(id).name == nil
      admin.find(id).email
    else
      admin.find(id).name
    end
  end

  def log_content
    content = "BLOGS"
    if admin_signed_in?
      content = find_name_by_admin_id(current_admin.id)
      content
    else
      content
    end
  end

  def show_current_admin_posts_path
    if admin_signed_in?
      static_pages_home_path
    end
  end

  def profile_path

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
