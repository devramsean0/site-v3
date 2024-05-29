<script>
    import Typewriter from "svelte-typewriter"
</script>

<div class="flex flex-row justify-center gap-5 text-xl">
    <Typewriter mode=scramble delay={200}><h1>Sean Outram</h1></Typewriter>
    <a href="/docs">Docs</a>
    <a href="/blog">Blog</a>
</div>

<style lang="postcss">
    a {
        color: theme(colors.indigo.700)
    }
</style>