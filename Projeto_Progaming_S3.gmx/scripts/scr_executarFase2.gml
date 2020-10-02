///scr_executarFase2(arrayComandos, posição)

arrayComandos = argument0;
posicao = argument1;

switch(arrayComandos[posicao]){
    case NADA:
        break;
    case BATER_MASSA:
        batidas++;
        with(obj_visualizador){
            sprite_index = spr_animMexe;
            image_speed = 1;
        }
        alarm[0] = obj_visualizador.image_number;
        break;
    case FERMENTO:
        fermento = true;
        break;
    case FARINHA:
        farinha = true;
        break;
    default:
        break;
        
}
