///Sintaxe: scr_executar2(arrayComandos, posiçãoParaExecutar)

arrayComandos = argument0;
posicao = argument1;

switch (arrayComandos[posicao].comandoConector){
    case NADA:
        break;
    case moverDIREITA:
        obj_deus.xAtual += 10;
        break;
    case moverESQUERDA:
        obj_deus.xAtual += -10;
        break;
    case moverCIMA:
        obj_deus.yAtual += -10;
        break;
    case moverBAIXO:
        obj_deus.yAtual += 10;
        break;  
    default:
        break;  
}

