<section class="public-arr">
 {{ for: ${activity} as ${item}, ${index} }}
    <div class="public-arr-box" data-link="bookPage">
        <div class="public-arr-icon">${item.title}</div>
        <div class="public-arr-info">
            <span>${item.title}</span>
            <p>${item.content}</p>
        </div>
        <button type="button">>>详情</button>
    </div>
      {{ /for }}
</section>