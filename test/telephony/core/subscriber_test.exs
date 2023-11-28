defmodule Telephony.Core.SubscriberTest do
  use ExUnit.Case
  alias Telephony.Core.{Postpaid, Prepaid, Subscriber }

  test "create a prepaid subscriber" do
    # given
    payload = %{full_name: "Gustavo", phone_number: "123", subscriber_type: :prepaid}
    # when
    result = Subscriber.new(payload)
    # then
    expect = %Subscriber{
      full_name: "Gustavo",
      phone_number: "123",
      subscriber_type: %Prepaid{credits: 0, recharges: []}
    }

    assert expect == result
  end

  test "create a postpaid subscriber" do
    # given
    payload = %{full_name: "Gustavo", phone_number: "123", subscriber_type: :postpaid}
    # when
    result = Subscriber.new(payload)
    # then
    expect = %Subscriber{
      full_name: "Gustavo",
      phone_number: "123",
      subscriber_type: %Postpaid{spent: 0}
    }
    assert expect == result
  end

end
