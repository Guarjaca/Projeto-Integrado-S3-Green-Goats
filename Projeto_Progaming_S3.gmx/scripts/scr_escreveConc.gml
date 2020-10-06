///src_escreveConc(x, y, [comando a analisar])

xT = argument0;
yT = argument1;
comando = argument2;

if(room == Room_Fase2){

switch(comando){
    default:
        break;
    case BATER_MASSA:
        draw_text(xT, yT + mEsp, "batidas++;");
        break;
    case FERMENTO:
        draw_text(xT, yT + mEsp, "fermento = true;");
        break;
    case FARINHA:
        draw_text(xT, yT + mEsp, "farinha = true;");
        break;
    case SE:
        //dentroSe = true;
        draw_text(xT, yT + mEsp, "if(i<" + string(maxCiclos) + "/2){ ");
        mEsp += esp;
        var listaSubComandos;
        for(j=0; j<obj_blocoSe.qntdSubConectores; j++){
            listaSubComandos[j] = obj_blocoSe.listaSubConectores[j].comandoConector;
        }
        for(j=0; j<obj_blocoSe.qntdSubConectores; j++){
            scr_escreveConc(xTexto + esp, yTexto, listaSubComandos[j]);
        }
        draw_text(xT, yT + mEsp, "}");
        break;
    case NADA:
        draw_text(xT, yT, " ");
        break;    
}

mEsp += esp;

}
