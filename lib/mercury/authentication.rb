module Mercury
  module Authentication
    def can_edit?
      if user_signed_in?
        true
      else
        redirect_to root_path
      end
   end
  end
end