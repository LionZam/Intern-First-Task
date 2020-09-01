require 'byebug'

class Sequence
  attr_accessor :sequence

  def initialize(sequence = "")
    @sequence = sequence
  end

  def next
    sequence_dup = sequence.dup

    Sequence.new.tap do |new_sequence_object|
      while !sequence_dup.empty? do
        numbers_substr = sequence_dup.scan(/^#{sequence_dup[0]}*/).first
        new_sequence_object.sequence += numbers_substr.size.to_s + sequence_dup[0]
        sequence_dup.sub!(numbers_substr, "")
      end
    end
  end

  def +(arg)
    sequence + arg
  end

  def to_s
    sequence
  end
end
