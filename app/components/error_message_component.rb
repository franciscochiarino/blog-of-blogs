# frozen_string_literal: true

class ErrorMessageComponent < ViewComponent::Base
  def initialize(model:, field:)
    @model = model
    @field = field
  end
end
