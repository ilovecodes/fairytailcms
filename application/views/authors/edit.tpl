<div id="container">
{}
{foreach from=$form_fields item=form_item}
	{if $form_item['label'] != ''}
		<b>{$form_item['label']}</b>:
	{/if}
		{$form_item['form_element']}
		<br/>
{/foreach}
</div>