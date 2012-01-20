<div id="container">
	<br/>
	<h1>My Posts</h2>
	<br/>
	<a href="{$new_post['link']}">{$new_post['label']}</a>
	{if $empty_posts}
		{$no_post_message}
	{else}
		<table>
			<tr><th>Title</th><th></th>
			<th>Date Created</th>
			<th>Status</th>
			<th></th>
			<th></th>
			<th>Actions</th>
			<th></th></tr>
				{foreach from=$posts item=post}
					<tr>
						<td>{$post['title']}</td><td></td>
						<td>{$post['date_created']}</td>
						<td>{$post['status']}</td>
						<td></td>
						<td>{$post['view_link']}</td>
						<td>{$post['edit_link']}</td>
						<td><a href="javascript:void(0);" class="delete" rel="{$post['delete_link']}">Delete</a></td>
					</tr>
				{/foreach}
		</table>
	<br/>
	{/if}
</div>