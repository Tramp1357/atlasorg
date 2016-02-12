<?php  return 'switch($modx->event->name){
    
    case \'OnHandleRequest\':
        if($modx->context->key == \'mgr\'){
            return;    
        } 
        
        
        /*
            Выход. Убивается сессия вообще, выйдет из всех контекстов, в том числе и mgr
        */
        if(isset($_GET[\'service\'])){
            switch(strtolower($_GET[\'service\'])){
                case \'logout\':
                    $modx->user->endSession();
                    $modx->user = null;
                    $modx->getUser();
                    break;
            }
        }
        
        break;
        
    case \'OnManagerLogin\':
        if($user){
           // Автоматически авторизуем в web
           if(!$user->isAuthenticated(\'web\')){
               $user->addSessionContext(\'web\');
           }
        }
    case \'OnWebLogin\':
        
        if($user){
            /*
                Пытаемся получить анонимную корзину, если есть
            */ 
            
            if(
                !empty($_SESSION[\'order_id\'])
                AND $anonim_order_id = (int)$_SESSION[\'order_id\']
                AND $anonim_order_id == (int)$modx->basket->getActiveOrderId()
                AND $order = $modx->getObject(\'Order\', $anonim_order_id)
                AND !$order->contractor
                
            ){
                $order->contractor = $user->id;
                if(!$order->createdby){
                    $order->createdby = $user->id;
                }
                if($order->save()){
                    unset($_SESSION[\'order_id\']);
                }
            }
        }
        
        break;
          
}
return;
';