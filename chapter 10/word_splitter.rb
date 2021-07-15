# frozen_string_literal: true

class WordSplitter
  include Enumerable

  attr_accessor :string

  def each
    string.split(' ').each do |word|
      yield word
    end
  end
end
