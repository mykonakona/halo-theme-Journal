<div ref="sideContainer" class="side-container">
    <a class="a-block nav-head <#if is_index??>active</#if>" href="${blog_url!}">
        <div class="nav-title">
            ${(settings.sidebar_title?? && settings.sidebar_title!='')?string('${settings.sidebar_title!}','${blog_title!}')}
        </div>
        <div class="nav-subtitle">
            ${(settings.sidebar_subtitle?? && settings.sidebar_subtitle!='')?string('${settings.sidebar_subtitle!}','')}
        </div>
    </a>

    <div class="nav-link-list">

        <@menuTag method="list">
            <#list menus?sort_by('priority') as menu>
                <a class="a-block nav-link-item" href="${menu.url}" target="${menu.target!}">
                    ${menu.name!}
                </a>
            </#list>
        </@menuTag>

        <#if settings.sidebar_rss!true>
        <a class="a-block no-tint nav-link-item" href="${atom_url!}">
            RSS
        </a>
        </#if>
    </div>

    <#-- // Please keep the section below and do not make modifications. // -->
    <div class="nav-footer">
        Proudly published with <a href="https://halo.run/" target="_blank" rel="noreferrer noopener">Halo</a><br>
        <#-- Please keep the section below and do not make modifications. -->
        Theme <a href="https://github.com/mykonakona/halo-theme-Journal-Nightly/" target="_blank" rel="noreferrer noopener">Journal-Nightly</a> by <a href="https://jakku.top" target="_blank" rel="noreferrer noopener">Jakku</a><br>
        <#-- Please keep the section below and do not make modifications. -->
        &copy; ${.now?string('yyyy')} <a href="${blog_url!}">${blog_title!}</a>
        <@global.footer_info />
    </div>
</div>