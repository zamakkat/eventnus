<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController
  load_and_authorize_resource param_method: :model_params

  def index
    @<%= plural_table_name %> = @<%= plural_table_name %>.order(created_at: :desc).page(params[:page])
  end

  def new
  end

  def create
    if @<%= orm_instance.save %>
      redirect_to @<%= singular_table_name %>, notice: "#{<%= class_name %>.model_name.human} was successfully created."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @<%= singular_table_name %>.update(model_params)
      redirect_to @<%= singular_table_name %>, notice: "#{<%= class_name %>.model_name.human} was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @<%= orm_instance.destroy %>
    redirect_to <%= index_helper %>_url, notice: "#{<%= class_name %>.model_name.human} was successfully destroyed"
  end

  private

    def model_params
      <%- if attributes_names.empty? -%>
      params.require(<%= ":#{singular_table_name}" %>)
      <%- else -%>
      params.require(<%= ":#{singular_table_name}" %>).permit(<%= attributes_names.map { |name| ":#{name}" }.join(', ') %>)
      <%- end -%>
    end
end
<% end -%>
