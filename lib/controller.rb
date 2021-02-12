require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    name = @view.ask_user_for("name")
    description = @view.ask_user_for("description")
    recipe = Recipe.new(name, description)
    @cookbook.add(recipe)
  end

  def destroy
    display_recipes
    index = @view.ask_user_for_index
    @cookbook.remove_recipe(index)
    display_recipes
  end

  private

  def display_recipes
    recipes = @cookbook.all
    @view.display(recipes)
  end
end