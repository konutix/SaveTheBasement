#region Particle Types

var _p = part_type_create();

part_type_shape(_p, pt_shape_disk);
part_type_size(_p, .4, .4, -0.01, 0);

part_type_color1(_p, c_aqua);

part_type_life(_p, 60, 60);
part_type_alpha2(_p, .3, 0);

global.ptBulletTrail = _p;


var _p = part_type_create();

part_type_shape(_p, pt_shape_disk);
part_type_size(_p, .4, .4, -0.01, 0);

part_type_color1(_p, c_purple);

part_type_life(_p, 60, 60);
part_type_alpha2(_p, .3, 0);

global.ptSplitBulletTrail = _p;


var _p = part_type_create();

part_type_shape(_p, pt_shape_square);
part_type_size(_p, 1, 1, -0.01, 0);

part_type_scale(_p, 1, .18)

part_type_color1(_p, c_dkgray);

part_type_life(_p, 60, 60);
part_type_alpha2(_p, .3, 0);

global.ptBoltTrail = _p;


var _p = part_type_create();

part_type_shape(_p, pt_shape_square);
part_type_size(_p, .4, .4, -0.01, 0);

part_type_scale(_p, 1, .18)

part_type_color1(_p, c_white);

part_type_life(_p, 60, 60);
part_type_alpha2(_p, .3, 0);

global.ptOpeningShotTrail = _p;


var _p = part_type_create();

part_type_sprite(_p, spr_weakeningRay, 0, 0, 0);
part_type_size(_p, 1, 1, -0.02, 0);

part_type_color1(_p, c_yellow);

part_type_life(_p, 30, 30);
part_type_alpha2(_p, .3, 0);

global.ptWeakRayTrail = _p;


var _p = part_type_create();

part_type_shape(_p, pt_shape_disk);
part_type_size(_p, .2, .3, -0.01, 0);

part_type_direction(_p,20,160,0,0);
part_type_speed(_p,2,5,0,0);
part_type_gravity(_p, 0.2, 270);

part_type_color1(_p, c_red);

part_type_life(_p, 30, 30);
part_type_alpha2(_p, 1, 0.3);

global.ptBlood = _p;


var _p = part_type_create();

part_type_shape(_p, pt_shape_square);
part_type_size(_p, .15, .25, -0.01, 0);

part_type_direction(_p,20,160,0,0);
part_type_speed(_p,2,5,0,0);
part_type_gravity(_p, 0.2, 270);

part_type_color1(_p, $2d2003);

part_type_life(_p, 30, 60);
part_type_alpha2(_p, 1, 0.3);

global.ptDepris1 = _p;

var _p = part_type_create();

part_type_shape(_p, pt_shape_square);
part_type_size(_p, .15, .25, -0.01, 0);

part_type_direction(_p,20,160,0,0);
part_type_speed(_p,2,5,0,0);
part_type_gravity(_p, 0.2, 270);

part_type_color1(_p, $353535);

part_type_life(_p, 30, 60);
part_type_alpha2(_p, 1, 0.3);

global.ptDepris2 = _p;

#endregion