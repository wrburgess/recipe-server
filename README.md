# recipe companion

*Recipe app*

## Models
* Recipe
* Ingredient
* IngredientList
* Tool
* ToolList
* Step
* Timer
* Note

### Recipe
has_many :ingredients  
has_many :tools  
* name
* author 
* description
* calories
* prep_time
* cook_time
* servings

### Ingredient
has_many :steps
* name

### Step
has_many :ingredients  
has_many :tools
* name
* description
* type
* weight
