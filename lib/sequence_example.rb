require_relative 'sequence'

class SequenceExample
  sequence = Sequence.new("11")

  5.times do
    puts sequence = sequence.next
  end
end
