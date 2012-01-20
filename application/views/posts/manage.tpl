<div id="container">
<table>
	<tr>
		<th></th>
		<th>Title</th>
		<th>Author</th>
		<th>Status</th>
		<th>Date Created</th>
		<th>Date Updated</th>
		<th>Actions</th>
	</tr>
	{$form}
	
		{foreach from=$form_elements item=form_element}
			<tr>
				<td>{$form_element['checkbox']}</td>
				<td>{$form_element['title']}</td>
				<td>{$form_element['author']} </td>
				<td>{$form_element['status']}</td>
				<td>{$form_element['date_created']}</td>
				<td>{$form_element['date_updated']}</td>
				<td>{$form_element['view_link']}</td>
			</tr>
		{/foreach}
</table>
	{$approve}
	{$delete}
</div>