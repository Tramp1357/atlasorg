{extends file='layout.tpl'}

{block name=breadcrumbs}
	{include file='inc/breadcrumbs/layout.tpl'}
{/block}

{block name=content}
	<h1>{$modx->resource->pagetitle}</h1>
	{$videos=json_decode($modx->resource->getTVValue('videos'),1)}
	<pre>{print_r($videos)}</pre>
{/block}