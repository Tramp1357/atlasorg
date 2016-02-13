{$params=[
	'parent'=>103,
	'sort'=>'menuindex',
	'dir'=>'asc',
	'limit'=>0
]}
{processor action='web/resources/getdata' ns=modxsite params=$params assign=result}
<ul class="artl_list">
{foreach $result.object as $object}
	<li>
		<div class="al_img">
			<img src="{thumb input="{$object.image}" options='w=120&h=120&zc=1'}" alt="{$object.pagetitle}"/>
		</div>
		<div class="info">
			<a href="{$object.uri}">
				<h3>{$object.pagetitle}</h3>
			</a>
			<p>{$object.introtext}</p>
		</div>
	</li>
{/foreach}
</ul>