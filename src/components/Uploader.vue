<template>
  <div>
    <h1>Upload page.</h1>
    <form id='app' @submit='onSubmit' action='' method='post' novalidate='true'>
      <div v-if='errors && errors.length > 0'>
        <b>Please correct the following error(s):</b>
        <ul>
          <li v-for='error in errors' v-bind:key='error.id'>{{ error }}</li>
        </ul>
      </div>
      <div>
        <label for='title'>Title</label>
        <input type='text' name='item[title]' id='title' v-model='title'>
      </div>
      <div>
        <label for='description'>Description</label>
        <input type='email' name='item[description]' id='description' v-model='description'>
      </div>
      <div>
        <input
          type='file'
          @change='selectedFile'
          name='item[picture]'
          accept='image/*'
          placeholder='Upload file...'
        />
      </div>
      <div>
        <input type='submit' value='Submit'>
      </div>
    </form>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data: function () {
    return {
      errors: [],
      title: null,
      description: null,
      picture: null,
      uploadFile: null
    }
  },
  methods: {
    selectedFile: function (e) {
      e.preventDefault()
      const files = e.target.files
      this.uploadFile = files[0]
    },
    onSubmit: function (e) {
      e.preventDefault()
      const formData = new FormData()
      formData.append('item[title]', this.title)
      formData.append('item[description]', this.description)
      formData.append('item[picture]', this.uploadFile)
      axios.post('http://127.0.0.1:3000/items', formData)
        .then(res => console.log(res))
    }
  }
}
</script>
