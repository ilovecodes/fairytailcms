<div id="container">
	<h1>{$post -> title}</h1><br/>
		{$post -> author_name}<br/>

	Created, {$post -> date_created}<br/>
	Updated, {$post -> date_updated}<br/>

	<div id="content">
		{$post -> content}<br/>
	</div>
		{$back_to_posts}
</div>