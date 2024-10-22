// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_personagem_colisao(){
	if place_meeting(x + hveloc, y, obj_parede) {
		while !place_meeting(x + sign(hveloc), y, obj_parede) {
			x += sign(hveloc);
		}
		hveloc = 0;
	}

	x += hveloc;

	//colisão
	if place_meeting(x, y + vveloc, obj_parede) {
		while !place_meeting(x, y + sign(vveloc), obj_parede) {
			y += sign(vveloc);
		}
		vveloc = 0;
	}

	y += vveloc;
}

function scr_personagem_andando(){
	
	direita = keyboard_check(ord("D"));
	cima = keyboard_check(ord("W"));
	esquerda = keyboard_check(ord("A"));
	baixo = keyboard_check(ord("S"));

	//movimentação horizontal
	hveloc = (direita - esquerda);
	vveloc = (baixo - cima);
	
	veloc_dir = point_direction(x,y, + x + hveloc, y + vveloc);

	if (hveloc != 0 or vveloc != 0) {
		veloc = 2;
	}else {
		veloc = 0
	}
	
	hveloc = lengthdir_x(veloc, veloc_dir);
	vveloc = lengthdir_y(veloc, veloc_dir);

	//colisão
	scr_inimigo_colisao();

	//mudança de sprites
	dir = floor((point_direction(x, y, mouse_x, mouse_y) + 45) /90);

	if hveloc == 0 and vveloc == 0 {
		switch dir {
		default:
			sprite_index = spr_personagem_parado_direita;
		break;
		case 1:
			sprite_index = spr_personagem_parado_cima;
		break;
		case 2:
			sprite_index = spr_personagem_parado_esquerda;
		break;
		case 3:
			sprite_index = spr_personagem_parado_baixo;
		break;
		}
	}else{
		switch dir {
		default:
			sprite_index = spr_personagem_correndo_direita;
		break;
		case 1:
			sprite_index = spr_personagem_correndo_cima;
		break;
		case 2:
			sprite_index = spr_personagem_correndo_esquerda;
		break;
		case 3:
			sprite_index = spr_personagem_correndo_baixo;
		break;
		}
	}
	#region dash
	//muda o estado do personagem para realizar o dash
	if (estamina >= 10){
		if mouse_check_button_pressed(mb_right){
		estamina -= 10;
		alarm[0] = 8;
		alarm[1] = 180;
		dash_dir = point_direction(x, y, mouse_x, mouse_y);
		estado = scr_personagem_dash;
		}
	}
	#endregion
	
	if mouse_check_button_pressed(mb_left){
		//reseta animação
		image_index = 0;
	
		switch dir{
			//direita
			default:
				sprite_index = spr_personagem_atacando_direita;
			break;
			//cima
			case 1:
				sprite_index = spr_personagem_atacando_cima;
			break;
			//esquerda
			case 2:
				sprite_index = spr_personagem_atacando_esquerda;
			break;
			//baixo
			case 3:
				sprite_index = spr_personagem_atacando_baixo;
			break;
		}
	estado = scr_personagem_atacando;
	}
}

function scr_personagem_dash(){
	t_dano = false;
	
	hveloc = lengthdir_x(dash_veloc, dash_dir);
	vveloc = lengthdir_y(dash_veloc, dash_dir);
	
	//colisão para o personagem no dash
	scr_inimigo_colisao();
	
	var _inst = instance_create_layer(x, y, "instances", obj_dash);
	_inst.sprite_index = sprite_index;
}

function scr_personagem_atacando(){
	if image_index >= 1{
		if atacar == false {
			switch dir{
				//direita
				default:
					instance_create_layer(x + 10, y, "Instances", obj_personagem_hitbox);
				break;
				//cima
				case 1:
					instance_create_layer(x, y - 10, "Instances", obj_personagem_hitbox);
				break;
				//esquerda
				case 2:
					instance_create_layer(x - 10, y, "Instances", obj_personagem_hitbox);
				break;
				//baixo
				case 3:
					instance_create_layer(x, y + 10, "Instances", obj_personagem_hitbox);
				break;
			}
		
			atacar = true;
		}
	}
	if fim_da_animacao(){
		estado = scr_personagem_andando;
		atacar = false;
	}
}
	
function scr_personagem_hit(){
	if alarm[2] > 0 {
		hveloc = lengthdir_x(3, empurrar_dir);
		vveloc = lengthdir_y(3, empurrar_dir);
	
		scr_personagem_colisao();
	}else{
		estado = scr_personagem_andando;
	}
}