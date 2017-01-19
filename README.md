# PlugCowboy2

This is an adapter for Cowboy 2 based off of the work on @potatosalad's fork
available at https://github.com/potatosalad/plug/tree/cowboy2

## Installation

  1. Add `plug_cowboy2` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:plug_cowboy2, github: "voicelayer/plug_cowboy2"}]
    end
    ```

  2. Ensure `plug_cowboy2` is started before your application:

    ```elixir
    def application do
      [applications: [:plug_cowboy2]]
    end
    ```

## Sample Application

### Plug

A sample application with plug is available at
https://github.com/voicelayer/plug_http2_example

### Phoenix

In order to use Phoenix, the [phoenix_cowboy2]
(https://github.com/voicelayer/phoenix_cowboy2) application is required.

A sample application with plug is available at
https://github.com/voicelayer/phoenix_http2_example
