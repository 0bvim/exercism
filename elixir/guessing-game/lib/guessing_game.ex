defmodule GuessingGame do
  def compare(secret_number, guess \\ nil)
  def compare(_secret_number, :no_guess), do: "Make a guess"
  def compare(_secret_number, nil), do: "Make a guess"
  def compare(secret_number, guess) when secret_number == guess do
    "Correct"
  end

  def compare(secret_number, guess) when abs(secret_number - guess)  == 1 do
    "So close"
  end

  def compare(secret_number, guess) when secret_number < guess do
    "Too high"
  end

  def compare(secret_number, guess) when secret_number > guess do
    "Too low"
  end
end

