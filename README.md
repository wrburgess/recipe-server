# recipe server

*A recipe server for the recipe app*

## Tasks

### Server Tasks

* wireframe designs
* server app setup
* server seed data
* browser views
* crud for users
* crud for admins
* api construction

### Client Tasks

* native client construction

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

### Step
belongs_to :recipe
has_many :ingredients
has_many :tools
* name
* description
* type
* weight

### Ingredient
has_many :steps
* name

### Tool
has_many :steps

### Image
* name
* reference

### ImageUse
belongs_to :image
use_type: [:recipe, :step, :ingredient, :tool]