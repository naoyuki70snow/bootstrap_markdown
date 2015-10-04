json.array!(@md_editors) do |md_editor|
  json.extract! md_editor, :id, :markdown
  json.url md_editor_url(md_editor, format: :json)
end
