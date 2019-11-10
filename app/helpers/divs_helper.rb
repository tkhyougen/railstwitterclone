module DivsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'||action_name =="create"
      confirm_divs_path
    elsif action_name == 'edit'
      div_path
    end
  end
end
