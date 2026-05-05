defmodule WatchMoveFenLabTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 76, capacity: 86, latency: 22, risk: 22, weight: 13}
    assert WatchMoveFenLab.score(signal_case_1) == 92
    assert WatchMoveFenLab.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 64, capacity: 105, latency: 23, risk: 24, weight: 13}
    assert WatchMoveFenLab.score(signal_case_2) == 71
    assert WatchMoveFenLab.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 69, capacity: 79, latency: 26, risk: 25, weight: 6}
    assert WatchMoveFenLab.score(signal_case_3) == 14
    assert WatchMoveFenLab.classify(signal_case_3) == "review"
  end
end
