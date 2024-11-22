defmodule DemoWeb.ArticlesController do
  use DemoWeb, :controller

  alias Demo.{
    Article,
    Query
  }

  # API

  def index(conn, _params) do
    articles = Query.all(:articles)
    render(conn, :index, articles: articles)
  end

  def show(conn, %{"id" => id}) do
    article = Query.find(:articles, id) ||
      raise Article.NotFoundError, "article with id=#{id} not found"

    render(conn, :show, page_title: page_title(article), article: article)
  end

  # Private

  defp page_title(article) do
    article.title <> " | written by angelo"
  end
end
