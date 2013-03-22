<div class="nav-filter-wrapper">
	<ul class="nav nav-pills">
		<li{if $sMenuItemSelect=='forum'} class="active"{/if}><a href="{router page='forum'}">{$aLang.plugin.forum.forums}</a></li>

		{if $oUserCurrent && $oUserCurrent->isAdministrator()}
			<li{if $sMenuItemSelect=='admin'} class="active"{/if}>
				<a href="{router page='forum'}admin">{$aLang.plugin.forum.acp}</a>
			</li>
		{/if}

		{hook run='menu_forum_item'}
	</ul>

	{hook run='menu_forum'}

	{if $sMenuItemSelect=='admin'}
		{include file="$sTemplatePathPlugin/menu.forum.admin.tpl"}
	{/if}
</div>