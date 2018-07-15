<template>
  <div>
    <section>
      <h1>Users page.</h1>
      <div class='list-wrapper'>
        <ul class='list-header'>
          <li>ID</li>
          <li>Name</li>
          <li>Email</li>
          <li></li>
        </ul>
        <ul v-for='(member, index) in members' v-bind:key='member.id' class='list-body'>
          <li>{{ member.id }}
          <li>{{ member.name }}</li>
          <li>{{ member.email }}</li>
          <li>
            <button
              class='detail-button'
              @click='onChange(index)'
            >
              Detail
            </button>
          </li>
        </ul>
      </div>
    </section>
    <section>
      <app-user-detail
        :member='member'
      >
      </app-user-detail>
    </section>
  </div>
</template>

<script>
import axios from 'axios'
import UserDetail from './UserDetail.vue'
export default {
  data: function () {
    return {
      members: [],
      member: {
        id: '3',
        name: 'takochan',
        email: 'tako@tako.com'
      }
    }
  },
  beforeCreate: function () {
    axios.get('http://localhost:3000/users.json')
      .then(res => {
        this.members = res.data
      })
  },
  components: {
    appUserDetail: UserDetail
  },
  methods: {
    onChange (index) {
      this.member = this.members[index]
    }
  }
}
</script>

<style scoped>
  h1 {
    width: 100%;
  }

  .list-wrapper {
    margin: 0 4%;
    width: 92%;
  }

  ul {
    display: flex;
    flex-wrap: wrap;
    margin: 0;
    padding: 0;
  }

  ul.list-header > li {
    width: 25%;
    list-style: none;
    background: #b0b0b0;
    box-sizing: border-box;
    border-color: #000;
    border-style: solid;
    border-width: 1px 1px 1px 0;
    padding: 4px;
  }

  ul.list-body > li {
    text-align: left;
    width: 25%;
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

  .detail-button {
    width: 90%;
    height: 24px;
  }
</style>
