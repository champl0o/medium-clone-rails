require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should not save a post without content" do
    @post = Post.new
    @post.title = "Rails and Ruby"
    assert_not @post.save, "Saved the post without a content"
  end
end
