json.extract! news, :id, :title, :head_line, :original_image, :thumbnail_image, :body, :created_at, :updated_at
json.author do
    json.merge! news.author
end
json.category do
    json.merge! news.category
end

