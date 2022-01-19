# What's for dinner??

## Data model

- Food / FoodItem
  - pantryItem?
  - currentlyInKitchen?
  - name
  - macroType: protein, carb, veg, etc, herb, spice
- STI ?
  - carb
  - veg
  - protein
- Recipe
  - name - null false
  - protein_id
  - vegetabl_id
  - carb_id - if null, dinner option
  - fat_id - if null, lunch option
  - notes
  - recipe_link
- Preferences
  - is_six_week_challenge?
  - include_protein_shakes?
  - include_water_tracking?
- DailyMeal
  - date_of_meal
  - breakfast_recipe_id
  - lunch_recipe_id
  - dinner_recipe_id
