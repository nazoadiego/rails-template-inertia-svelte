<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Layout from "../../components/Layout.svelte";
  let { people = [], current_user = {} } = $props();
</script>

<Layout>
  <h1>Hi, {current_user.email}</h1>

  <h3>These are some people</h3>
  <ul>
    {#each people as person}
      <li>
        <a href={`/people/${person.id}`} use:inertia
          >{person.first_name} {person.last_name}</a
        >
      </li>
    {/each}
  </ul>
</Layout>
