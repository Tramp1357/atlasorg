{config name='site_url' assign=base}
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
	{sitemap assign=map}
	{foreach $map as $item}
		<url>
			<loc>{$base}{$item.uri}</loc>
			<lastmod>{$item.editedon|date_format:"%Y-%m-%d"}</lastmod>
			<priority>0.50</priority>
		</url>
	{/foreach}
</urlset>