require 'byebug'
class Sequence

  def initialize(array = [1])
    @sequence = array
  end

  # @return [Sequence]
  def next
    prev_number = @sequence[0]
    prev_counter = 1
    new_sequence = []
    @sequence.each_index do |index|
      raise ArgumentError if @sequence[index].negative?

      unless index.zero?
        if prev_number == @sequence[index]
          prev_counter += 1
        else
          new_sequence.push prev_counter
          new_sequence.push prev_number
          prev_number = @sequence[index]
          prev_counter = 1
        end
      end
    end
    new_sequence.push prev_counter
    new_sequence.push prev_number
    Sequence.new(new_sequence)
  end

  # @return [Sequence]
  def prev
    if @sequence.size <= 1
      Sequence.new []
    else
      new_sequence = []
      i = 0
      while i < @sequence.size
        @sequence[i].times do
          new_sequence.push @sequence[i + 1]
        end
        i += 2
      end
      Sequence.new(new_sequence)
    end
  end

  def to_s
    @sequence.join
  end
end
