require_relative 'test_helper'

describe "Room" do 

  describe "Initialize" do
    let(:number) { 1 }
    let(:room) { HotelBooking::Room.new(number: number) }
    
    it "creates a new instance of Room" do
      expect(room).must_be_instance_of HotelBooking::Room
    end

    it "keeps track of room number as an integer" do
      expect(room).must_respond_to :number
      expect(room.number).must_equal 1
      expect(room.number).must_be_instance_of Integer
    end

    it "keeps track of room cost as an integer of 200" do
      expect(room).must_respond_to :cost
      expect(room.cost).must_equal 200
      expect(room.cost).must_be_instance_of Integer
    end

    it "knows if a room is part of a block" do
      expect(room).must_respond_to :in_block
    end

    it "can override the default cost of room" do
      room = HotelBooking::Room.new(number: 2)
      room.cost = 150
      expect(room.cost).must_equal 150
    end

    it "raises an argument error if room number is invalid" do
      expect { HotelBooking::Room.new(number: 0) }.must_raise ArgumentError
      expect { HotelBooking::Room.new(number: 21) }.must_raise ArgumentError
    end
    
  end

end