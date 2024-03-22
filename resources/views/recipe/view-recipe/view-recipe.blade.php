<?php 
use Carbon\Carbon;
?>
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

    <div class="mx-auto max-w-7xl sm:px-6 lg:px-8 py-8">
        <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg py-8">
            <section class="py-4 sm:py-0">
                <div class="container mx-auto px-4">
                    <div
                        class="lg:col-gap-12 xl:col-gap-10 mt-8 grid grid-cols-1 gap-6 lg:mt-12 lg:grid-cols-5 lg:gap-4">
                        <div class="lg:col-span-3 lg:row-end-1">
                            <div class="lg:flex lg:items-start">
                                <div class="lg:order-2 lg:ml-5">
                                    <div class="max-w-xl overflow-hidden rounded-lg">
                                        <img class="w-full object-cover"
                                            src="https://www.tasteofhome.com/wp-content/uploads/2018/01/Cherry-Delight-Dessert_EXPS_TOHcom23_27515_P2_MD_03_22_4b.jpg"
                                            alt="" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="lg:col-span-2 lg:row-span-2 lg:row-end-2">
                            <h1 class="sm:text-2xl font-bold text-gray-900 sm:text-3xl">{{ $recipes->title }}</h1>
                            <ul class="mt-4 space-y-2">
                                <li class="flex items-center text-left text-sm font-medium text-gray-600">
                                    {{ $recipes->description }}
                                </li>
                            </ul>

                            <div class="grid grid-cols-2 mt-4 p-2 bg-pink-50">
                                <div
                                    class="flex items-center justify-center text-sm font-medium text-gray-600 border-r pr-4">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                    </svg>
                                    <p>Preparation Time</p>
                                </div>
                                <div class="flex items-center justify-center text-sm font-medium text-gray-600 pl-4">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M15.362 5.214A8.252 8.252 0 0 1 12 21 8.25 8.25 0 0 1 6.038 7.047 8.287 8.287 0 0 0 9 9.601a8.983 8.983 0 0 1 3.361-6.867 8.21 8.21 0 0 0 3 2.48Z" />
                                        <path stroke-linecap="round" stroke-linejoin="round"
                                            d="M12 18a3.75 3.75 0 0 0 .495-7.468 5.99 5.99 0 0 0-1.925 3.547 5.975 5.975 0 0 1-2.133-1.001A3.75 3.75 0 0 0 12 18Z" />
                                    </svg>
                                    <p>Cooking Time</p>
                                </div>
                            </div>

                            <div class="grid grid-cols-2 p-2 bg-pink-100">
                                <div class="flex items-center  justify-center text-sm font-medium text-gray-600 pr-4">
                                    <strong>{{ $recipes->preparation_time }} mins</strong>
                                </div>
                                <div class="flex items-center justify-center text-sm font-medium text-gray-600 pl-4">
                                    <strong>{{ $recipes->cooking_time }} mins</strong>
                                </div>
                            </div>
                        </div>

                        <div class="lg:col-span-full lg:mx-12">
                            <div class="flex text-sm font-medium text-gray-600 pr-4">
                                <div class="w-full border-gray-300">
                                    <nav class="flex gap-4">
                                        <a href="#" title=""
                                            class="border-b-2 border-gray-900 py-4 text-sm font-medium text-gray-900 hover:border-gray-400 hover:text-gray-800">
                                            Ingredient</a>
                                    </nav>
                                    <div class="mt-8 flow-root sm:mt-4">
                                        @foreach (json_decode($recipes->ingredient, true) as $ingredient)
                                            <p class="mt-4">{{ $ingredient['name'] }} - {{ $ingredient['quantity'] }}
                                            </p>
                                        @endforeach
                                    </div>
                                </div>

                                <div class="w-full border-gray-300">
                                    <nav class="flex gap-4">
                                        <a href="#" title=""
                                            class="border-b-2 border-gray-900 py-4 text-sm font-medium text-gray-900 hover:border-gray-400 hover:text-gray-800">
                                            Instruction</a>
                                    </nav>
                                    <div class="mt-8 flow-root sm:mt-4">
                                        @foreach (json_decode($recipes->instruction, true) as $ingredient)
                                            <p class="mt-4">{{ $ingredient['step'] }}
                                            </p>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="lg:col-span-full lg:mx-12">
                            <div class="flex text-sm font-medium text-gray-600 pr-4">
                                <div class="w-full border-gray-300">
                                    <nav class="flex gap-4">
                                        <a title=""
                                            class="border-b-2 border-gray-900 py-4 text-sm font-medium text-gray-900 hover:border-gray-400 hover:text-gray-800">
                                            Comment <span class="inline-flex items-center rounded-md bg-gray-50 px-2 py-1 text-xs font-medium text-gray-600 ring-1 ring-inset ring-gray-500/10">{{count($recipes->comments)}}</span>                                        </a>
                                    </nav>

                                    @foreach($recipes->comments as $comment)
                                    <div
                                        class="my-8 flex max-w-screen-sm rounded-xl border border-gray-100 p-4 text-left text-gray-600 shadow-lg sm:p-8">
                                        <div class="w-full text-left">
                                            <div class="mb-2 flex flex-col justify-between text-gray-600 sm:flex-row">
                                                <h3 class="font-medium">{{$comment->user->name}}</h3>
                                                <time class="text-xs" datetime="2022-11-13T20:00Z">{{ Carbon::parse($comment->created_at)->format('F j, Y \a\t h:i A');}}</time>
                                            </div>
                                            <p class="text-sm">{{$comment->content}}
                                            </p>
                                            
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>


</x-app-layout>
