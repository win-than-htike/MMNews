json.data do
    json.array! @news, partial: "news/news", as: :news
end
