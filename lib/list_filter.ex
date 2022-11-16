defmodule ListFilter do
  require Integer

  def call(list) do
    parsed_numbers = Enum.map(list, fn(elem) -> Integer.parse(elem) end)

    odds = Enum.filter(parsed_numbers, fn
      :error -> false
      {number, _} -> Integer.is_odd(number)
    end)

    Enum.count(odds)
  end
end
