# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(img:, title:, text:, href:)
    @img = img
    @title = title
    @text = text
    @href = href
  end
end
