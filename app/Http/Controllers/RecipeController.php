<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Storage;
use App\Models\Category;
use App\Models\Recipe;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class RecipeController extends Controller
{
    public function index()
    {
        $recipes = Recipe::where('user_id', auth()->user()->id)->get();
        return view('recipe.index.index', [
            'recipes' => $recipes
        ]);
    }

    public function newRecipe()
    {
        $list =
            [
                'recipe_category' => Category::all(),
            ];

        return view('recipe.new-recipe.new-recipe', [
            'list' => $list
        ]);
    }

    public function createRecipe()
    {
        $validatedData = request()->validate([
            'image' => 'image|max:10240',
        ]);

        $imageName = Str::random(20) . '.' . request()->file('image')->getClientOriginalExtension();

        $directory = 'recipe_images';
        if (!Storage::exists($directory)) {
            Storage::makeDirectory($directory);
        }

        $userId = Auth::id();

        $imagePath = request()->file('image')->storeAs($directory, $imageName);

        Recipe::create([
            'user_id' => $userId,
            'title' => request()->title,
            'description' => request()->description,
            'category_id' => request()->recipe_category,
            'ingredient' => json_encode(request()->ingredient),
            'instruction' => json_encode(request()->instruction),
            'image' => $imagePath,
        ]);

        return redirect('/my-recipe');
    }

    public function getSingleRecipe($id)
    {
        $recipes = Recipe::find($id);

        return view('recipe.view-recipe.view-recipe', [
            'recipes' => $recipes
        ]);
    }
}
