require_relative '../lib/tictactoe'

describe TicTacToe do
  subject(:tictactoe) {described_class.new}

  it "should start in an incomplete state" do
    expect(tictactoe.check_complete).to eq false
  end

  context "wins" do
    (0..2).each do |row|
      it "should be complete if row #{row} is the same" do
        tictactoe.o_move(0,row)
        tictactoe.o_move(1,row)
        tictactoe.o_move(2,row)
        expect(tictactoe.check_complete).to eq true
      end
    end

    (0..2).each do |col|
      it "should be complete if column #{col} is the same" do
        tictactoe.o_move(col, 0)
        tictactoe.o_move(col, 1)
        tictactoe.o_move(col, 2)
        expect(tictactoe.check_complete).to eq true
      end
    end

    it "should be complete if a left hand diagonal is the same" do
      tictactoe.o_move(0,0)
      tictactoe.o_move(1,1)
      tictactoe.o_move(2,2)
      expect(tictactoe.check_complete).to eq true
    end

    it "should be complete if a left hand diagonal is the same" do
      tictactoe.x_move(0,0)
      tictactoe.x_move(1,1)
      tictactoe.x_move(2,2)
      expect(tictactoe.check_complete).to eq true
    end

    it "should be complete if a right hand diagonal is the same" do
      tictactoe.o_move(2,0)
      tictactoe.o_move(1,1)
      tictactoe.o_move(0,2)
      expect(tictactoe.check_complete).to eq true
    end
  end

  context "non wins" do
    it "should be complete if all cells filled" do
      tictactoe.x_move(0,0)
      tictactoe.x_move(0,2)
      tictactoe.x_move(1,1)
      tictactoe.x_move(2,0)
      tictactoe.x_move(2,2)
      tictactoe.o_move(0,1)
      tictactoe.o_move(1,0)
      tictactoe.o_move(1,2)
      tictactoe.o_move(2,1)
      expect(tictactoe.check_complete).to eq true
    end

    (0..2).each do |row|
      it "should not be complete if row #{row} is blocked" do
        tictactoe.o_move(0,row)
        tictactoe.x_move(1,row)
        tictactoe.o_move(2,row)
        expect(tictactoe.check_complete).to eq false
      end
    end

    (0..2).each do |col|
      it "should not be complete if column #{col} is blocked" do
        tictactoe.o_move(col, 0)
        tictactoe.o_move(col, 1)
        tictactoe.x_move(col, 2)
        expect(tictactoe.check_complete).to eq false
      end
    end

    it "should not be complete if a left hand diagonal is blocked" do
      tictactoe.o_move(0,0)
      tictactoe.x_move(1,1)
      tictactoe.o_move(2,2)
      expect(tictactoe.check_complete).to eq false
    end

    it "should not be complete if a right hand diagonal is blocked" do
      tictactoe.x_move(2,0)
      tictactoe.o_move(1,1)
      tictactoe.o_move(0,2)
      expect(tictactoe.check_complete).to eq false
    end
  end
end
