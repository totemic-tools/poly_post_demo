# PolyPost Demo

## Summary

This is an Phoenix web application that shows how to use PolyPost.

## Running

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

## Building Content

By default, this demo app will run a `Task` on startup to run the
build process. You can also run at anytime to rebuild your content in
an `iEX` terminal:

```elixir
PolyPost.build_and_store_all!()
```

You'll have to call this somewhere in your app based on your own needs
to build everything.

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser and see some test articles.

## Things of Note

- [How to use PolyPost.Resource](https://github.com/totemic-tools/poly_post_demo/blob/main/lib/demo/article.ex)
