require 'minitest/autorun'
require_relative '../lib/sequence'
class Tests < Minitest::Test

  def setup
    @sequence = Sequence.new([1, 1]).next
  end

  def test_next_sequence
    assert_equal(@sequence.to_s, '21')
  end

  def test_negative_sequence
    assert_raises(ArgumentError) do
      Sequence.new([2, -1, -5]).next
    end
  end

  def test_prev_sequence
    assert_equal(@sequence.prev.to_s, '11')
  end

  def test_empty_sequence
    empty_sequence = Sequence.new([])
    assert_equal(empty_sequence.next.to_s, '1')
  end


end