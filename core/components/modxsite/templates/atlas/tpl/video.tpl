{extends file='layout.tpl'}

{block name=breadcrumbs}
	{include file='inc/breadcrumbs/layout.tpl'}
{/block}

{block name=content}
	<h1>{$modx->resource->longtitle|default:$modx->resource->pagetitle}</h1>
	{$videos=json_decode($modx->resource->getTVValue('videos'),1)}
	<div class="video_list">
	{foreach $videos as $object}
		<div class="row">
			<div class="col_video">
				<h5>{$object.title}</h5>
				<a class="v_play" href="#" data-service="{$object.service}" data-video_id="{$object.video_id}">
					<img class="responsive_img" src="{vthumb id=$object.video_id service=$object.service}" alt='{$object.title}'/>
				</a>
				<p class="vl_descr">{$object.description}</p>
			</div>
		</div>
	{/foreach}
	</div>
{/block}

{block name=modals append}
	{include file='modals/video.tpl'}
{/block}
