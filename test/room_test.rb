require_relative 'test_helper'

describe "Room" do 

  describe "Initialize" do
    number = 1
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

    # it "keeps track of unavailable dates for that room" do
    #   expect(room).must_respond_to :unavailable_dates
    #   expect(room.unavailable_dates).must_equal []
    # end

    # it "keeps track of reservations for that room" do
    #   expect(room).must_respond_to :reservations
    #   expect(room.reservations).must_be_kind_of Array
    # end

    it "raises an argument error if room number is invalid" do
      expect { HotelBooking::Room.new(number: 0) }.must_raise ArgumentError
      expect { HotelBooking::Room.new(number: 21) }.must_raise ArgumentError
    end

    # room price is 200
    
  end



  # describe "add_reservation" do

  

end