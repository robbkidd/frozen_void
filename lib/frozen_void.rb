# A source of unalterable emptiness.
#
module FrozenVoid
  require "set"

  IMMUTABLE_EMPTY_SET = Set.new.freeze

  # @example is empty
  #   a_set = FrozenVoid.set
  #   a_set.empty? #=> true
  # @example cannot be added to
  #   a_set = FrozenVoid.set
  #   a_set.add(:warmth) #=> raise FrozenError, "can't modify frozen Hash: {}"
  # @example is the same object as some other set from the void
  #   a_set = FrozenVoid.set
  #   another_set = FrozenVoid.set
  #   a_set.equal?(another_set) #=> true
  #
  # @return [Set] a Set eternally empty
  def self.set
    IMMUTABLE_EMPTY_SET
  end

  IMMUTABLE_EMPTY_ARRAY = [].freeze

  # @example is empty
  #   an_array = FrozenVoid.array
  #   an_array.empty? #=> true
  # @example cannot be added to
  #   an_array = FrozenVoid.array
  #   an_array.push(:warmth) #=> raise FrozenError, "can't modify frozen Array: []"
  # @example is the same object as some other array from the void
  #   an_array = FrozenVoid.array
  #   another_array = FrozenVoid.array
  #   an_array.equal?(another_array) #=> true
  #
  # @return [Array] an Array never to be filled
  def self.array
    IMMUTABLE_EMPTY_ARRAY
  end

  IMMUTABLE_EMPTY_STRING = "".freeze

  # @example is empty
  #   a_string = FrozenVoid.string
  #   a_string.empty? #=> true
  # @example cannot be modified
  #   a_string = FrozenVoid.string
  #   a_string.upcase! #=> raise FrozenError, "can't modify frozen String: \"\""
  # @example is the same object as some other string from the void
  #   a_string = FrozenVoid.string
  #   another_string = FrozenVoid.string
  #   a_string.equal?(another_string) #=> true
  #
  # @return [String] a String forever bereft of character
  def self.string
    IMMUTABLE_EMPTY_STRING
  end
end
