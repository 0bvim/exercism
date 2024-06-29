defmodule Secrets do
  # lib (or module) to use bitwise functions
  require Bitwise

  def secret_add(secret) do
    # defining anonymous function
    fn x -> x + secret end
  end

  def secret_subtract(secret) do
    fn x -> x - secret end
  end

  def secret_multiply(secret) do
    fn x -> secret * x end
  end

  def secret_divide(secret) do
    fn x -> floor(x / secret) end
  end

  def secret_and(secret) do
    # using bitwise function module
    fn value -> Bitwise.band(value, secret) end
  end

  def secret_xor(secret) do
    fn value -> Bitwise.bxor(value, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn value ->
      value
      # this '|>' is a pipe operator, like in bash
      # it concat functions calls together
      |> secret_function1.() # receive value pro value variable
      |> secret_function2.() # receive the value from return of previous function
    end
  end
end
