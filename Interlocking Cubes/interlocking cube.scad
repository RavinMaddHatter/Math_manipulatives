cube_size=8;
peg_r=2.1;
peg_h=1.25;
interlock=.6;
break=.5;
gap=.1;
wall_t=.6;
champfer=1;


interlocking_cube();


module interlocking_cube(){
	difference(){
		union(){
			hull(){
				cube([cube_size-champfer,cube_size-champfer,cube_size],center=true);
				cube([cube_size,cube_size-champfer,cube_size-champfer],center=true);
				cube([cube_size-champfer,cube_size,cube_size-champfer],center=true);
			}
			interlock_m();
			rotate([90,0,0])interlock_m();
			rotate([0,90,0])interlock_m();
		}
		interlock_f();
		rotate([90,0,0])interlock_f();
		rotate([0,90,0])interlock_f();
	}
}
module interlock_m(){
	difference(){
		union(){
			cylinder(r=peg_r,h=peg_h+cube_size/2);
			hull(){
				for(ang=[0:15:360]){
					rotate([0,0,ang])translate([peg_r,0,cube_size/2+peg_h])sphere(r=interlock/2);
				}
			}
		}
		cylinder(r=peg_r-wall_t,h=peg_h+cube_size);
		cube([break,cube_size,cube_size+4*peg_h],center=true);
		cube([cube_size,break,cube_size+4*peg_h],center=true);
	}
}



module interlock_f(){
	translate([0,0,-cube_size])union(){
		cylinder(r=peg_r+gap,h=peg_h+cube_size/2+gap);
		hull(){
			for(ang=[0:15:360]){
				rotate([0,0,ang])translate([peg_r,0,cube_size/2+peg_h])sphere(r=interlock/2+gap);
			}
		}
	}
}