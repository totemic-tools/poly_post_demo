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

## How To

- [How to configure a PolyPost.Resource](https://github.com/totemic-tools/poly_post_demo/blob/main/config/dev.exs#L84)
- [How to map a PolyPost.Resource](https://github.com/totemic-tools/poly_post_demo/blob/main/lib/demo/article.ex)
- [How to query the PolyPost.Depot](https://github.com/totemic-tools/poly_post_demo/blob/main/lib/demo/query.ex)
- [How to route a PolyPost.Resource in Phoenix](https://github.com/totemic-tools/poly_post_demo/blob/main/lib/demo_web/router.ex)
- [How to setup a controller to retrieve a single/list of PolyPost.Resource](https://github.com/totemic-tools/poly_post_demo/blob/main/lib/demo_web/controllers/articles_controller.ex)
