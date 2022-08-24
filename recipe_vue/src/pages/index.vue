<script setup lang="ts">
// const user = useUserStore()
// const name = $ref(user.savedName)

// const router = useRouter()
// const go = () => {
//   if (name)
//     router.push(`/hi/${encodeURIComponent(name)}`)
// }

// const { t } = useI18n()
</script>

<template>
  <div class="relative bg-transparent overflow-hidden">
    <div class="max-w-7xl mx-auto">
      <div class="relative z-10 pb-8 bg- sm:pb-16 md:pb-20 lg:max-w-2xl lg:w-full lg:pb-28 xl:pb-32">
        <svg
          class="hidden lg:block absolute right-0 inset-y-0 h-full w-48 text-white  dark:text-zinc-900 transform translate-x-1/2"
          fill="currentColor" viewBox="0 0 100 100" preserveAspectRatio="none" aria-hidden="true">
          <polygon points="30,1.5 100,1.5 50,101 0,101" />
        </svg>

        <main class="mt-10 mx-auto max-w-7xl px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
          <div class="sm:text-center lg:text-left">
            <h1
              class="text-4xl tracking-tight font-bold text-gray-900 sm:text-5xl sm:tracking-tight md:text-6xl md:tracking-tight">
              <span class="block xl:inline">Foods to enrich your</span>
              <span class="block text-teal-700 xl:inline"> LIFE</span>
            </h1>
            <p
              class="mt-3 text-base text-gray-500 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-xl lg:mx-0">
              The only place where you could find all the healthy and nutritious food recipes that you need in your life
              right now,
              and only
              contributed by the best around the world
            </p>
            <div class="mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start">
              <div class="rounded-md shadow">
                <a class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-white bg-teal-600 hover:bg-teal-700 md:py-4 md:text-lg md:px-10"
                  @click="$router.push('/auth/login')">
                  Log In </a>
              </div>
              <div class="mt-3 sm:mt-0 sm:ml-3">
                <a class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-teal-700 bg-teal-100 hover:bg-teal-200 md:py-4 md:text-lg md:px-10"
                  @click="$router.push('/auth/signup')">
                  Sign Up </a>
              </div>
            </div>
          </div>
        </main>
      </div>
      <div class="pt-30 lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2">
        <img class="h-56 w-full object-cover sm:h-72 md:h-96 lg:w-full lg:h-full"
          src="https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=600"
          alt="">
      </div>
    </div>
  </div>

  <!-- <div class="grid grid-cols-2 sm:grid-cols-1 md:grid-cols-1 lg:grid-cols-2 xl:grid-cols-2">
    <div>
      <div mt-52>
        <div>
          <label text-5xl>Meaza</label>
        </div>
        <div>
          <label>Food Recipes</label>
        </div>
        <a btn m-3 text-sm @click="$router.push('/auth/login')">
          Login
        </a>
      </div>
      <div>
        <a btn m-3 text-sm @click="$router.push('/auth/signup')">
          Signup
        </a>
      </div>
    </div>
  </div> -->
  <!-- <div>
    <div text-4xl>
      <div i-carbon-campsite inline-block />
    </div>
    <p>
      <a rel="noreferrer" href="https://github.com/antfu/vitesse" target="_blank">
        Vitesse
      </a>
    </p>
    <p>
      <em text-sm opacity-75>{{ t('intro.desc') }}</em>
    </p>

    <div py-4 />

    <input
      id="input"
      v-model="name"
      :placeholder="t('intro.whats-your-name')"
      :aria-label="t('intro.whats-your-name')"
      type="text"
      autocomplete="false"
      p="x4 y2"
      w="250px"
      text="center"
      bg="transparent"
      border="~ rounded gray-200 dark:gray-700"
      outline="none active:none"
      @keydown.enter="go"
    >
    <label class="hidden" for="input">{{ t('intro.whats-your-name') }}</label>

    <div>
      <button
        btn m-3 text-sm
        :disabled="!name"
        @click="go"
      >
        {{ t('button.go') }}
      </button>
    </div>
  </div> -->
</template>

<route lang="yaml">
meta:
  layout: home
</route>
