require 'bike'

describe Bikes do
    it 'should respond to the working method' do
        bike = Bikes.new
        expect(bike).to respond_to :working?
    end
end