defmodule EchoServerTest do
  use ExUnit.Case

  test "returns error when accept fails" do
      mock = fn(10) -> {:error} end
    assert EchoServer.do_listen(10, mock) == {:error}
  end

  test "sends back an echo" do
    assert Echo.reply("hi") == "hi"
  end
end
