	<div id="pages">
		<ul>
			{if $logged_in}
				<li><a href="{$logout['link']}">{$logout['label']}</a></li>
				{if $is_admin}
                    <li><a href="{$manage['link']}">{$manage['label']}</a></li>
				{/if}
				<li><a href="{$new_post['link']}">{$new_post['label']}</a></li>
				<li><a href="{$username['link']}">{$username['label']}</a></li>
			{else}
				<li><a href="{$login['link']}" class="signin"><span>{$login['label']}</span></a></li>
			{/if}
		</ul>
	</div>
