require 'minitest/autorun'
require 'lorem_ipsum_bio'

class LoremIpsumBioTest < Minitest::Test
  def test_random_DNA
    s = LoremIpsumBio.random_DNA(10)
    assert_match(/^[ACGT]*$/, s)
    assert_equal(10, s.size)
  end

  def test_random_RNA
    s = LoremIpsumBio.random_RNA(10)
    assert_match(/^[ACGU]*$/, s)
    assert_equal(10, s.size)
  end

  def test_random_protein
    s = LoremIpsumBio.random_protein(10)
    assert_match(/^[ACDEFGHIKLMNPQRSTWVY]*$/, s)
    assert_equal(10, s.size)
  end

  def test_random_string
    s = LoremIpsumBio.random_string(0, ['a','b','c'])
    assert_kind_of(String, s)
    assert_empty s

    s = LoremIpsumBio.random_string(10, ['a','b','c'])
    assert_match(/^[abc]*$/, s)
    assert_equal(10, s.size)

    s = LoremIpsumBio.random_string(3, ['a'])
    assert_equal('aaa', s)
  end
end
