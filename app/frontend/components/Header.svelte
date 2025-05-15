<script>
  import { inertia, page } from "@inertiajs/svelte";
  const currentPath = $page.url;
</script>

<header>
  <nav>
    <div class="container-brand">
      <a href="/" use:inertia class:active={currentPath === "/"}>
        <b> Scrappy </b>
      </a>
    </div>
    <div>
      <a href="/" use:inertia class:active={currentPath === "/about"}> Home </a>
      <a href="/products" use:inertia class:active={currentPath === "/people"}>
        Products
      </a>
      <a href="/contact" use:inertia class:active={currentPath === "/contact"}>
        Contact
      </a>
    </div>
    <div>
      <button class="outline"> Explore </button>
      <button> Shop now </button>
    </div>
  </nav>
</header>

<style>
  header {
    padding-bottom: 1rem;
  }

  nav {
    padding: 2rem 2rem;
    display: flex;
    align-items: center;
  }

  a {
    text-decoration: none;
    padding: 0.5rem 1rem;
    border-radius: 4px;
    transition: background-color 0.2s ease;
  }

  a:hover {
    background-color: rgba(255, 255, 255, 0.1);
  }

  .active {
    background-color: rgba(255, 255, 255, 0.2);
    font-weight: 500;
  }

  .container-brand {
    display: flex;
    justify-content: start;
  }
</style>
