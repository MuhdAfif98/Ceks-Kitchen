<x-app-layout>
    <div class="bg-white overflow-hidden sm:rounded-lg text-center">
        <div class="p-6 text-gray-900">
            {{ __('Where Every Bite Tells a Story: Share, Savor, Connect!') }}
        </div>
    </div>
    <div class="py-4">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 flex justify-center space-x-5">
                    <a href="/my-recipe"
                        class="relative grid h-[20rem] w-full max-w-[14rem] flex-col items-end justify-center overflow-hidden rounded-xl bg-white bg-clip-border text-center text-gray-700 hover:opacity-75 transition ease-in-out hover:-translate-y-1 hover:scale-100 duration-300">
                        <div
                            class="absolute inset-0 m-0 h-full w-full overflow-hidden rounded-none bg-transparent bg-[url('https://i.pinimg.com/564x/d6/85/91/d68591385373187612bb0b9ae9cc21e4.jpg')] bg-cover bg-clip-border bg-center text-gray-700 shadow-none">
                            <div class="absolute inset-0 w-full h-full to-bg-black-10">
                            </div>
                        </div>
                        <div class="relative p-6 px-6 py-14 md:px-12">
                            <h5>Dessert</h5>
                        </div>
                    </a>
                    <a href="/my-recipe"
                        class="relative grid h-[20rem] w-full max-w-[14rem] flex-col items-end justify-center overflow-hidden rounded-xl bg-white bg-clip-border text-center text-gray-700 hover:opacity-75 transition ease-in-out hover:-translate-y-1 hover:scale-100 duration-300">
                        <div
                            class="absolute inset-0 m-0 h-full w-full overflow-hidden rounded-none bg-transparent bg-[url('https://i.pinimg.com/564x/d6/85/91/d68591385373187612bb0b9ae9cc21e4.jpg')] bg-cover bg-clip-border bg-center text-gray-700 shadow-none">
                            <div class="absolute inset-0 w-full h-full to-bg-black-10">
                            </div>
                        </div>
                        <div class="relative p-6 px-6 py-14 md:px-12">
                            <h5>Coffee</h5>
                        </div>
                    </a>
                    <a href="/my-recipe"
                        class="relative grid h-[20rem] w-full max-w-[14rem] flex-col items-end justify-center overflow-hidden rounded-xl bg-white bg-clip-border text-center text-gray-700 hover:opacity-75 transition ease-in-out hover:-translate-y-1 hover:scale-100 duration-300">
                        <div
                            class="absolute inset-0 m-0 h-full w-full overflow-hidden rounded-none bg-transparent bg-[url('https://i.pinimg.com/564x/d6/85/91/d68591385373187612bb0b9ae9cc21e4.jpg')] bg-cover bg-clip-border bg-center text-gray-700 shadow-none">
                            <div class="absolute inset-0 w-full h-full to-bg-black-10">
                            </div>
                        </div>
                        <div class="relative p-6 px-6 py-14 md:px-12">
                            <h5>Appetizer</h5>
                        </div>
                    </a>
                    <a href="/my-recipe"
                        class="relative grid h-[20rem] w-full max-w-[14rem] flex-col items-end justify-center overflow-hidden rounded-xl bg-white bg-clip-border text-center text-gray-700 hover:opacity-75 transition ease-in-out hover:-translate-y-1 hover:scale-100 duration-300">
                        <div
                            class="absolute inset-0 m-0 h-full w-full overflow-hidden rounded-none bg-transparent bg-[url('https://i.pinimg.com/564x/d6/85/91/d68591385373187612bb0b9ae9cc21e4.jpg')] bg-cover bg-clip-border bg-center text-gray-700 shadow-none">
                            <div class="absolute inset-0 w-full h-full to-bg-black-10">
                            </div>
                        </div>
                        <div class="relative p-6 px-6 py-14 md:px-12">
                            <h5>Sandwiches</h5>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="py-4">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 flex justify-center space-x-5">
                    @livewire('Recipe.filter-recipe')
                </div>
            </div>
        </div>
    </div>
    <x-ceks.footer />

</x-app-layout>
