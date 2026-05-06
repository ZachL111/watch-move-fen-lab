defmodule WatchMoveFenLab.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 58, slack: 22, drag: 14, confidence: 57}
    assert WatchMoveFenLab.DomainReview.score(item) == 153
    assert WatchMoveFenLab.DomainReview.lane(item) == "ship"
  end
end
