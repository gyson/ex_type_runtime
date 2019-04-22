defmodule T do
  @moduledoc """

  Minimal runtime support for [`ExType`](https://github.com/gyson/ex_type).

  It brings serveral useful typespecs and macros to

  ### Generic Protocol

      @spec map(T.p(Enumerable, x), (x -> y)) :: [y] when x: any(), y: any()

  Ideally, this should be `Enumerable.t(x)` instead, but `Enumerable.t/1` does not exist.
  Therefore, use `T.p(Enumerable, x)` to simulate it.

  ### Intersection Type Support

      @type intersection(protocol_1, protocol_2) :: T.&({protocol_1, protocol_2})

  ### Type Assertion

      x = 123

      # left side is expression, right side is typespec
      T.assert(x == integer())

  ### Type Inspection

      x = 123

      # print the type of `x` when using ex_type
      T.inspect x

  """

  # usage: T.&({a, b, c, d})
  # note: use `any() | x` instead of `any()` to avoid compiler error
  @type (&x) :: any() | x

  # T.p(Enumerable, x)
  # note: use `any() | x | y` instead of `any()` to avoid compiler error
  @type p(x, y) :: any() | x | y

  @doc """

  Inspect type while doing type checking.

  ## Example

      T.inspect {x, y}

  """

  defmacro inspect(expr, _opts \\ []) do
    quote(do: unquote(expr))
  end

  @doc """

  Assert type while doing type checking.

  ## Example

      x = 10
      T.assert x == integer()

      T.assert x :: integer() # cast x as integer when x is like any()

  """

  defmacro assert(_expr, _message \\ "") do
    quote(do: nil)
  end
end
