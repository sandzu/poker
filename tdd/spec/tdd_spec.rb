require "tdd"

RSpec.describe Array do
  describe "#my_uniq" do
    it "returns an array" do
      expect([].my_uniq).to be_an(Array)
    end

    it "returns an Array of unique elements"do
      array = [1,1,2,2]
      expect(array.my_uniq).to eq([1,2])
    end

    it "does not call uniq on self" do
      array = []
      expect(array).to_not receive(:uniq)
      array.my_uniq
    end

  end

  describe "#two_sum" do
    array = [-1,0,2,-2,1] # =>
    res = [[0, 4], [2, 3]]
    it "returns an array" do
      expect([].two_sum).to be_an(Array)
    end

    it "finds all pairs of positions where the elements at those positions sum to zero " do
      expect(array.two_sum).to eq(res)
    end

    it "doesnt add elements at the same index" do
      array = [1,0]
      expect(array.two_sum).to_not eq([1,1])
    end

  end

  describe "#my_transpose" do
    row = [ [1, 2, 3 ] ]
    col = [ [1], [2], [3] ]
    it "returns an array" do
      expect([].my_transpose).to be_an(Array)
    end

    it "transposes a row into a column" do
      expect(row.my_transpose).to eq(col)
    end

    it "transposes a column into a row" do
      expect(col.my_transpose).to eq(row)
    end

    it "transposes a square matrix" do
      cols = [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]
      rows = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]
      expect(rows.my_transpose).to eq(cols)
    end

  end

  describe "#stock_picker" do
    it "returns a pair of days" do
      expect([1,2,3,4,5,6].stock_picker).to be_an(Array)
      expect([1,2,3,4,5,6].stock_picker.length).to eq(2)
    end

    it "returns sell date after buy date" do
      res = [1,2,3,4,5,6,7].stock_picker
      expect(res[0]).to be < res[1]
    end

    it "selects most profitable dates" do
      expect([1,2,3,4,5,6].stock_picker).to eq([0,5])
      expect([1,2,0,10,5,6].stock_picker).to eq([2,3])
    end

    it "returns nil if given an array with less than 2 days" do
      expect([1].stock_picker).to eq(nil)
    end

  end


end
