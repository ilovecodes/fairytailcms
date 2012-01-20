<div id="navigation">
<ul>
	{if $logged_in}
	<li>Welcome {$username}!</li>
	<li>{$back_to_home}</li>
	<li>{$logout}</li>
	{if $is_admin}
		<li>{$manage_users}</li>
		<li>{$manage_posts}</li>
	{else}
	{/if}
{else}
<li>{$login}</li>
{/if}
</ul>
</div>