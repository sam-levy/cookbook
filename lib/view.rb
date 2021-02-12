class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}"
    end
  end

  def ask_user_for(something)
    puts "Please enter the #{something}"
    print "> "
    gets.chomp
  end

  def ask_user_for_index
    puts "Please select a recipe to delete" 
    gets.chomp.to_i - 1
  end
end