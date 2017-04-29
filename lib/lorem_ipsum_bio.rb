# The main Lorem Ipsum Bio class
class LoremIpsumBio

  # Generate random string by sampling an array
  #
  # Examples:
  #   >> LoremIpsumBio.random_string(3, ['a', 'b', 'c'])
  #   => "bac"
  #   >> LoremIpsumBio.random_string(2, ['who', 'am', 'I'])
  #   => "Iam"
  #
  # Arguments:
  #  n: (Integer)
  #  a: (Array)
  def self.random_string(n, a)
    out_str = ''
    n.times { out_str << a.sample }

    out_str
  end

  # Generate random DNA fragment
  #
  # Example:
  #   >> LoremIpsumBio.random_DNA(3)
  #   => "TGA"
  #
  # Arguments:
  #  n: (Integer)
  def self.random_DNA(n)
    random_string(n, ['A', 'C', 'G', 'T'])
  end

  # Generate random RNA fragment
  #
  # Example:
  #   >> LoremIpsumBio.random_RNA(3)
  #   => "UGA"
  #
  # Arguments:
  #  n: (Integer)
  def self.random_RNA(n)
    random_string(n, ['A', 'C', 'G', 'U'])
  end

  # Generate random protein fragment
  #
  # Example:
  #   >> LoremIpsumBio.random_protein(3)
  #   => "WTF"
  #
  # Arguments:
  #  n: (Integer)
  def self.random_protein(n)
    random_string(n, ['A', 'C', 'D', 'E',
                      'F', 'G', 'H', 'I',
                      'K', 'L', 'M', 'N',
                      'P', 'Q', 'R', 'S',
                      'T', 'W', 'V', 'Y'])
  end
end
