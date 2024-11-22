defmodule Article do
  @behaviour PolyPost.Resource

  @enforce_keys [:key, :path, :title, :author, :date, :body]
  defstruct [:key, :path, :title, :author, :date, :body]

  # Callbacks

  @impl PolyPost.Resource
  def build(filename, metadata, body) do
    key = Path.basename(filename) |> Path.rootname(".md")

    %__MODULE__{
      key: key,
      path: Path.join("/articles", key),
      title: metadata["title"],
      author: metadata["author"],
      date: Date.from_iso8601!(metadata["date"]),
      body: body
    }
  end
end
