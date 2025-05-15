<script>
  import { inertia } from "@inertiajs/svelte";
  import bannerImage from "../images/banner-image.jpeg";
</script>

<div class="container-banner">
  <div class="container-text">
    <h1>Your Vision, Our Canvas: Cups, Shirts, Books.</h1>
    <p>
      Discover unique, personalized creations at The Creative Corner. Cups,
      shirts, and collage books designed with passion and tailored just for you.
    </p>
    <button>Shop now</button>
  </div>
  <img src={bannerImage} alt="A scrapbook with family photos" />
</div>

<style>
  .container-banner {
    display: flex;
    margin: 0 auto;
    width: 100%;
    padding: 2rem;
    justify-content: space-between;
    gap: 2rem;
  }

  .container-text {
    display: flex;
    width: 100%;
    flex-direction: column;
    align-items: flex-start;
    max-width: 600px;
    margin: 0 auto;
  }

  h1 {
    font-size: 4rem;
  }

  img {
    max-width: 50%;
    height: auto;
    border-radius: 4px;
  }
</style>
