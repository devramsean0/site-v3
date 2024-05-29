<script>
    import Nav from "../components/nav.svelte";
    import "../app.css";
</script>

<Nav />
<slot />

<style lang="postcss">
    :global(html) {
        background-color: theme(colors.gray.900);
        color: theme(colors.slate.50)
    }
</style>