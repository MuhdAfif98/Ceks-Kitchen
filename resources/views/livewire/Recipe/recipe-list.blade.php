<div class="py-4">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-4">
            @foreach ($recipes as $recipe)
                <div class="p-6 text-gray-900 flex justify-start">
                    <a href="#"
                        class="flex flex-col items-center bg-white border border-gray-200 rounded-lg shadow md:flex-row w-screen">
                        <img class="object-cover w-full rounded-t-lg h-96 md:h-auto md:w-48 md:rounded-none md:rounded-s-lg"
                            src="https://i.pinimg.com/564x/d6/85/91/d68591385373187612bb0b9ae9cc21e4.jpg"
                            alt="">
                        <div class="flex flex-col justify-between p-4 leading-normal">
                            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900">
                                {{ Str::limit($recipe->title, 35) }}</h5>
                            <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">{{ $recipe->description }}
                            </p>
                            <x-primary-button class="w-1/2 justify-center">Read more</x-primary-button>
                        </div>
                    </a>
                </div>
            @endforeach
            {{ $recipes->links() }}
        </div>
    </div>
</div>