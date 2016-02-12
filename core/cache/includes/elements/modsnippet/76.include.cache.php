<?php
$a=$scriptProperties['a']; //caption
if(empty($a))
    $a=$modx->resource->pagetitle;

$t=$scriptProperties['t']; //caption
if(empty($t))
    $t=$a;

$w=$scriptProperties['w']; //width
if(empty($w))
    $w=250;

$c=$scriptProperties['c']; //align class
if(empty($c))
    $c='left';

$i=$scriptProperties['i']; //image
if(empty($i))
    $i=$modx->resource->getTVValue('image');
if(!empty($i)){
    $i=$modx->runSnippet('pthumb',array('input'=>$i, 'options'=>"w={$w}&q=100"));
    return "<img class=\"content_img pull_{$c}\" src=\"{$i}\" alt=\"{$a}\" title=\"{$t}\"/></a>";
}
else
    return "";
return;
