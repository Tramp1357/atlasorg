<?php
/**
 * Smarty plugin
 *
 * @package Smarty
 * @subpackage PluginsFunction
 */


function smarty_function_vthumb($params, & $smarty)
{
    if(!isset($params['id']) OR !$id = $params['id']){return;}

	$service = $params['service'];

    if(!empty($params['assign'])){
        $assign = (string)$params['assign'];
    }

	switch($service){
		case 'vimeo':
			$xml = simplexml_load_file('http://vimeo.com/api/v2/video/'.$id.'.xml');
			if ($xml) {
				$url=(string)$xml->video->thumbnail_large;
			}
			break;

		default: //youtube
			$url='http://img.youtube.com/vi/'.$id.'/0.jpg';
			$url=$smarty->modx->runSnippet('pthumb',['input'=>$url,'options'=>'sy=.125&sh=.75']);
			break;
	}

    if(!empty($assign)){
        $smarty->assign($assign, $url);
        return;
    }
    
    // else
    return $url;
}

?>