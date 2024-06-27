defmodule FreelancerRates do
  @hours_day 8
  @work_days 22

  def daily_rate(hourly_rate) do
    hourly_rate * @hours_day * 1.0
  end

  def apply_discount(before_discount, discount) do
    before_discount * (1 - discount / 100.0)
  end

  def monthly_rate(hourly_rate, discount) do
    ceil(apply_discount(daily_rate(hourly_rate) * @work_days, discount))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_cost = apply_discount(daily_rate(hourly_rate), discount)
    days = budget / daily_cost
    Float.floor(days, 1)
  end
end
