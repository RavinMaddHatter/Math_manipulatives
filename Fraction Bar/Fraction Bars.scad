use <Write.scad>
bar_length=100;
bar_width=10;
base_wall_t=1;
piece_thicness=2;
gap=.25;
text_h=4;

translate([-bar_width*1.25,0,0])whole();
base();
half();
translate([bar_width*1.25,0,0])third();
translate([bar_width*2.5,0,0])quarter();
translate([bar_width*3.75,0,0])fifth();
translate([bar_width*5,0,0])sixth();
translate([bar_width*6.25,0,0])seventh();
translate([bar_width*7.5,0,0])eighth();
translate([bar_width*8.75,0,0])ninth();
translate([bar_width*10,0,0])tenth();
module base(){
	difference(){
		hull(){
			translate([-bar_width/2-base_wall_t,-base_wall_t,-base_wall_t])cube([bar_width+2*base_wall_t,bar_length+2*base_wall_t,piece_thicness+base_wall_t]);
			translate([-bar_width/2-2*base_wall_t,-2*base_wall_t,-base_wall_t])cube([bar_width+4*base_wall_t,bar_length+4*base_wall_t,.005]);
		}
		translate([-bar_width/2-gap,-gap,0])cube([bar_width+2*gap,2*gap+bar_length,piece_thicness]);
	}
}
module whole(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length,piece_thicness]);
		translate([0,bar_length/2,piect_thickness])rotate([0,0,90])write("1/1",h=text_h,t=piece_thicness*5,center=true);
	}
}
module half(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length/2,piece_thicness]);
		translate([0,bar_length/4,piect_thickness])rotate([0,0,90])write("1/2",h=text_h,t=piece_thicness*5,center=true);
	}
}

module third(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length/3,piece_thicness]);
		translate([0,bar_length/6,piect_thickness])rotate([0,0,90])write("1/3",h=text_h,t=piece_thicness*5,center=true);
	}
}

module quarter(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length/4,piece_thicness]);
		translate([0,bar_length/8,piect_thickness])rotate([0,0,90])write("1/4",h=text_h,t=piece_thicness*5,center=true);
	}
}

module fifth(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length/5,piece_thicness]);
		translate([0,bar_length/10,piect_thickness])rotate([0,0,90])write("1/5",h=text_h,t=piece_thicness*5,center=true);
	}
}

module sixth(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length/6,piece_thicness]);
		translate([0,bar_length/12,piect_thickness])rotate([0,0,90])write("1/6",h=text_h,t=piece_thicness*5,center=true);
	}
}

module seventh(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length/7,piece_thicness]);
		translate([0,bar_length/14,piect_thickness])rotate([0,0,90])write("1/7",h=text_h,t=piece_thicness*5,center=true);
	}
}

module eighth(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length/8,piece_thicness]);
		translate([0,bar_length/16,piect_thickness])rotate([0,0,90])write("1/8",h=text_h,t=piece_thicness*5,center=true);
	}
}

module ninth(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length/9,piece_thicness]);
		translate([0,bar_length/18,piect_thickness])rotate([0,0,90])write("1/9",h=text_h,t=piece_thicness*5,center=true);
	}
}

module tenth(){
	difference(){
		translate([-bar_width/2,0,0])cube([bar_width,bar_length/10,piece_thicness]);
		translate([0,bar_length/20,piect_thickness])rotate([0,0,90])write("1/10",h=text_h*.9,t=piece_thicness*5,center=true);
	}
}
