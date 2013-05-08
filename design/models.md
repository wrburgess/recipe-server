# Models

* Recipe
* Ingredient
* Tool
* ToolList
* Step
* Timer
* Note

## Recipe

has_many :steps
has_many :ingredients, :through => :steps  
has_many :tools, :through => :steps   

* name
* author
* description
* calories
* prep_time
* cook_time
* servings

## Step

belongs_to :recipe  
has_many :ingredients  
has_many :tools  

* name
* description
* type
* weight

## StepIngredient

* step_id
* ingredient_id
* amount

## StepTool

* step_id
* tool_id

## Ingredient

has_many :steps  

* name

## Tool

has_many :steps  

## Image

* name
* reference

## ImageUse

belongs_to :image  
use_type: [:recipe, :step, :ingredient, :tool]