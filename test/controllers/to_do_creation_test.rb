require_relative '../test_helper'
class ToDoCreationTest < Minitest::Test
  include TestHelpers

  def test_the_application_can_add
    # Send request to endpoint that creates a new to-do item
    # with a title of 'Learn to test controllers' and a description 'This is great'
    # Assert that the controller responds with a status of 200
    # Assert that the controller responds with a body of 'List-item created'
    # Assert that the ToDo table has an item in it
  end
end
