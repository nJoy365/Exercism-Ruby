class Complement
  def self.of_dna(strand)
    dna_rna = { "G" => "C", "C" => "G", "T" => "A", "A" => "U"}
    strand.chars.map{ |char| dna_rna[char]}.join("")
  end
end