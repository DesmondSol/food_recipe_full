<script setup>
// import { Field, Form } from 'vee-validate'
</script>

<template>
  <div class="flex justify-center items-center mt-52">
    <div class="w-full max-w-xs">
      <div>
        <label text-5xl>Meaza</label>
      </div>
      <label
        for="entry"
        class="block text-gray-700 text-la font-bold mb-y"
      >
        Food Recipe</label>
      <form class="shadow-md rounded px-8 pt-6 pb-8 mb-4">
        <div class="entry-input-title mb-4">
          <label
            for="entry"
            class="block text-gray-700 text-sm font-bold mb-2"
          >
            Email</label>
          <input
            id="email"
            v-model="email"
            class="shadow appearance-none borderrounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
            type="text"
            placeholder="Email"
            aria-describedby="titleHelp"
          >
          <span id="titleHelp" class="text-xs text-red-700" />
        </div>

        <div class="entry-input-desc mb-6">
          <label
            for="entry"
            class="block text-gray-700 text-sm font-bold mb-2"
          >Description</label>

          <input
            id="descriptions"
            v-model="password"

            aria-describedby="descHelp"
            class="shadow appearance-none borderrounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
            type="text"
            placeholder="passwprd"
          >

          <span id="descHelp" class="text-xs text-red-700" />
        </div>

        <div class="flex items-center justify-between">
          <button
            btn m-3 text-sm
            type="submit"
            href="#"
            @click="$router.push('/home/home')"
          >
            Log in
          </button>
          <a
            class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800"
            href="#"
            @click="$router.push('/')"
          >
            Back
          </a>
        </div>
      </form>
      you dont have an account? <a class='text-blue-500' @click="$router.push('/auth/signup')">signup</a>
    </div>
  </div>
</template>
