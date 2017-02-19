require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "update_document_test" do
    post '/user',headers: {
      id_token: 333333
    }, params: {
      email: 'k432@ymail.com',
      phone: '3333333333'
    }
    assert User.find_by({id_token: '333333'})[:email] == 'k432@ymail.com'
  end
end
