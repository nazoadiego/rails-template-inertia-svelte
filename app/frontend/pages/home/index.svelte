<script>
  import { Progress } from "melt/components";

  import Layout from "../../components/Layout.svelte";
</script>

<Layout>
  <h1>IS it OI</h1>
  <Progress>
    {#snippet children(progress)}
      <div {...progress.root}>
        <div
          {...progress.progress}
          data-melt-progress-progress={`${progress.progress}`}
        ></div>
      </div>
    {/snippet}
  </Progress>
</Layout>
