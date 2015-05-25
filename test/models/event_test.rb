require 'test_helper'

class EventTest < ActiveSupport::TestCase
  
  def setup
    @event = Event.new(title: "test event", description: "this is a test event for testing validations", start: "2015-05-13 00:00:00", finish: "2015-05-14 00:00:00", venue: "WEFC")
  end
  
  
  test "event should be valid" do
    assert @event.valid?
  end
  
  test "title should be present" do
    @event.title = " "
    assert_not @event.valid?
  end
  
  test "title should be at least 5 characters" do
    @event.title = "1234"
    assert_not @event.valid?
  end
  
  test "title should be less than 51 characters" do 
    @event.title = "a"*51
    assert_not @event.valid?
  end
  
  test "description should be present" do
    @event.description = " "
    assert_not @event.valid?
  end
  
  test "description must be at least 10 characters" do
    @event.description = "a"*9
    assert_not @event.valid?
  end
  
  test "description must be less than 201 characters" do
    @event.description = "a"*201
    assert_not @event.valid?
  end
  
  test "start should be present" do
    @event.start = ""
    assert_not @event.valid?
  end
  
  test "that start must be a datetime" do
    @event.start= "Fred"
    assert_not @event.valid?
  end
  
  test "finish can be blank" do
    @event.finish = ""
    assert @event.valid?
  end
  
  test "that finish must be a datetime" do
    @event.finish = "Fred"
    assert_not @event.valid?
  end
  
  test "finish date should be later than start date" do
    @event.finish = "2015-05-12 00:00:00"
    assert_not @event.valid?
  end

  test "venue must be present" do
    @event.venue = ""
    assert_not @event.valid?
  end
  
  test "venue must be at least 4 characters" do
    @event.venue = "abc"
    assert_not @event.valid?
  end

  test "venue must be less than 51 characters" do
    @event.venue = "a"*51
    assert_not @event.valid?
  end
  
  test "notes is less than 500 characters" do
    @event.notes = "a"*501
    assert_not @event.valid?
  end
  
end