<div id="top_nav">
	<nav>
		<ul>
			{foreach $nav.object as $object}
				{if $currid!=$object.id}
					<li class="{$object.cls}"><div class="topline"></div><a href="{if $object.id!=1}{$object.uri}{else}{$modx->getOption('site_url')}{/if}">{$object.linktext}</a>
				{else}
					<li class="{$object.cls}"><div class="topline"></div><span>{$object.linktext}</span>
				{/if}
				{if $object.childs}
					<ul>
					{foreach $object.childs as $item}
						{if $currid!=$item.id}
							<li><a href="{$item.uri}">{$item.linktext}</a></li>
						{else}
							<li class="active"><span>{$item.linktext}</span></li>
						{/if}
					{/foreach}
					</ul>
				{/if}
				</li>
			{/foreach}
		</ul>
	</nav>
</div>
