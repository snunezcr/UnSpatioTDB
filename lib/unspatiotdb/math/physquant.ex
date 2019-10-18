# Santiago Nunez-Corrales @ 2019
#
# University of Illinois at Urbana-Champaign

defprotocol UnSpatioTDB.Math.PhysQuant do
  @doc "Measure a physical quantity with a measurable outcome and effect"
  def measure(quantity)

  @doc "Change a physical quantity using a magnitude and direction"
  def change(quantity, magnitude, direction)

  @doc "Lookup the current value without the field disturbance - internal"
  def lookup(quantity)

  @doc "Obtain the zero of a physical quantity"
  def zero(quantity)

  @doc "Obtain the unity of a physical quantity"
  def unity(quantity)

  @doc "Compute, when possible, the inverse of a physical quantity"
  def inverse(quantity)

  @doc "Compute arithmetic operations"
  def add(qa, qb)
  def sub(qa, qb)
  def mul(qa, qb)
  def div(qa, qb)
  def pow(qa, qb)
  def exp(quantity)
  def sin(quantity)
  def cos(quantity)
  def tan(quantity)
  def sinh(quantity)
  def cosh(quantity)
  def tanh(quantity)
  def arcsin(quantity)
  def arccos(quantity)
  def arctan(quantity)
  def arcsinh(quantity)
  def arccosh(quantity)
  def arctanh(quantity)
end
