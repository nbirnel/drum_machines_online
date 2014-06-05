module UsersHelper

  def rendered_email user
    if user.show_email
      user.email.sub(/@/, ' at ').gsub(/\./, ' dot ')
    else
      ''
    end
  end

end
