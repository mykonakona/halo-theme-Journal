
<div class="pagination <#if is_index??>index-page</#if>">
    <#if pagination.hasPrev>
        <a class="pagination-action" href="${pagination.prevPageFullPath!}" style="opacity: 1">
    <#else>
        <a class="pagination-action" style="opacity: 0">
    </#if>
    <i class="material-icons pagination-action-icon">
        chevron_left
    </i>
    </a>
    <div class="pagination-indicator">
        <#list pagination.rainbowPages as number>
            <#if number.isCurrent>
                <span>${number.page!}/${posts.totalPages!}</span>
            </#if>
        </#list>
    </div>
        <#if pagination.hasNext>
    <a class="pagination-action" href="${pagination.nextPageFullPath!}" style="opacity: 1">
        <#else>
    <a class="pagination-action" style="opacity: 0">
        </#if>
        <i class="material-icons pagination-action-icon">
            chevron_right
        </i>
    </a>
</div>
