<script>
    // @ts-nocheck
    import ProjectsData from "../lib/data/projects.json";
</script>

<section class="homeCard">
    <h3 class="text-2xl">My Projects</h3>
    <p>Please note: These need some work, and most of them a redesign as I am a much better dev than I was back then.</p>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
        {#each ProjectsData.projects as project}
            <div class="rounded-lg">
                <img src={`/assets/projects/${project.screenshotPath}`} alt={project.name} class="max-h-128 w-full" />
                <div class="bg-gray-100 text-black z-20 relative ">
                    <h4 class="text-xl">{project.name}</h4>
                    <p>{project.description}</p>
                    <div class="flex flex-cols gap-1">
                        {#each project.tags as tag}
                            <span class={`border-2 border-solid rounded-full p-3`} style={`border-color: ${ProjectsData.tags[tag].color};`}>{ProjectsData.tags[tag].friendlyName}</span>
                        {/each}
                    </div>
                    <div class="flex flex-cols gap-3">
                        {#if project.oss}
                            <a href={`https://github.com/${project.github}`}><img src="/icons/github.svg" alt="Github logo"/></a>
                        {/if}
                        {#if project.online}
                            <a href={project.url}><img src="/icons/link.svg" alt="Link"></a>
                        {/if}
                    </div>
                </div>
            </div>
        {/each}
    </div>
</section>