<div id="navigation">
<ul>
	{if $logged_in}
	<li>Welcome <a href="{$username['link']}">{$username['label']}!</a></li>
	<li><a href="{$back_to_home['link']}">{$back_to_home['label']}</a></li>
	<li><a href="{$logout['link']}">{$logout['label']}</a></li>
	{if $is_admin}
		<li><a href="{$manage_users['link']}">{$manage_users['label']]}</a></li>
		<li><a href="{$manage_posts['link']}">{$manage_posts['label']}</a></li>
	{else}
	{/if}
{else}
<li><span><a href="{$login['link']}" class="signin">{$login['label']}</a></span></li>
{/if}
</ul>
</div>