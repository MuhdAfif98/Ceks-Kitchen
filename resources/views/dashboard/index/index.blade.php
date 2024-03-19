<x-app-layout>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    {{ __("You're logged in!") }}
                    <div
                        class="relative grid h-[40rem] w-full max-w-[28rem] flex-col items-end justify-center overflow-hidden rounded-xl bg-white bg-clip-border text-center text-gray-700">
                        <div
                            class="absolute inset-0 m-0 h-full w-full overflow-hidden rounded-none bg-transparent bg-[url('https://i.pinimg.com/564x/d6/85/91/d68591385373187612bb0b9ae9cc21e4.jpg')] bg-cover bg-clip-border bg-center text-gray-700 shadow-none">
                            <div
                                class="absolute inset-0 w-full h-full to-bg-black-10">
                            </div>
                        </div>
                        <div class="relative p-6 px-6 py-14 md:px-12">
                            <h5
                                class="block mb-4 font-sans text-xl antialiased font-semibold leading-snug tracking-normal text-gray-400">
                                Tania Andrew
                            </h5>
                            <img alt="Tania Andrew"
                                src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&amp;ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&amp;auto=format&amp;fit=crop&amp;w=1480&amp;q=80"
                                class="relative inline-block h-[74px] w-[74px] !rounded-full border-2 border-white object-cover object-center" />
                        </div>
                    </div>
                    @foreach ($recipes as $recipe)
                        @foreach ($recipe->categories as $category)
                            <h1>{{ $category->name }}</h1>
                        @endforeach
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
