require 'byebug'
class Sequence

  def initialize(array = [1])
    raise ArgumentError if array.length.zero?

    @sequence = array
  end

  # @return [Sequence]
  def next
    new_sequence = []
    index = 0
    while index < @sequence.length
      number = @sequence[index]
      counter = 0
      while @sequence[index] == number && index < @sequence.length
        raise ArgumentError if @sequence[index].negative?

        counter += 1
        index += 1
      end
      new_sequence.push(counter)
      new_sequence.push(number)
    end
    Sequence.new(new_sequence)
  end

  # @return [Sequence]
  def prev
    new_sequence = []
    index = 0
    while index < @sequence.size
      @sequence[index].times do
        new_sequence.push @sequence[index + 1]
      end
      index += 2
    end
    Sequence.new(new_sequence)
  end

  def to_s
    @sequence.join
  end

end
