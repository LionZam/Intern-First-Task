require_relative 'sequence'
class SequenceExample
  sequence = Sequence.new
  puts sequence
  5.times do
    sequence = sequence.next
    puts sequence
  end
  puts '---------------'
  5.times do
    sequence = sequence.prev
    puts sequence
  end
end