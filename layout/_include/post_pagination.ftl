<nav class="post-pagination">
    <#if prevPost??>
    <a class="newer-posts" href="${prevPost.fullPath!}">
        上一篇<br>${prevPost.title}
    </a>
    </#if>
    <span class="page-number"></span>
    <#if nextPost??>
    <a class="older-posts" href="${nextPost.fullPath!}">
        下一篇<br>${nextPost.title}
    </a>
    </#if>
</nav>
