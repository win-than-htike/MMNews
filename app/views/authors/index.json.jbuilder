json.data do
    json.array! @authors, partial: "authors/author", as: :author
end
