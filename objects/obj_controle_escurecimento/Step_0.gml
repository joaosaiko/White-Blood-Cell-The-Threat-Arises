/// @description Insert description here
// You can write your code in this editor
// No evento Step do obj_controle_escurecimento
if (global.boss_derrotado && !escurecimento_ativo) {
    // Iniciar o processo de escurecimento
    escurecimento_ativo = true;
}

if (escurecimento_ativo) {
    // Aumentar o progresso do escurecimento
    escurecimento_progresso += 0.007; // Ajuste para controlar a velocidade do escurecimento
    if (escurecimento_progresso >= 1) {
        escurecimento_progresso = 1;
        // Se estiver totalmente escurecido, mudar para a sala de encerramento
        room_restart(); // Ou troque para outra sala, caso você queira algo específico
        room_goto(RoomEncerramento); 
    }
}
