// Evento Draw GUI do obj_hud
if (!global.dialogo_ativo && instance_exists(obj_personagem)) {
    var _escala = 3;
    var _guia = display_get_gui_height();
    var _spra = sprite_get_height(spr_hud_vida) * _escala;
    var _huda = _guia - _spra;

    var _vida = obj_personagem.vida;
    
    // Ajustando índices para evitar erros
    var _nivel_index = obj_personagem.level - 1;
    if (_nivel_index >= 0 && _nivel_index < array_length(obj_personagem.max_vida)) {
        var _maxvida = obj_personagem.max_vida[_nivel_index];
    } else {
        var _maxvida = 1; // Valor seguro caso o índice esteja fora do intervalo
    }

    var _estamina = obj_personagem.estamina;
    
    if (_nivel_index >= 0 && _nivel_index < array_length(obj_personagem.max_estamina)) {
        var _maxestamina = obj_personagem.max_estamina[_nivel_index];
    } else {
        var _maxestamina = 1; // Valor seguro
    }

    var _xp = obj_personagem.xp;

    if (_nivel_index >= 0 && _nivel_index < array_length(obj_personagem.max_xp)) {
        var _maxxp = obj_personagem.max_xp[_nivel_index];
    } else {
        var _maxxp = 100; // Valor seguro para evitar erro
    }

    var _xpa = sprite_get_height(spr_hud_exp) * _escala;

    // Barra Vida
    draw_sprite_ext(spr_hud_barra_vida, 0, 0, _huda, (_vida / _maxvida) * _escala, _escala, 0, c_white, 1);

    // Barra Estamina
    draw_sprite_ext(spr_hud_barra_estamina, 0, 0, _huda + 24, (_estamina / _maxestamina) * _escala, _escala, 0, c_white, 1);

    // HUD Vida
    draw_sprite_ext(spr_hud_vida, 0, 0, _huda, _escala, _escala, 0, c_white, 1);

    // Barra XP
    draw_sprite_ext(spr_hud_exp, 0, 0, _guia - _xpa, _escala, _escala, 0, c_white, 1);
    draw_sprite_ext(spr_hud_exp_barra, 0, 9, _guia - _xpa + 9, (_xp / _maxxp) * _escala, _escala, 0, c_white, 1);

    // Barra do Boss
    var _gl = display_get_gui_width();
    if (instance_exists(par_boss)) {
        var _sprw = sprite_get_width(spr_boss_hud) * _escala;

        draw_sprite_ext(spr_boss_hud, 0, _gl / 2 - _sprw / 2, 100, _escala, _escala, 0, c_white, 1);
        
        // Evitar divisão por zero ou acesso inválido
        if (obj_boss.vida_max > 0) {
            draw_sprite_ext(spr_boss_vida, 0, _gl / 2 - _sprw / 2 + 6, 100, obj_boss.vida / obj_boss.vida_max * _escala, _escala, 0, c_white, 1);
        } else {
            draw_sprite_ext(spr_boss_vida, 0, _gl / 2 - _sprw / 2 + 6, 100, 0, _escala, 0, c_white, 1);
        }
    }
}
