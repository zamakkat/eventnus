module ApplicationHelper
  def render_attr_value(attr, value)
    attr_value(attr, value)
  end

  private
    def attr_value(attr, value)
      content_tag(:tr) do
      	if (attr!='start_time' && attr!='end_time')
        	content_tag(:td, attr, class: 'table-header') + content_tag(:td, value)
        else 
        	content_tag(:td, attr, class: 'table-header') + content_tag(:td, value.strftime("%H:%M"))
        end
      end
    end
end
