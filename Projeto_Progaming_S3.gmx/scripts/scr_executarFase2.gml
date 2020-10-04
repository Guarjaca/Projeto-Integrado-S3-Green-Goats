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
        if(fermento == false){
            fermento = true;
        }else{
            perder = true;
        }
        with(obj_visualizador){
            sprite_index = spr_animFermento;
            image_speed = 1;
        }
        alarm[0] = obj_visualizador.image_number;
        break;
    case FARINHA:
        farinha = true;
        break;
    case SE:
        //Pegar a peça se
        var pecaSe = obj_bloco.listaConectores[comandoAtual].objConectado;
        show_debug_message("obj_deus: oieeeee");
        
        if(pecaSe.comandoSe && dentroIf == false){
            draw_circle(x, y, 20, false);
            dentroIf = true;
        }
        break;
    default:
        break;
        
}
