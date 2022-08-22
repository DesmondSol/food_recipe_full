<script setup>
// import { Field, Form } from 'vee-validate';
</script>

<template>
  <div class="flex justify-center items-center ">
    <div class="w-full max-w-xs">
      <div>
        <label text-5xl>Meaza</label>
      </div>
      <label
        for="entry"
        class="block text-gray-700 text-la font-bold mb-y"
      >
        Food Recipe</label>
      <form class=" shadow-outline shadow-md border rounded px-8 pt-6 pb-8 mb-4">
        <div class="entry-input-title mb-4">
          <label
            for="entry"
            class="block text-gray-700 text-sm font-bold mb-2"
          >
            Name</label>
          <input
            id="name"
            v-model="name"
            class="shadow appearance-none borderrounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
            type="text"
            placeholder="name"
            aria-describedby="titleHelp"
          >
          <span id="titleHelp" class="text-xs text-red-700" />
        </div>

        <div class="entry-input-desc mb-6">
          <label
            for="entry"
            class="block text-gray-700 text-sm font-bold mb-2"
          >Email</label>

          <input
            id="descriptions"
            v-model="email"

            aria-describedby="descHelp"
            class="shadow appearance-none borderrounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
            type="text"
            placeholder="email"
          >

          <span id="descHelp" class="text-xs text-red-700" />
        </div>
        <div class="entry-input-desc mb-6">
          <label
            for="entry"
            class="block text-gray-700 text-sm font-bold mb-2"
          >phone</label>
          <input
            id="descriptions"
            v-model="pass"

            aria-describedby="imgHelp"
            class="shadow appearance-none borderrounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
            type="text"
            placeholder="[phone]"
          >

          <span id="imgHelp" class="text-xs text-red-700" />
        </div>
        <div class="entry-input-img mb-6">
          <label
            for="entry"
            class="block text-gray-700 text-sm font-bold mb-2"
          >Password</label>

          <input
            id="descriptions"
            v-model="password"

            aria-describedby="imgHelp"
            class="shadow appearance-none borderrounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
            type="text"
            placeholder="password"
          >

          <span id="imgHelp" class="text-xs text-red-700" />
        </div>

        <div class="entry-input-img mb-6">
          <label
            for="entry"
            class="block text-gray-700 text-sm font-bold mb-2"
          >Retype Password</label>

          <input
            id="descriptions"
            v-model="password"

            aria-describedby="imgHelp"
            class="shadow appearance-none borderrounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
            type="text"
            placeholder="password"
          >

          <span id="imgHelp" class="text-xs text-red-700" />
        </div>

        <div class="flex items-center justify-between">
          <button
            btn m-3 text-sm
            type="submit"
            @click="$router.push('/auth/login')"
          >
            signup
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
    </div>
  </div>
</template>
