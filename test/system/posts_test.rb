require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit posts_url
  #
  #   assert_selector "h1", text: "Post"
  # end

  test "visit new with param" do
    visit new_post_url(post: { title: 'Preset' })
    assert has_field?('Title', with: 'Preset')
  end
end
