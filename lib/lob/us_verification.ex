defmodule Lob.USVerification do
  @moduledoc """
  Module implementing the Lob US verifications API.
  """

  use Lob.ResourceBase, endpoint: "us_verifications", methods: []

  @spec verify(map, map) :: Client.response
  def verify(data, headers \\ %{}) do
    Client.post_request(base_url(), Util.build_body(data), Util.build_headers(headers))
  end

end
