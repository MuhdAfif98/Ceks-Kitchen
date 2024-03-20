<x-app-layout>
    <div class="py-4">
        <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
            <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 flex justify-between items-center">
                    <p>{{ __('My Recipe') }}</p>
                    <x-primary-button>New recipe</x-primary-button>
                </div>
            </div>
        </div>
    </div>

    <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
        <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg">
            <div class="p-6 text-gray-900 flex justify-between items-center">
                <p>{{ __('My Recipe') }}</p>
                <x-primary-button>New recipe</x-primary-button>
            </div>
        </div>
    </div>

    @livewire('Recipe.new-recipe')
</x-app-layout>
