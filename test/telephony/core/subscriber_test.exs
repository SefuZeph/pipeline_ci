defmodule Telephony.Core.SubscriberTest do
  use ExUnit.Case
  alias Telephony.Core.Subscriber

  test "create a subscriber" do
    # given
    payload = %{full_name: "Gustavo", phone_number: "123", subscriber_type: :prepaid}
    # when
    result = Subscriber.new(payload)
    # then
    expect = %Subscriber{
      full_name: "Gustavo",
      phone_number: "123",
      subscriber_type: :prepaid
    }

    assert expect == result
  end
end
