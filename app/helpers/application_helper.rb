module ApplicationHelper
  def render_attr_value(attr, value)
    attr_value(attr, value)
  end

  private
    def attr_value(attr, value)
      content_tag(:tr) do
        content_tag(:td, attr, class: 'table-header') + content_tag(:td, value)
      end
    end
end
