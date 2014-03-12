class Calculator
rule
  Expressions :
      Expression                        { result = val[0] }
    | Expressions Operation Expression  { return val[0].send(val[1], val[2]) }
  ;

  Expression :
      DIGIT
    | DIGIT ADD DIGIT       { return val[0] + val[2] }
    | DIGIT SUBSTRACT DIGIT { return val[0] - val[2] }
    | DIGIT MULTIPLY DIGIT  { return val[0] * val[2] }
    | DIGIT DIVIDE DIGIT    { return val[0] / val[2] }
  ;

  Operation :
      ADD
    | SUBSTRACT
    | MULTIPLY
    | DIVIDE
  ;
end

----header
  require_relative 'lexer'

----inner
  def parse(input)
    scan_str(input)
  end
