# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
function addIngredientField() {
    var date = new Date();

    var mSec = date.getTime();

    idAttributIngredient_name = "recipe_ingredients_attributes_0_Ingredient_name".replace("0", mSec);

    nameAttributIngredient_name = "recipe[ingredients_attributes][0][Ingredient_name]".replace("0", mSec);

    var li = document.createElement("li");

    var inputIngredient_name = document.createElement("INPUT");
    inputIngredient_name.setAttribute("type", "text");
    inputIngredient_name.setAttribute("id", idAttributIngredient_name);
    inputIngredient_name.setAttribute("name", nameAttributIngredient_name);
    li.appendChild(inputIngredient_name);

    document.getElementById("myList").appendChild(li);

        $("#ingredientHeader").show();


}