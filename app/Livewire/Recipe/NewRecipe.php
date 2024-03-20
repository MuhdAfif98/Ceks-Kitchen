<?php

namespace App\Livewire\Recipe;

use App\Livewire\Forms\RecipeForm;
use App\Models\Recipe;
use Livewire\Component;

class NewRecipe extends Component
{
    public $name;
    public $email;
    public $body;
    public function submit()
    {
        $validatedData = $this->validate([
            'name' => 'required|min:6',
            'email' => 'required|email',
            'body' => 'required',
        ]);
        Recipe::create($validatedData);
        return redirect()->to('/my-recipe');
    }

    public function render()
    {
        return view('livewire.recipe.new-recipe');
    }
}
