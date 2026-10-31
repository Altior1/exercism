defmodule RationalNumbers do
  @type rational :: {integer, integer}

  @doc """
  Add two rational numbers
  """
  @spec add(a :: rational, b :: rational) :: rational
  def add(a, b) do
    {a1, a2} = a
    {b1, b2} = b
    {a1 * b2 + b1 * a2, a2 * b2}
  end

  @doc """
  Subtract two rational numbers
  """
  @spec subtract(a :: rational, b :: rational) :: rational
  def subtract(a, b) do
    {a1, a2} = a
    {b1, b2} = b
    {a1 * b2 - b1 * a2, a2 * b2}
  end

  @doc """
  Multiply two rational numbers
  """
  @spec multiply(a :: rational, b :: rational) :: rational
  def multiply(a, b) do
    {a1, a2} = a
    {b1, b2} = b
    {a1 * b1, a2 * b2}
  end

  @doc """
  Divide two rational numbers
  """
  @spec divide_by(num :: rational, den :: rational) :: rational
  def divide_by(num, den) do
    {n1, n2} = num
    {d1, d2} = den
    {n1 * d2, n2 * d1}
  end

  @doc """
  Absolute value of a rational number
  """
  @spec abs(a :: rational) :: rational
  def abs(a) do
    {n, d} = a
    {Kernel.abs(n), Kernel.abs(d)}
  end

  @doc """
  Exponentiation of a rational number by an integer
  """
  @spec pow_rational(a :: rational, n :: integer) :: rational
  def pow_rational(a, n) do
    {a1, a2} = a
    {a1 ** n, a2 ** n}
  end

  @doc """
  Exponentiation of a real number by a rational number
  """
  @spec pow_real(x :: integer, n :: rational) :: float
  def pow_real(x, n) do
    {n1, n2} = n
    x ** (n1 / n2)
  end

  @doc """
  Reduce a rational number to its lowest terms
  """
  @spec reduce(a :: rational) :: rational
  def reduce(a) do
    {n, d} = a
    gcd = Integer.gcd(n, d)
    {div(n, gcd), div(d, gcd)}
  end
end
