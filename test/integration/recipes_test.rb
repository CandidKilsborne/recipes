require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.create!(name: "Aaron", email: "aaron@example.com")
    @recipe = @user.recipes.build(name: "Vegetable Curry", description: "Great vegetable curry")
    @recipe.save
    @recipe2 = @user.recipes.build(name: "Pizza", description: "Yummy pizza")
    @recipe2.save
  end
  
  test "should get recipes index" do
    get recipes_url
    assert_response :success
  end

  test "should get recipes listing" do
    get recipes_url
    assert_template 'recipes/index'
    assert_match @recipe.name, response.body
    assert_match @recipe2.name, response.body
  end

end
