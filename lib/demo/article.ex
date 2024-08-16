defmodule Article do
  @behaviour PolyPost.Resource

  @enforce_keys [:key, :title, :author, :body]
  defstruct [:key, :title, :author, :body]

  # Callbacks

  @impl PolyPost.Resource
  def build(reference, metadata, body) do
    %__MODULE__{
      key: reference,
      title: get_in(metadata, ["title"]),
      author: get_in(metadata, ["author"]),
      body: body
    }
  end
end
