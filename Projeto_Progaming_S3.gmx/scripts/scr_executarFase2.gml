///scr_executarFase2(arrayComandos, posição)

arrayComandos = argument0;
posicao = argument1;

switch(arrayComandos[posicao]){
    case NADA:
        break;
    case BATER_MASSA:
        batidas++;
        if(batidas > 10){
            perderPor = BATER_MASSA;
        }
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
            perderPor = FERMENTO;
        }
        with(obj_visualizador){
            sprite_index = spr_animFermento;
            image_speed = 1;
        }
        alarm[0] = obj_visualizador.image_number - 4;
        break;
    case FARINHA:
            farinha = true;
            perder = true;
            perderPor = FARINHA;
        
        with(obj_visualizador){
            sprite_index = spr_animFarinha;
            image_speed = 1;
        }
        alarm[0] = obj_visualizador.image_number;
        break;
    case SE:
        //Pegar a peça se
        var pecaSe = obj_bloco.listaConectores[comandoAtual].objConectado;
        //show_debug_message("obj_deus: oieeeee");
        
        if(pecaSe.comandoSe && dentroIf == false){
            dentroIf = true;
        }
        break;
    default:
        break;
        
}
