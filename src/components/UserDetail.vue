<template>
  <div>
    <h1>User Detail.</h1>
    <dl>
      <dt>
        ID
      </dt>
      <dd>
        {{ member.id }}
      </dd>
      <dt>
        Name
      </dt>
      <dd>
        {{ member.name }}
      </dd>
      <dt>
        Email
      </dt>
      <dd>
        {{ member.email }}
      </dd>
    </dl>
  </div>
</template>

<script>
export default {
  props: {
    member: {
      type: Object
    }
  }
}
</script>

<style>
  h1 {
    width: 100%;
  }

  dl {
    display: flex;
    flex-wrap: wrap;
    width: 92%;
    border: 1px solid #000;
    margin: 0 4%;
  }

  dt {
    width: calc(25% - 9px);
    border-right: 1px solid #000;
    border-bottom: 1px solid #000;
    background: #b0b0b0;
    padding: 4px;
  }

  dd {
    width: calc(75% - 9px);
    margin: 0;
    border-bottom: 1px solid #000;
    padding: 4px;
  }

  dd:last-of-type,
  dt:last-of-type {
    border-bottom: none;
  }
</style>
