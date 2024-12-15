/// @description Criar Diálogo do Boss ou Protagonista em Room3
if (room == Room3) {
    if (textBoxBoss == noone) {
        // Criar caixa de diálogo do Boss
        textBoxBoss = instance_create_layer(x, y, "Text", obj_textbox);
        textBoxBoss.text = textBoss;
        textBoxBoss.creator = self;
        textBoxBoss.name = myName;
        global.dialogo_ativo = true;
    } 
}
else {
    // Destruir as instâncias se a sala não for Room3
    if (textBoxBoss != noone) {
        instance_destroy(textBoxBoss);
        textBoxBoss = noone;
    }
}
