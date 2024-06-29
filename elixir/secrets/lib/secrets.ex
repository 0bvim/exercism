defmodule Secrets do
  require Bitwise
  def secret_add(secret) do
    fn(x) -> x + secret end
  end

  def secret_subtract(secret) do
    fn(x) -> x - secret end
  end

  def secret_multiply(secret) do
    fn(x) -> secret * x end
    # Please implement the secret_multiply/1 function
  end

  def secret_divide(secret) do
    fn(x) -> floor(x/secret) end
  end

  def secret_and(secret) do
    fn value -> Bitwise.band(value, secret) end
  end

  def secret_xor(secret) do
    fn(value) -> Bitwise.bxor(value, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn(value) ->
      value
      |> secret_function1.()
      |> round()
      |> secret_function2.()
      |> round()
      end
  end
end
