<?php /* Smarty version Smarty-3.0.4, created on 2016-01-31 20:20:16
         compiled from "/var/www/atlasorg.my/man/templates/default/error.tpl" */ ?>
<?php /*%%SmartyHeaderCode:100809338656ae6c8049f682-95373970%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1f68885161b2f2082d0557b37aceaccfb5f4ecf0' => 
    array (
      0 => '/var/www/atlasorg.my/man/templates/default/error.tpl',
      1 => 1454010227,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '100809338656ae6c8049f682-95373970',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div class="modx_error">
    <h2>Error!</h2>
    
    <p><?php echo (isset($_smarty_tpl->getVariable('_e')->value['message']) ? $_smarty_tpl->getVariable('_e')->value['message'] : null);?>
</p>
    
    <?php if (count((isset($_smarty_tpl->getVariable('_e')->value['errors']) ? $_smarty_tpl->getVariable('_e')->value['errors'] : null))>0){?>
    <p></p>
    <p><strong>Errors:</strong></p>
    <ul>
    <?php  $_smarty_tpl->tpl_vars['error'] = new Smarty_Variable;
 $_from = (isset($_smarty_tpl->getVariable('_e')->value['errors']) ? $_smarty_tpl->getVariable('_e')->value['errors'] : null); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['error']->key => $_smarty_tpl->tpl_vars['error']->value){
?>
        <li><?php echo (isset($_smarty_tpl->tpl_vars['error']->value) ? $_smarty_tpl->tpl_vars['error']->value : null);?>
</li>
    <?php }} ?>
    </ul>
    <?php }?>
</div>