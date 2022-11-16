defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "returns number of odd numbers in array" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      assert ListFilter.call(list) == 3
    end

    test "array without odd numbers" do
      list = ["2", "4", "6", "42", "banana", "6", "abc"]

      assert ListFilter.call(list) == 0
    end

    test "empty array" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
