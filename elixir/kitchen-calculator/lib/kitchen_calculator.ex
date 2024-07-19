defmodule KitchenCalculator do
  def get_volume({_unit, volume}), do: volume

  # defining milliliter functions 
  def to_milliliter({:cup, volume}), do: {:milliliter, volume * 240}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, volume * 30}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, volume * 5}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, volume * 15}
  def to_milliliter({:milliliter, volume}), do: {:milliliter, volume}

  def from_milliliter({:milliliter, volume}, :cup), do: {:cup, volume / 240}
  def from_milliliter({:milliliter, volume}, :fluid_ounce), do: {:fluid_ounce, volume / 30}
  def from_milliliter({:milliliter, volume}, :teaspoon), do: {:teaspoon, volume / 5}
  def from_milliliter({:milliliter, volume}, :tablespoon), do: {:tablespoon, volume / 15}
  def from_milliliter({:milliliter, volume}, :milliliter), do: {:milliliter, volume}

  def convert(volume_pair, targe_unit) do
    ml_volume = to_milliliter(volume_pair)
    from_milliliter(ml_volume, targe_unit)
  end
end

# Convert 2.5 cups to milliliters
IO.inspect(KitchenCalculator.to_milliliter({:cup, 2.5}))
# => {:milliliter, 600.0}

# Convert 1320 milliliters to cups
IO.inspect(KitchenCalculator.from_milliliter({:milliliter, 1320.0}, :cup))
# => {:cup, 5.5}

# Directly convert 9 teaspoons to tablespoons
IO.inspect(KitchenCalculator.convert({:teaspoon, 9.0}, :tablespoon))
# => {:tablespoon, 3.0}
