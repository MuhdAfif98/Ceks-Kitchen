<?php

namespace App\Livewire\Recipe;

use App\Models\Recipe;
use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Database\Eloquent\Builder;

class FilterRecipe extends Component
{

    use WithPagination;

    public $searchRecipe = "";

    public function render()
    {
        $recipes = Recipe::when($this->searchRecipe !== '', function (Builder $query) {
            return $query->where('title', 'like', '%' . $this->searchRecipe . '%');
        })->paginate(10);

        return view('livewire.recipe.filter-recipe', [
            'recipes' => $recipes
        ]);
    }
}
