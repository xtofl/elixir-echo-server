defmodule EchoServerTest do
  use ExUnit.Case

  test "sends back an echo" do
    assert Echo.reply("hi") == "hi"
  end
end
