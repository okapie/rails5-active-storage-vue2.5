<template>
  <div id="app">
    <div class="header">
      <router-link to="/">
        <button>
          TOP
        </button>
      </router-link>
      <router-link to="/users">
        <button>
          USERS
        </button>
      </router-link>
      <router-link to="/uploader">
        <button>
          UPLOADER
        </button>
      </router-link>
    </div>
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    margin: 0;
    padding: 0;
  }

  .header {
    margin: 0;
    padding: 4px 0 0 4px;
    background: #9b9877;
    text-align: left;
  }

  button {
    width: 100%;
    height: 60px;
    font-size: 16px;
  }

  @media screen and (min-width:768px){
    button {
      width: 300px;
      height: 60px;
      font-size: 16px;
    }
  }
</style>
