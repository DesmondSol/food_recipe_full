<script>
export default {
  name: 'LargeModal',
  data() {
    return {
      showModal: false,
    }
  },
  methods: {
    toggleModal() {
      this.showModal = !this.showModal
    },
  },
}
</script>

<template>
  <div
    class="flex gap-9 grid grid-cols-2 sm:grid-cols-1 md:grid-cols-1 lg:grid-cols-2 xl:grid-cols-1 min-h-screen py-32 px-10 ">
    <div class="max-w-sm md:w-2/3 shadow p-5 rounded-lg border-2">
      <div class="relative">
        <div class="absolute flex items-center ml-2 h-full">
          <svg class="w-4 h-4 fill-current text-primary-gray-dark" viewBox="0 0 16 16" fill="none"
            xmlns="http://www.w3.org/2000/svg">
            <path
              d="M15.8898 15.0493L11.8588 11.0182C11.7869 10.9463 11.6932 10.9088 11.5932 10.9088H11.2713C12.3431 9.74952 12.9994 8.20272 12.9994 6.49968C12.9994 2.90923 10.0901 0 6.49968 0C2.90923 0 0 2.90923 0 6.49968C0 10.0901 2.90923 12.9994 6.49968 12.9994C8.20272 12.9994 9.74952 12.3431 10.9088 11.2744V11.5932C10.9088 11.6932 10.9495 11.7869 11.0182 11.8588L15.0493 15.8898C15.1961 16.0367 15.4336 16.0367 15.5805 15.8898L15.8898 15.5805C16.0367 15.4336 16.0367 15.1961 15.8898 15.0493ZM6.49968 11.9994C3.45921 11.9994 0.999951 9.54016 0.999951 6.49968C0.999951 3.45921 3.45921 0.999951 6.49968 0.999951C9.54016 0.999951 11.9994 3.45921 11.9994 6.49968C11.9994 9.54016 9.54016 11.9994 6.49968 11.9994Z" />
          </svg>
        </div>

        <input type="text" placeholder="Search by listing, location, bedroom number..."
          class="px-8 py-3 w-full rounded-md bg-gray-100 border-transparent focus:border-gray-500 focus:bg-white focus:ring-0 text-sm">
      </div>

      <div class="flex items-center justify-between mt-4">
        <p class="font-medium">
          Filters
        </p>

        <button class="px-4 py-2 bg-gray-100 hover:bg-gray-200 text-gray-800 text-sm font-medium rounded-md">
          Reset Filter
        </button>
      </div>

      <div>
        <div class="grid grid-cols-1 md:grid-cols-1 xl:grid-cols-1 gap-4 mt-4">
          <select
            class="px-4 py-3 w-full rounded-md bg-gray-100 border-transparent focus:border-gray-500 focus:bg-white focus:ring-0 text-sm">
            <option value="">
              All Type
            </option>
            <option value="for-rent">
              For Rent
            </option>
            <option value="for-sale">
              For Sale
            </option>
          </select>

          <select
            class="px-4 py-3 w-full rounded-md bg-gray-100 border-transparent focus:border-gray-500 focus:bg-white focus:ring-0 text-sm">
            <option value="">
              Furnish Type
            </option>
            <option value="fully-furnished">
              Fully Furnished
            </option>
            <option value="partially-furnished">
              Partially Furnished
            </option>
            <option value="not-furnished">
              Not Furnished
            </option>
          </select>

          <select
            class="px-4 py-3 w-full rounded-md bg-gray-100 border-transparent focus:border-gray-500 focus:bg-white focus:ring-0 text-sm">
            <option value="">
              Any Price
            </option>
            <option value="1000">
              RM 1000
            </option>
            <option value="2000">
              RM 2000
            </option>
            <option value="3000">
              RM 3000
            </option>
            <option value="4000">
              RM 4000
            </option>
          </select>

          <select
            class="px-4 py-3 w-full rounded-md bg-gray-100 border-transparent focus:border-gray-500 focus:bg-white focus:ring-0 text-sm">
            <option value="">
              Floor Area
            </option>
            <option value="200">
              200 sq.ft
            </option>
            <option value="400">
              400 sq.ft
            </option>
            <option value="600">
              600 sq.ft
            </option>
            <option value="800 sq.ft">
              800
            </option>
            <option value="1000 sq.ft">
              1000
            </option>
            <option value="1200 sq.ft">
              1200
            </option>
          </select>

          <select
            class="px-4 py-3 w-full rounded-md bg-gray-100 border-transparent focus:border-gray-500 focus:bg-white focus:ring-0 text-sm">
            <option value="">
              Bedrooms
            </option>
            <option value="1">
              1 bedroom
            </option>
            <option value="2">
              2 bedrooms
            </option>
            <option value="3">
              3 bedrooms
            </option>
            <option value="4">
              4 bedrooms
            </option>
            <option value="5">
              5 bedrooms
            </option>
          </select>

          <select
            class="px-4 py-3 w-full rounded-md bg-gray-100 border-transparent focus:border-gray-500 focus:bg-white focus:ring-0 text-sm">
            <option value="">
              Bathrooms
            </option>
            <option value="1">
              1 bathroom
            </option>
            <option value="2">
              2 bathrooms
            </option>
            <option value="3">
              3 bathrooms
            </option>
            <option value="4">
              4 bathrooms
            </option>
            <option value="5">
              5 bathrooms
            </option>
          </select>

          <select
            class="px-4 py-3 w-full rounded-md bg-gray-100 border-transparent focus:border-gray-500 focus:bg-white focus:ring-0 text-sm">
            <option value="">
              Bathrooms
            </option>
            <option value="1">
              1 space
            </option>
            <option value="2">
              2 space
            </option>
            <option value="3">
              3 space
            </option>
          </select>
        </div>
      </div>
    </div>

    <div class="grow grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 md:gap-x-10 xl-grid-cols-4 gap-y-10 gap-x-6 ">
      <div class="container mx-auto shadow-lg rounded-lg max-w-md hover:shadow-2xl transition duration-300"
        @click="toggleModal()">
        <img src="https://www.pexels.com/@rajesh-tp-749235/" alt="" class="rounded-t-lg w-full">
        <div class="p-6">
          <h1 class="md:text-1xl text-xl hover:text-indigo-600 transition duration-200  font-bold text-gray-900 ">
            Abalone with chilli
          </h1>
          <p class="text-gray-700 my-2 text-left">

            Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium quis.
          </p>

          <ul class="flex justify-center">
            <li>
              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star"
                class="w-4 text-yellow-500 mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                <path fill="currentColor"
                  d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z">
                </path>
              </svg>
            </li>
            <li>
              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star"
                class="w-4 text-yellow-500 mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                <path fill="currentColor"
                  d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z">
                </path>
              </svg>
            </li>
            <li>
              <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star"
                class="w-4 text-yellow-500 mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                <path fill="currentColor"
                  d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z">
                </path>
              </svg>
            </li>
            <li>
              <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="star"
                class="w-4 text-yellow-500 mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                <path fill="currentColor"
                  d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM388.6 312.3l23.7 138.4L288 385.4l-124.3 65.3 23.7-138.4-100.6-98 139-20.2 62.2-126 62.2 126 139 20.2-100.6 98z">
                </path>
              </svg>
            </li>
            <li>
              <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="star" class="w-4 text-yellow-500"
                role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                <path fill="currentColor"
                  d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM388.6 312.3l23.7 138.4L288 385.4l-124.3 65.3 23.7-138.4-100.6-98 139-20.2 62.2-126 62.2 126 139 20.2-100.6 98z">
                </path>
              </svg>
            </li>
          </ul>

        </div>
        <div class="flex flex-row-reverse space-x-4 space-x-reverse pr-8 pb-8">
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-7 w-7 text-gray-600 cursor-pointer" fill="none"
                viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
              </svg>
            </span>
            <span>22</span>
          </div>
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg"
                class="h-7 w-7 text-red-500 hover:text-red-400 transition duration-100 cursor-pointer"
                viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd"
                  d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z"
                  clip-rule="evenodd" />
              </svg>
            </span>
            <span>20</span>
          </div>
        </div>
      </div>
      <div class="container mx-auto shadow-lg rounded-lg max-w-md hover:shadow-2xl transition duration-300"
        @click="toggleModal()">
        <img src="https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&w=600"
          object-contain alt="" class="rounded-t-lg w-full">
        <div class="p-6">
          <h1 class="md:text-1xl text-xl hover:text-indigo-600 transition duration-200  font-bold text-gray-900 ">
            This is Amazing fors people to visit.
          </h1>
          <p class="text-gray-700 my-2 ">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium quis.
          </p>
        </div>
        <div class="flex flex-row-reverse space-x-4 space-x-reverse pr-8 pb-8">
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-7 w-7 text-gray-600 cursor-pointer" fill="none"
                viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
              </svg>
            </span>
            <span>22</span>
          </div>
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg"
                class="h-7 w-7 text-red-500 hover:text-red-400 transition duration-100 cursor-pointer"
                viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd"
                  d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z"
                  clip-rule="evenodd" />
              </svg>
            </span>
            <span>20</span>
          </div>
        </div>
      </div>
      <div class="container mx-auto shadow-lg rounded-lg max-w-md hover:shadow-2xl transition duration-300"
        @click="toggleModal()">
        <img src="https://images.unsplash.com/photo-1627751476653-e954179b174a" alt="" class="rounded-t-lg w-full">
        <div class="p-6">
          <h1 class="md:text-1xl text-xl hover:text-indigo-600 transition duration-200  font-bold text-gray-900 ">
            This is Amazing for people to visit.
          </h1>
          <p class="text-gray-700 my-2 ">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium quis.
          </p>
        </div>
        <div class="flex flex-row-reverse space-x-4 space-x-reverse pr-8 pb-8">
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-7 w-7 text-gray-600 cursor-pointer" fill="none"
                viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
              </svg>
            </span>
            <span>22</span>
          </div>
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg"
                class="h-7 w-7 text-red-500 hover:text-red-400 transition duration-100 cursor-pointer"
                viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd"
                  d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z"
                  clip-rule="evenodd" />
              </svg>
            </span>
            <span>20</span>
          </div>
        </div>
      </div>

      <div class="container mx-auto shadow-lg rounded-lg max-w-md hover:shadow-2xl transition duration-300"
        @click="toggleModal()">
        <img src="https://images.unsplash.com/photo-1627751476653-e954179b174a" alt="" class="rounded-t-lg w-full">
        <div class="p-6">
          <h1 class="md:text-1xl text-xl hover:text-indigo-600 transition duration-200  font-bold text-gray-900 ">
            This is Amazing for people to visit.
          </h1>
          <p class="text-gray-700 my-2 ">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium quis.
          </p>
        </div>
        <div class="flex flex-row-reverse space-x-4 space-x-reverse pr-8 pb-8">
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-7 w-7 text-gray-600 cursor-pointer" fill="none"
                viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
              </svg>
            </span>
            <span>22</span>
          </div>
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg"
                class="h-7 w-7 text-red-500 hover:text-red-400 transition duration-100 cursor-pointer"
                viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd"
                  d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z"
                  clip-rule="evenodd" />
              </svg>
            </span>
            <span>20</span>
          </div>
        </div>
      </div>
      <div class="container mx-auto shadow-lg rounded-lg max-w-md hover:shadow-2xl transition duration-300"
        @click="toggleModal()">
        <img src="https://images.unsplash.com/photo-1627751476653-e954179b174a" alt="" class="rounded-t-lg w-full">
        <div class="p-6">
          <h1 class="md:text-1xl text-xl hover:text-indigo-600 transition duration-200  font-bold text-gray-900 ">
            This is Amazing for people to visit.
          </h1>
          <p class="text-gray-700 my-2 ">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium quis.
          </p>
        </div>
        <div class="flex flex-row-reverse space-x-4 space-x-reverse pr-8 pb-8">
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-7 w-7 text-gray-600 cursor-pointer" fill="none"
                viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
              </svg>
            </span>
            <span>22</span>
          </div>
          <div class="flex space-x-1 items-center">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg"
                class="h-7 w-7 text-red-500 hover:text-red-400 transition duration-100 cursor-pointer"
                viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd"
                  d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z"
                  clip-rule="evenodd" />
              </svg>
            </span>
            <span>20</span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="">
    <button @click="$router.push('/form/add_recipe')"
      class=" px-4 w-auto h-12 bg-gray-100 rounded-full hover:bg-gray-200 text-gray-800  active:shadow-lg mouse shadow transition ease-in duration-200 focus:outline-none">
      <!-- <svg viewBox="0 0 20 20" enable-background="new 0 0 20 20" class="w-6 h-6 inline-block mr-1">
        <path
          fill="#FFFFFF" d="M16.399,7.643V10.4c0,2.236-1.643,4.629-5.399,4.959V18h2.6c0.22,0,0.4,0.18,0.4,0.4v1.2
                                    c0,0.221-0.181,0.4-0.4,0.4H6.4C6.18,20,6,19.82,6,19.6v-1.2C6,18.18,6.18,18,6.399,18H9v-2.641c-3.758-0.33-5.4-2.723-5.4-4.959
                                    V7.643c0-0.221,0.18-0.4,0.4-0.4h0.6c0.22,0,0.4,0.18,0.4,0.4V10.4c0,1.336,1.053,3.6,5,3.6c3.946,0,5-2.264,5-3.6V7.643
                                    c0-0.221,0.18-0.4,0.399-0.4H16C16.22,7.242,16.399,7.422,16.399,7.643z M10,12c2.346,0,3-0.965,3-1.6V7.242H7V10.4
                                    C7,11.035,7.652,12,10,12z M13,1.6C13,0.963,12.346,0,10,0C7.652,0,7,0.963,7,1.6v4.242h6V1.6z"
        />
      </svg> -->
      <span>Add New Recipe</span>
    </button>
  </div>

  <div v-if="showModal"
    class="overflow-x-hidden overflow-y-auto fixed inset-0 z-50 outline-none focus:outline-none justify-center items-center flex">
    <div class="relative w-auto my-6 mx-auto max-w-6xl">
      <!-- content -->
      <div class="border-0 rounded-lg shadow-lg relative flex flex-col w-full bg-white outline-none focus:outline-none">
        <!-- header -->
        <div class="flex items-start justify-between p-5 border-b border-solid border-slate-200 rounded-t">
          <h3 class="text-3xl font-semibold">
            Food Title
          </h3>
          <button
            class="p-1 ml-auto bg-transparent border-0 text-black opacity-5 float-right text-3xl leading-none font-semibold outline-none focus:outline-none"
            @click="toggleModal()">
            <span class="bg-transparent text-black opacity-5 h-6 w-6 text-2xl block outline-none focus:outline-none">
              ×
            </span>
          </button>
        </div>
        <!-- body -->
        <div class="grid grid-cols-2 sm:grid-cols-1 md:grid-cols-1 lg:grid-cols-2 xl:grid-cols-2">
          <div class="flex gap-9 py-5 px-10 ">
            <img src="https://images.unsplash.com/photo-1627751476653-e954179b174a" alt="" class="rounded-lg w-full">
          </div>
          <div class="grow relative p-6 flex-auto">
            <p class="my-4 text-slate-500 text-lg leading-relaxed">
              Details: I always felt like I could do anything. That’s the main
              thing people are controlled by! Thoughts- their perception
              of themselves! They're slowed down by their perception of
              themselves. If you're taught you can’t do anything, you
              won’t do anything. I was taught I could do everything.
            </p>
          </div>
        </div>
        <!-- footer -->
        <div class="flex items-center justify-end p-6 border-t border-solid border-slate-200 rounded-b">
          <button
            class="text-red-500 bg-transparent border border-solid border-red-500 hover:bg-red-500 hover:text-white active:bg-red-600 font-bold uppercase text-sm px-6 py-3 rounded outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
            type="button" @click="toggleModal()">
            Close
          </button>
          <button
            class="text-red-500 background-transparent font-bold uppercase px-6 py-2 text-sm outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
            type="button" @click="toggleModal()">
            Save Changes
          </button>
        </div>
      </div>
    </div>
  </div>
  <div v-if="showModal" class="opacity-25 fixed inset-0 z-40 bg-black" />
</template>
