<?php
/**
 * Smarty plugin
 *
 * @package Smarty
 * @subpackage PluginsFunction
 */


function smarty_function_sitemap($params, & $smarty)
{
    $modx=$smarty->modx;
    if(!isset($params['ctx']) OR !$ctx = $params['ctx'])
        $ctx=$modx->context->get('key');

	if(!empty($params['assign']))
		$assign = (string)$params['assign'];

	$q=$modx->newQuery('modResource');
	$q->where([
		'deleted'=>0,
		'published'=>1,
		'searchable'=>1,
		'context_key'=>$ctx
	]);

	$q->select(['editedon','uri']);
	$q->sortby('editedon','desc');

	$q->prepare();
	$q->stmt->execute();

    $data=$q->stmt->fetchAll(PDO::FETCH_ASSOC);

	if(!empty($assign)){
		$smarty->assign($assign, $data);
		return;
	}

	return $data;
}



