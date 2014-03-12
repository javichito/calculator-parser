require './parser'

class TestLanguageParser
  describe 'Testing the Parser' do
    before do
      @evaluator = Calculator.new
    end

    it 'tests for a digit' do
      @result = @evaluator.parse("2")
      @result.should == 2
    end

    it 'tests for addition' do
      @result = @evaluator.parse("2+2")
      @result.should == 4
    end

    it 'tests for substraction' do
      @result = @evaluator.parse("2-2")
      @result.should == 0
    end

    it 'tests for multiply' do
      @result = @evaluator.parse("2*2")
      @result.should == 4
    end

    it 'tests for divition' do
      @result = @evaluator.parse("2/2")
      @result.should == 1
    end

    it 'tests for calculates with spaces' do
      @result = @evaluator.parse("2 + 2")
      @result.should == 4
    end

    it 'tests nested operations' do
      @result = @evaluator.parse("2 - 2 + 2 * 2 / 4")
      @result.should == 1
    end
  end
end