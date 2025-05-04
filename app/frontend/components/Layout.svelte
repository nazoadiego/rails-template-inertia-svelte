<script>

  import Header from './Header.svelte'
  import Footer from './Footer.svelte'
  /**
   * @typedef {Object} Props
   * @property {import('svelte').Snippet} [children]
   */

  /** @type {Props} */
  let { children } = $props();

</script>

<Header />

<main>
  {@render children?.()}
</main>

<Footer />
