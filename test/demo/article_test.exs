defmodule ArticleTest do
  use ExUnit.Case

  @filename "my_article.md"
  @title "My Article"
  @author "Me"
  @metadata [title: @title, author: @author]
  @body "This is my article."

  describe ".build/3" do
    test "it returns a map" do
      assert %Article{
        key: @filename,
        title: @title,
        author: @author,
        body: @body
      } = Article.build(@filename, @metadata, @body)
    end
  end
end
