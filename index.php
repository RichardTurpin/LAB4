<?php

include 'db.php';


// ligação à base de dados
$db = dbconnect($hostname,$db_name,$db_user,$db_passwd);
if($db) {
  // criar query numa string
  $query  = "SELECT microposts.content, microposts.created_at, microposts.updated_at, users.name, microposts.upvotes,microposts.downvotes
             FROM microposts, users
             WHERE microposts.user_id = users.id
             ORDER BY microposts.created_at DESC ";
 
  // executar a query
  if(!($result = @ mysql_query($query,$db )))
   showerror();



  // mostra o resultado da query utilizando o template

  $nrows  = mysql_num_rows($result);
   for($i=0; $i<$nrows; $i++) {
     $tuple = mysql_fetch_array($result,MYSQL_ASSOC);
    
     // trabalha com o bloco FILMES do template
$smarty->assign('posts',$tuple);
  

   } // end for

  // Mostra a tabela
  $smarty->display('index_template.tpl');

  // fechar a ligação à base de dados
  mysql_close($db);
} // end if
?>