class Calculator
macro
  BLANK         \s+
  DIGIT         \d+
  ADD           \+
  SUBSTRACT     \-
  MULTIPLY      \*
  DIVIDE        \/

rule
  {BLANK}       # do nothing
  {DIGIT}       { [:DIGIT, text.to_i] }
  {ADD}         { [:ADD, text] }
  {SUBSTRACT}   { [:SUBSTRACT, text] }
  {MULTIPLY}    { [:MULTIPLY, text] }
  {DIVIDE}      { [:DIVIDE, text] }

inner
  def tokenize(code)
    scan_setup(code)
    tokens = []
    while token = next_token
      tokens << token
    end
    tokens
  end
end