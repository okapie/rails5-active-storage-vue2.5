<template>
  <div>
    <h1>Users page.</h1>
    <form id="app" @submit="checkForm" action="" method="post" novalidate="true">
      <p v-if="errors && errors.length > 0">
        <b>Please correct the following error(s):</b>
        <ul>
          <li v-for="error in errors">{{ error }}</li>
        </ul>
      </p>
      <p>
        <label for="name">Name</label>
        <input type="text" name="name" id="name" v-model="name">
      </p>
      <p>
        <label for="email">Email</label>
        <input type="email" name="email" id="email" v-model="email">
      </p>
      <p>
        <label for="movie">Favorite Movie</label>
        <select name="movie" id="movie" v-model="movie">
          <option>Star Wars</option>
          <option>Vanilla Sky</option>
          <option>Atomic Blonde</option>
        </select>
      </p>
      <p>
        <input type="submit" value="Submit">
      </p>
    </form>
  </div>
</template>

<script>
  export default {
    data: function() {
      return {
        errors: [],
        name: null,
        email: null,
        movie: null
      }
    },
    methods: {
      checkForm: function (e) {
        this.errors = [];

        if (!this.name) {
          this.errors.push("Name required.");
        }

        if (!this.email) {
          this.errors.push('Email required.');
        } else if (!this.validEmail(this.email)) {
          this.errors.push('Valid email required.');
        }

        if (!this.errors.length) {
          return true;
        }

        e.preventDefault();
      },
      validEmail: function (email) {
        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
      }
    }
  }
</script>
