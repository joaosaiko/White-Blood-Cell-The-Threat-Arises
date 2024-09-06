// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_ataque_boss_colisao() {
    // Movimento horizontal
    if (place_meeting(x + hveloc, y, obj_parede)) {
        move_contact_solid(hveloc, 0);
        instance_destroy(); // Destrói o projétil ao colidir com a parede
    } else {
        x += hveloc;
    }

    // Movimento vertical
    if (place_meeting(x, y + vveloc, obj_parede)) {
        move_contact_solid(0, vveloc);
        instance_destroy(); // Destrói o projétil ao colidir com a parede
    } else {
        y += vveloc;
    }
}

function scr_boss_escolher_ataque(){
	if alarm[0] <= 0 {
		var _ataque = choose(scr_boss_ataque_1, scr_boss_ataque_2);
		estado = _ataque;
		alarm[0] = 180; //tempo entre cada ataque
	}
	
}

function scr_boss_ataque_1(){
    // Define a direção inicial com base no valor de ataque
    var _dir = (ataque mod 2 == 1) ? 0 : 22.5;
    
    if (ataque > 0) {
        if (alarm[1] <= 0){        
            repeat(8){
                // Cria projéteis a partir do centro do obj_boss
                var _inst = instance_create_layer(obj_boss.x + obj_boss.sprite_width / 2, obj_boss.y + obj_boss.sprite_height / 2, "Instances", obj_boss_projetil);
                _inst.speed = 2;
                _inst.direction = _dir;
        
                _dir += 45;
            }
            ataque -= 1;
            alarm[1] = 30;
        }
    } else {
        estado = scr_boss_escolher_ataque;
        ataque = 5;
    }
}


function scr_boss_ataque_2(){
	repeat(6){
		var _xx = irandom_range(x - 100, x + 100);
		var _yy = irandom_range(y - 100, y + 100);
		
		instance_create_layer(_xx, _yy, "Instances", obj_boss_ataque_1);
	}
	estado = scr_boss_escolher_ataque;
}