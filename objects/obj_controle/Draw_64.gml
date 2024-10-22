// Evento Draw GUI do obj_hud
if (!global.dialogo_ativo) {
    var _escala = 3;
    var _guia = display_get_gui_height();
    var _spra = sprite_get_height(spr_hud_vida) * _escala;
    var _huda = _guia - _spra;

    var _vida = obj_personagem.vida;
    var _maxvida = obj_personagem.max_vida[obj_personagem.level];

    var _estamina = obj_personagem.estamina;
    var _maxestamina = obj_personagem.max_estamina[obj_personagem.level];

    var _xp = obj_personagem.xp;
    var _maxxp = obj_personagem.max_xp[obj_personagem.level];

    var _xpa = sprite_get_height(spr_hud_exp) * _escala;

    // Barra Vida
    draw_sprite_ext(spr_hud_barra_vida, 0, 0, _huda, (_vida/_maxvida) * _escala, _escala, 0, c_white, 1);

    // Barra Estamina
    draw_sprite_ext(spr_hud_barra_estamina, 0, 0, _huda + 24, (_estamina/_maxestamina) * _escala, _escala, 0, c_white, 1);

    // HUD Vida
    draw_sprite_ext(spr_hud_vida, 0, 0, _huda, _escala, _escala, 0, c_white, 1);

    // Barra XP
    draw_sprite_ext(spr_hud_exp, 0, 0, _guia - _xpa, _escala, _escala, 0, c_white, 1);
    draw_sprite_ext(spr_hud_exp_barra, 0, 9, _guia - _xpa + 9, (_xp/_maxxp) * _escala, _escala, 0, c_white, 1);

    // Barra do Boss
    var _gl = display_get_gui_width();
    if instance_exists(par_boss) {
        var _sprw = sprite_get_width(spr_boss_hud) * _escala;

        draw_sprite_ext(spr_boss_hud, 0, _gl/2 - _sprw/2, 100, _escala, _escala, 0, c_white, 1);
        draw_sprite_ext(spr_boss_vida, 0, _gl/2 - _sprw/2 + 6, 100, obj_boss.vida/obj_boss.vida_max * _escala, _escala, 0, c_white, 1);
    }
}
