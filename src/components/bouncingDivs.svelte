<script>
  import { onMount } from 'svelte';

  // Random colour
  function getRandomColor() {
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++) {
      color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
  }

  
  /**
     * @type {any[]}
     */
  let divs = [];
  const numDivs = 15;
  const speedMultiplier = 0.25;
  onMount(() => {
    for (let i = 0; i < numDivs; i++) {
      const div = {
        top: Math.random() * 100,
        left: Math.random() * 100,
        speedX: (Math.random() - 0.5) * speedMultiplier,
        speedY: (Math.random() - 0.5) * speedMultiplier,
        color: getRandomColor(),
      };
      divs = [...divs, div];
    }

    function animate() {
      divs = divs.map(div => {
        if (div.top <= 0 || div.top >= 100) div.speedY = -div.speedY;
        if (div.left <= 0 || div.left >= 100) div.speedX = -div.speedX;

        div.top += div.speedY;
        div.left += div.speedX;
        return div;
      });
      requestAnimationFrame(animate);
    }

    animate();
  });
</script>

<style>
  .bouncing-div {
    width: 50px;
    height: 50px;
  }
</style>

<div class="absolute inset-0 pointer-events-none">
  {#each divs as div}
    <div
      class="bouncing-div absolute rounded-full"
      style="top: {div.top}%; left: {div.left}%; background-color: {div.color};"
    ></div>
  {/each}
</div>
