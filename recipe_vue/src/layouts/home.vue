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
  <main class="px-4 py-10 text-center text-gray-700 dark:text-gray-200">
    <RouterView />

    <header class="z-20 fixed top-0 left-0 right-0 ">
      <div>
        <div class="bg-gray-50  dark:bg-gray-700 dark:text-gray-200">
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
               dark:text-gray-200
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
              <li class="text-sm font-bold text-gray-800 dark:text-gray-200 hover:text-blue-400">
                <a href="/">Home</a>
              </li>
              <li class=" text-sm font-bold text-gray-800 dark:text-gray-200 hover:text-blue-400">
                <a href="/home/home">Explore</a>
              </li>
              <li class="text-sm font-bold text-gray-800  dark:text-gray-200 hover:text-blue-400 ">
                <a href="/about/">About</a>
              </li>
              <li class=" text-sm font-bold text-gray-800 dark:text-gray-200 hover:text-blue-400">
                Contact Me
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </header>

    <Footer />
    <div class="mt-5 mx-auto text-center opacity-75 dark:opacity-50 text-sm">
      [Home Layout]
    </div>
  </main>
</template>

