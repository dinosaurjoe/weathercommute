# frozen_string_literal: true

class ClockController < ApplicationController
  layout "hello_world"

  def index
    @hello_world_props = { name: "Stranger" }
  end
end
