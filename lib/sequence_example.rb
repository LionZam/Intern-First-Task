require_relative 'sequence'
class SequenceExample
  sequence = Sequence.new([1, 1])
  5.times do
    puts sequence
    sequence = sequence.next
  end
  6.times do
    puts sequence
    sequence = sequence.prev
  end
end