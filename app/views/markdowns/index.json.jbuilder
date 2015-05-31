json.array!(@markdowns) do |markdown|
  json.extract! markdown, :id, :markdown
  json.url markdown_url(markdown, format: :json)
end
