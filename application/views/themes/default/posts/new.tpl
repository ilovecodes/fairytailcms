<div id="container">
{foreach from=$form_fields item=formfield}
	{if $formfield['label'] != ''}
		{$formfield['label']} :
    {/if}
	{$formfield['field']}
    {$formfield['error']}<br/>
{/foreach}
</div>