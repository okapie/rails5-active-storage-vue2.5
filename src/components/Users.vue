<template>
  <div>
    <h1>Users page.</h1>
    <dl>
      <dt></dt>
      <dd></dd>
    </dl>
    <ul class='list-header'>
      <li>ID</li>
      <li>Name</li>
      <li>Email</li>
    </ul>
    <ul v-for='member in members' class='list-body'>
      <li>{{member.id}}
      <li>{{ member.name }}</li>
      <li>{{member.email}}</li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios'
  export default {
    data: function () {
      return {
        members: []
      }
    },
    beforeCreate: function () {
      axios.get('http://localhost:3000/users.json')
        .then(res => {
          console.log(res.data)
          this.members = res.data
        })
    }
  }
</script>

<style scoped>
  ul {
    display: flex !important;
    flex-wrap: wrap;
    margin: 0;
  }

  ul.list-header > li {
    width: 33%;
    list-style: none;
    background: #b0b0b0;
    box-sizing: border-box;
    border-color: #000;
    border-style: solid;
    border-width: 1px 1px 1px 0;
    padding: 5px;
  }

  ul.list-body > li {
    text-align: left;
    width: 33%;
    list-style: none;
    background: #fff;
    box-sizing: border-box;
    border-color: #000;
    border-style: solid;
    border-width: 0 1px 1px 0;
    padding: 5px;
  }

  ul.list-header > li:nth-child(1) {
    border-left-width: 1px;
  }

  ul.list-header > li:last-child {
    border-rignt-width: 1px;
  }

  ul.list-body > li:nth-child(1) {
    border-left-width: 1px;
  }

  ul.list-body > li:nth-child(2n+1) {
    border-rignt-width: 1px;
  }
</style>
