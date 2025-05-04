<script lang="ts">
  import { preventDefault } from 'svelte/legacy';

  import { createEventDispatcher } from "svelte";

  const dispatch = createEventDispatcher();

  let { person = $bindable({}), errors = {} } = $props();

  const submit = () => {
    dispatch("submit", { person });
  };
</script>

<form onsubmit={preventDefault(submit)}>
  <div>
    <label>First Name <input bind:value={person.first_name} /></label>
    {#if errors.first_name}<div>{errors.first_name}</div>{/if}
  </div>
  <div>
    <label>Last Name <input bind:value={person.last_name} /></label>
    {#if errors.last_name}<div>{errors.last_name}</div>{/if}
  </div>
  <div>
    <button type="submit">Save</button>
  </div>
</form>

<style>
  form label {
    display: block;
  }

  form input {
    display: block;
    border-radius: 5px;
    background-color: inherit;
    color: inherit;
    border-color: whitesmoke;
    border-style: solid;
    border-width: 1px;
  }

  form button {
    border-radius: 5px;
    background-color: inherit;
    color: inherit;
    border-color: whitesmoke;
    border-style: solid;
    border-width: 1px;
    display: block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }
</style>
