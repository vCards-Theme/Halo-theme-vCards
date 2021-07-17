<!-- Sidebar nav -->
<aside class="col-12 col-md-12 col-lg-2 col_12">
    <div class="sidebar box sticky-column">
        <ul class="nav">
            <@menuTag method="list">
                <#list menus?sort_by('priority') as menu>
                    <li class="nav__item">
                        <a href="${menu.url!}">
                            <i class="icon-home"></i>[ ${menu.name!} ]
                        </a>
                    </li>
                </#list>
            </@menuTag>
        </ul>
    </div>
</aside>