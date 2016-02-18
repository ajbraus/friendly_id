require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
    @comment = comments(:one)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, post_id: @post.id, comment: { body: @comment.body }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  # test "should get destroy" do
  #   get :destroy
  #   assert_response :success
  # end

end
