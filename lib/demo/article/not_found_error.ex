defmodule Demo.Article.NotFoundError do
  defexception [:message, plug_status: 404]
end
