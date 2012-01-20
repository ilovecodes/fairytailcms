<div id="container">
<table>
			{foreach from=$articles item=article}
				<h2>{$article['title']}</h2><br/>
					by: {$article['author']}<br/>
					created {$article['date_created']} ago<br/>
					{$article['content']}<br/>
					{$article['view_link']}<br/>
				{/foreach}
		</table>
		{$pagination}
</div>