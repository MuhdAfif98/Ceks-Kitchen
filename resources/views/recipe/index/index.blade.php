<x-app-layout>
    <div class="py-4">
        <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
            <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 flex justify-between items-center">
                    <p>{{ __('My Recipe') }}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="mx-auto max-w-7xl sm:px-6 lg:px-8 pb-4">
        <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg">
            <div class="p-6 text-gray-900 flex justify-between items-center">
                <div class="max-w-screen-xl mx-auto p-5 sm:p-10 md:p-0">
                    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-5">
                        <!-- Add new recipe -->
                        <div
                            class="rounded overflow-hidden shadow-lg flex flex-col items-center justify-center text-center">
                            <a href="/new-recipe">
                                <x-ceks.add-recipe-button></x-ceks.add-recipe-button>
                                <p
                                    class="font-medium text-lg inline-block hover:text-indigo-600 transition duration-500 ease-in-out inline-block mb-2 pointer-events-none">
                                    Add new recipe</p>
                            </a>
                        </div>

                        {{-- Card recipe --}}
                        @foreach ($recipes as $recipe)
                            <div class="rounded overflow-hidden shadow-lg flex flex-col">
                                <a href="/recipe-details/{{ $recipe->id }}"></a>
                                <div class="relative"><a href="/recipe-details/{{ $recipe->id }}">
                                        <img class="w-full" src="{{ asset('storage/' . $recipe->image) }}"
                                            alt="Sunset in the mountains">
                                        <div
                                            class="hover:bg-transparent transition duration-300 absolute bottom-0 top-0 right-0 left-0 bg-gray-900 opacity-25">
                                        </div>
                                    </a>
                                </div>
                                <div class="px-6 py-4 mb-auto">
                                    <a href="/recipe-details/{{ $recipe->id }}"
                                        class="font-medium text-lg inline-block hover:text-indigo-600 transition duration-500 ease-in-out inline-block mb-2">{{ Str::limit($recipe->title, 15) }}
                                    </a>
                                    <p class="text-gray-500 text-sm">
                                        {{ $recipe->description }} </p>
                                </div>
                                <div class="px-6 py-3 flex flex-row items-center justify-between bg-gray-100">
                                    <span href="/recipe-details/{{ $recipe->id }}"
                                        class="py-1 text-xs font-regular text-gray-900 mr-1 flex flex-row items-center">
                                        <svg height="13px" width="13px" version="1.1" id="Layer_1"
                                            xmlns="http://www.w3.org/2000/svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                            viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;"
                                            xml:space="preserve">
                                            <g>
                                                <g>
                                                    <path
                                                        d="M256,0C114.837,0,0,114.837,0,256s114.837,256,256,256s256-114.837,256-256S397.163,0,256,0z M277.333,256 c0,11.797-9.536,21.333-21.333,21.333h-85.333c-11.797,0-21.333-9.536-21.333-21.333s9.536-21.333,21.333-21.333h64v-128 c0-11.797,9.536-21.333,21.333-21.333s21.333,9.536,21.333,21.333V256z">
                                                    </path>
                                                </g>
                                            </g>
                                        </svg>
                                        <span class="ml-1">{{ $recipe->created_at->diffForHumans() }}</span>
                                    </span>

                                    <span href="#"
                                        class="py-1 text-xs font-regular text-gray-900 mr-1 flex flex-row items-center">
                                        <svg class="h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z">
                                            </path>
                                        </svg>
                                        <span class="ml-1">{{ count($recipe->comments) }}</span>
                                    </span>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>


</x-app-layout>
