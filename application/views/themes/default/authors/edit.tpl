<div id="container">
You haven't entered your name yet. Please enter your name.<br/>
{foreach from=$form_fields item=form_item}
	{if $form_item['label'] != ''}
		<b>{$form_item['label']}</b>:
	{/if}
		{$form_item['form_element']}
		<br/>
{/foreach}
</div>