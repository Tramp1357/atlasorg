{$params=['startId'=>0]}
{processor action='site/web/breadcrumbs' ns=modxsite params=$params assign=result}
<div class="breadcrumbs">
	<span itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a itemprop="url" rel="{$modx->getOption('site_name')}" href="{$modx->getOption('site_url')}">
			<span itemprop="title"><i class="fa fa-home"></i></span></a></span>
	/
	{$total = count($result['object'])}
	{$counter = 0}
	{foreach $result.object as $object}
		{$counter=$counter+1}
		{if $counter<$total}
			<span itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
				<a itemprop="url" rel="{$object.pagetitle}" href="{$object.uri}">
					<span itemprop="title">{$object.pagetitle}</span></a></span>
			/
		{else}
			<span itemscope="itemscope">{$object.pagetitle}</span>
		{/if}
	{/foreach}
</div>
