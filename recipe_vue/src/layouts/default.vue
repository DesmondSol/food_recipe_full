<script>
export default {
  data() {
    return {
      showMenu: false,
    }
  },
}
</script>

<template>
  <e class="px-4 py-10 text-center text-gray-700 dark:text-gray-200">
    <main>
      <RouterView />
      <header class="fixed top-0 left-0 right-0 ">
        <div>
          <div class="bg-gray-50  dark:bg-gray-800">
            <nav class="
          container
          px-6
          py-8
          mx-auto
          md:flex md:justify-between md:items-center
        ">
              <div class="flex items-center justify-between">
                <router-link to="/" class="
              text-xl
              font-bold
              text-gray-800
              md:text-2xl
              hover:text-blue-400
            ">
                  Meaza <a class="text-xs uppercase">food recipes</a>
                </router-link>
                <!-- Mobile menu button -->
                <div class="flex md:hidden" @click="showMenu = !showMenu">
                  <button type="button" class="
                text-gray-800
                hover:text-gray-400
                focus:outline-none focus:text-gray-400
              ">
                    <svg viewBox="0 0 24 24" class="w-6 h-6 fill-current">
                      <path fill-rule="evenodd"
                        d="M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z" />
                    </svg>
                  </button>
                </div>
              </div>

              <!-- Mobile Menu open: "block", Menu closed: "hidden" -->
              <ul :class="showMenu ? 'flex' : 'hidden'" class="
            flex-col
            mt-8
            space-y-4
            md:flex
            md:space-y-0
            md:flex-row
            md:items-center
            md:space-x-10
            md:mt-0
          ">
                <li class="text-sm font-bold text-gray-800 hover:text-blue-400">
                  <a @click="$router.push('/home/home')">Home</a>
                </li>
                <li class="text-sm font-bold text-gray-800 hover:text-blue-400">
                  <a @click="$router.push('/home/favorites')">favorites</a>
                </li>
                <li class="text-sm font-bold text-gray-800 hover:text-blue-400">
                  <a @click="$router.push('/form/add_recipe')">New</a>
                </li>
                <li class="text-sm font-bold text-gray-800 hover:text-blue-400">
                  <a @click="$router.push('/')">Log Out</a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </header>

      <div class="px-6 py-8 bg-white">
        <div class="justify-between max-w-screen-xl py-4 mx-auto text-center md:flex">
          <div class="flex justify-center md:order-2">
            <button
              class=" px-4 w-auto h-9 bg-gray-100  dark:text-gray-100 dark:bg-gray-600 rounded-lg hover:bg-gray-200 text-gray-800  active:shadow-lg mouse shadow transition ease-in duration-200 focus:outline-none">
              follow
              sol
            </button>
          </div>
          <div class="mt-8 md:mt-0 md:order-1">
            <p class="inline-flex items-center text-base leading-6 text-center text-gray-600">
              Made with
              <svg viewBox="0 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                class="fill-current w-5 h-5 mx-2 text-red-400 hover:text-red-500">
                <g id="Page-9177" stroke="none" stroke-width="1" fill="currentColor" fill-rule="evenodd">
                  <g id="icon-shape">
                    <path
                      d="M10 3.22l-.61-.6a5.5 5.5 0 0 0-7.78 7.77L10 18.78l8.39-8.4a5.5 5.5 0 0 0-7.78-7.77l-.61.61z" />
                  </g>
                </g>
              </svg>
              by&nbsp;<a href="https://github.com/desmondsol" target="_blank"
                class="hover:text-gray-700 hover:underline">Solomon Tigabu </a> <a href="https://twitter.com/soltig"
                target="_blank" class="ml-6 text-gray-600 hover:text-gray-700"><span class="sr-only">Twitter</span> <svg
                  fill="currentColor" viewBox="0 0 24 24" class="w-6 h-6">
                  <path
                    d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84" />
                </svg></a> <a href="https://github.comdesmondsol" target="_blank"
                class="ml-6 text-gray-600 hover:text-gray-700"><span class="sr-only">GitHub</span> <svg
                  fill="currentColor" viewBox="0 0 24 24" class="w-6 h-6">
                  <path fill-rule="evenodd"
                    d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
                    clip-rule="evenodd" />
                </svg></a>
            </p>
          </div>
        </div>
      </div>

      <!-- <div class="mt-5 mx-auto text-center opacity-75 dark:opacity-50 text-sm">
      [Default Layout]
    </div> -->
    </main>
  </e>
</template>
