{$currid=$modx->resource->id}
<!DOCTYPE html>
<html lang="ru">
<head>
	<base href="{$modx->getOption('site_url')}"/>
	<title>{block name="title"}{$modx->resource->longtitle|default:$modx->resource->pagetitle} | {$modx->getOption('site_name')}{/block}</title>
	<link href="{$template_url}css/style.css" rel="stylesheet"/>
</head>
<body>
	<header>
		<div class="top_phone">
			ЗАПИШИТЕСЬ НА БЕСПЛАТНУЮ ДИАГНОСТИКУ ПО ТЕЛЕФОНУ <phone>{config name='site.phone'}</phone>
		</div>
		<div class="consorder">
			<phone>+7 (906) 748-20-60</phone>
			<a id="consorder" href="#">Запишитесь на бесплатную диагностику</a>
		</div>
	</header>

	<div class="wrap">
		{$params=['startId'=>0,'level'=>2]}
		{processor action='site/web/getmenu' ns='modxsite' params=$params assign=nav}
		{include file='inc/top_nav/layout.tpl'}
		<div id="content" class="container row">
			<aside>
				<h3>Расписание</h3>
				<strong>Каждый месяц</strong>
				<ul class="cities">
					<li><a href="#">Во Владивостоке</a></li>
					<li><a href="#">В Хабаровске</a></li>
					<li><a href="#">В Уфе</a></li>
					<li><a href="#">В Москве</a></li>
				</ul>
				<a class="btn" id="order" href="#">Оставить заявку</a>
				<script type="text/javascript" src="http://vk.com/js/api/openapi.js?121"></script>
				<div id="vk_groups"></div>
				<script type="text/javascript">
					{literal}
					VK.Widgets.Group("vk_groups", {mode: 0, width: "190", height: "350", color1: 'FDFDFC', color2: '090A0B', color3: 'E1B120'}, 80724245);
					{/literal}
				</script>
			</aside>
			<article>
				{block name=breadcrumbs}{/block}
				{block name=content}
					<h1>{$modx->resource->pagetitle}</h1>
					{$modx->resource->content}
				{/block}
				{block name=share}
					<script type="text/javascript" src="https://yastatic.net/share/share.js" charset="utf-8"></script></p>
					<div class="yashare-auto-init" data-yasharel10n="ru" data-yasharequickservices="vkontakte,facebook,twitter,odnoklassniki,moimir,gplus" data-yasharetype="button"></div>
				{/block}
			</article>
		</div>
	</div>

	<footer>
		<nav>
			<ul>
				{foreach $nav.object as $object}
					{if $currid!=$object.id}
						<li></div><a href="{if $object.id!=1}{$object.uri}{else}{$modx->getOption('site_url')}{/if}">{$object.linktext}</a></li>
					{else}
						<li class="active"></div><span>{$object.linktext}</span></li>
					{/if}
				{/foreach}
			</ul>
		</nav>
		<div class="info">
			<div class="phone">8-925-718-09-07</div>
			<div class="days">МЫ РАБОТАЕМ<br/>БЕЗ ВЫХОДНЫХ</div>
			<div class="email">E-mail: <a href="mailto:{config name='site.email'}">{config name='site.email'}</a></div>
		</div>
	</footer>
	{block name=modals}
		{include file='modals/order.tpl'}
		{$smarty.block.child}
	{/block}
	<noscript><div><img src="//mc.yandex.ru/watch/27750747" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
	<script id="rhlpscrtg" type="text/javascript" charset="utf-8" async="async" src="https://web.redhelper.ru/service/main.js?c=atlasorg"></script>

	<script data-no-instant src="{$template_url}js/app.js"></script>
</body>
</html>