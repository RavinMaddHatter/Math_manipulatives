$fs=1;
$fa=1;
board_x=70;
board_y=70;
board_t=1.5;
pin_r=.75;
pin_l=4;
pin_spacing=7;
pin_latch_r=1.1;
ridge_t=1;


board();
module board(){
union(){
	for(x_off=[pin_spacing:pin_spacing:board_x-pin_spacing]){
		for(y_off=[pin_spacing:pin_spacing:board_y-pin_spacing]){
			translate([x_off,y_off,0])pin();
		}
	}
cube([board_x,board_y,board_t]);
translate([board_x/2-ridge_t/2,0,0])cube([ridge_t,board_y,ridge_t+board_t]);
translate([0,board_y/2-ridge_t/2,])cube([board_x,ridge_t,board_t+ridge_t]);
}
}
module pin(){
union(){
	cylinder(r=pin_r,h=pin_l+board_t);
	translate([0,0,pin_l+board_t])sphere(r=pin_latch_r);
}
}