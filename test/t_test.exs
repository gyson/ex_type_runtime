defmodule TTest do
  use ExUnit.Case
  doctest T

  test "greets the world" do
    assert T.hello() == :world
  end
end
