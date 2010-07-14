# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def inside_layout(layout_name, &block)
    layout_name = layout_name.include?('/') ? layout_name : "layouts/#{layout_name}"
    @template.instance_variable_set("@content_for_layout", capture(&block))
    concat(@template.render(:file => layout_name, :user_full_path => true))
  end  
  
end

