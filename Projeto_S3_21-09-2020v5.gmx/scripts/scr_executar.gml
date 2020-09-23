//Sintaxe: scr_executar(); Vai procurar na listaComandos o último comando não executado e executa ele
//O script vai procurar o último comando não executado e apontar em qual posição está

//Procurar o comando em que parou

comandoNexec = 0;
for(i=0; i < array_height_2d(listaComandos); i++){
    if(listaComandos[i, 1] == false){
        comandoNexec = i;
    }
}


//Executar o comando
switch(listaComandos[comandoNexec, 0]){
    case NADA:
        break;
    case moverDIREITA:
        listaComandos[comandoNexec, 1] = true;
        obj_deus.xAtual += 5;
        comandoAtual += 1;
        break;
    case moverESQUERDA:
        break;
        
}
//Voltar para o começo do For quando todas as linhas forem executados
if(comandoNexec == array_height_2d(listaComandos)){
    for(i=0; i < array_height_2d(listaComandos); i++){
        listaComandos[i, 1] = false;
    }
}
