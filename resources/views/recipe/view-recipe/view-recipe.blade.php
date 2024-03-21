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

    <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
        <div class="overflow-hidden bg-white shadow-sm sm:rounded-lg">
            <section class="py-6 sm:py-6">
                <div class="container mx-auto px-4">
                    <div class="lg:col-gap-12 xl:col-gap-16 grid grid-cols-1 gap-12 lg:mt-12 lg:grid-cols-5 lg:gap-16">
                        <div class="lg:col-span-2 lg:row-span-2 lg:row-end-2">
                            <h1 class="sm: text-2xl font-bold text-gray-900 sm:text-3xl">
                                {{ Str::limit($recipes->title, 40) }}</h1>
                        </div>

                        <div class="lg:col-span-3 lg:row-end-1">
                            <div class="lg:flex lg:items-start">
                                <div class="lg:order-2 lg:ml-5">
                                    <div class="max-w-xl overflow-hidden rounded-lg">
                                        <img class="h-full w-full max-w-full object-cover"
                                            src="https://www.tasteofhome.com/wp-content/uploads/2018/01/Cherry-Delight-Dessert_EXPS_TOHcom23_27515_P2_MD_03_22_4b.jpg"
                                            alt="" />
                                    </div>
                                </div>

                                <div class="mt-2 w-full lg:order-1 lg:w-32 lg:flex-shrink-0">
                                    <div class="flex flex-row items-start lg:flex-col">
                                        <button type="button"
                                            class="flex-0 aspect-square mb-3 h-20 overflow-hidden rounded-lg border-2 border-gray-900 text-center">
                                            <img class="h-full w-full object-cover"
                                                src="https://www.tasteofhome.com/wp-content/uploads/2018/01/Cherry-Delight-Dessert_EXPS_TOHcom23_27515_P2_MD_03_22_4b.jpg"
                                                alt="" />
                                        </button>
                                        <button type="button"
                                            class="flex-0 aspect-square mb-3 h-20 overflow-hidden rounded-lg border-2 border-transparent text-center">
                                            <img class="h-full w-full object-cover"
                                                src="https://www.tasteofhome.com/wp-content/uploads/2018/01/Cherry-Delight-Dessert_EXPS_TOHcom23_27515_P2_MD_03_22_4b.jpg"
                                                alt="" />
                                        </button>
                                        <button type="button"
                                            class="flex-0 aspect-square mb-3 h-20 overflow-hidden rounded-lg border-2 border-transparent text-center">
                                            <img class="h-full w-full object-cover"
                                                src="https://www.tasteofhome.com/wp-content/uploads/2018/01/Cherry-Delight-Dessert_EXPS_TOHcom23_27515_P2_MD_03_22_4b.jpg"
                                                alt="" />
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="w-2/3">
                            <div class="relative right-0">
                                <ul class="relative flex flex-wrap p-1 list-none rounded-xl bg-blue-gray-50/60"
                                    data-tabs="tabs" role="list">
                                    <li class="z-30 flex-auto text-center">
                                        <a class="z-30 flex items-center justify-center w-full px-0 py-1 mb-0 transition-all ease-in-out border-0 rounded-lg cursor-pointer text-slate-700 bg-inherit"
                                            data-tab-target="" active="" role="tab" aria-selected="true"
                                            aria-controls="app">
                                            <span class="ml-1">Description</span>
                                        </a>
                                    </li>
                                    <li class="z-30 flex-auto text-center">
                                        <a class="z-30 flex items-center justify-center w-full px-0 py-1 mb-0 transition-all ease-in-out border-0 rounded-lg cursor-pointer text-slate-700 bg-inherit"
                                            data-tab-target="" role="tab" aria-selected="false"
                                            aria-controls="message">
                                            <span class="ml-1">Comments</span>
                                            <span
                                                class="ml-2 block rounded-full bg-gray-500 px-2 py-px text-xs font-bold text-gray-100">
                                                {{ count($recipes->comments) }} </span>
                                        </a>
                                    </li>
                                </ul>
                                <div data-tab-content="" class="p-5">
                                    <div class="block opacity-100" id="app" role="tabpanel">
                                        <p
                                            class="block font-sans text-base antialiased font-light leading-relaxed text-inherit text-blue-gray-500">
                                            {{ $recipes->description }}
                                        </p>
                                    </div>
                                    <div class="hidden opacity-0" id="message" role="tabpanel">

                                        @forelse ($recipes->comments as $comment)
                                            <div
                                                class="w-full rounded-lg bg-white text-left text-surface shadow-md">
                                                <div class="p-6">
                                                    <h6 class="text-base">{{ $comment->content }}</h6>
                                                </div>
                                            </div>
                                        @empty
                                            <div
                                                class="w-full rounded-lg bg-white text-left text-surface shadow-md">
                                                <div class="p-6">
                                                    <h6 class="text-base">No comments yet.</h6>
                                                </div>
                                            </div>
                                        @endforelse

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>


</x-app-layout>
