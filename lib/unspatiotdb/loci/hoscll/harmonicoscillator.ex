# Santiago Nunez-Corrales @ 2019
#
# University of Illinois at Urbana-Champaign

defprotocol UnSpatioTDB.Loci.HarmonicOscillator do
  @doc "Re-parameterize a harmonic oscillator"
  def reparameterize(hosc, params)

  @doc "Perturb the position of a harmonic oscillator"
  def perturb(hosc, parameter, ints_value)

  @doc "Calculate the effect on the position with current parameters"
  def integrate(hosc)

end
