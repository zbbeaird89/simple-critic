module MoviesHelper
  def create_account_section_partial_path
    if !user_signed_in?
      "layouts/create_account_section/display_block"
    else
      "layouts/create_account_section/display_none"
    end
  end
end
