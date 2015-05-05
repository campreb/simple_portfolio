json.array!(@projects) do |project|
  json.extract! project, :id, :name, :category, :client, :url, :github, :description, :body
  json.url project_url(project, format: :json)
end
