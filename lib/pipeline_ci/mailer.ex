defmodule PipelineCi.Mailer do
  @moduledoc """
  This module provides a public API for all search queries originating
  in the web layer.
  """
  use Swoosh.Mailer, otp_app: :pipeline_ci
end
