bar_length=100;
bar_width=10;
base_wall_t=1;
piece_thicness=2;
gap=.25;


base();
half();
module base(){
	difference(){
		hull(){
			translate([-bar_width/2-base_wall_t,-base_wall_t,-base_wall_t])cube([bar_width+2*base_wall_t,bar_length+2*base_wall_t,piece_thicness+base_wall_t]);
			translate([-bar_width/2-2*base_wall_t,-2*base_wall_t,-base_wall_t])cube([bar_width+4*base_wall_t,bar_length+4*base_wall_t,.005]);
		}
		translate([-bar_width/2-gap,-gap,0])cube([bar_width+2*gap,2*gap+bar_length,piece_thicness]);
	}
}

module half(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/2,piece_thicness]);
}

module third(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/3,piece_thicness]);
}

module quarter(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/4,piece_thicness]);
}

module fifth(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/5,piece_thicness]);
}

module sixth(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/6,piece_thicness]);
}

module seventh(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/7,piece_thicness]);
}

module eighth(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/8,piece_thicness]);
}

module ninth(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/9,piece_thicness]);
}

module tenth(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/10,piece_thicness]);
}

module eleventh(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/11,piece_thicness]);
}

module twelth(){
	translate([-bar_width/2,0,0])cube([bar_width,bar_length/12,piece_thicness]);
}
