<?php

namespace App\Livewire\Recipe;

use App\Models\Recipe;
use Livewire\Component;

class RecipeList extends Component
{
    public function render()
    {
        return view('livewire.recipe.recipe-list',[
            'recipes' => Recipe::paginate(5)
        ]);
    }
}
