<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>
  # Extends & Includes

  # Associations (belongs_to, has_one, has_many, has_and_belongs_to_many, accepts_nested_attributes_for)
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %>
<% end -%>

  # Delegates

  # Validations

  # Scopes

  # Callbacks (before_create, before_save...)

  # Custom (as_activity, attache, bitmask, enum, friendly_id, monetize, pagination, ...)

  # Methods
end
<% end -%>
