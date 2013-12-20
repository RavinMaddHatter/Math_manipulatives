ones_size=5;


translate([26*ones_size,0,0])ones();
translate([24*ones_size,0,0])tens();
translate([12*ones_size,0,0])hundreds();
thousands();
module ones(){
	hull(){
		translate([-.9*ones_size/2,-.9*ones_size/2,-ones_size/2])cube([.9*ones_size,.9*ones_size,ones_size]);
		translate([-ones_size/2,-.9*ones_size/2,-.9*ones_size/2])cube([ones_size,.9*ones_size,.9*ones_size]);
		translate([-.9*ones_size/2,-ones_size/2,-.9*ones_size/2])cube([.9*ones_size,ones_size,.9*ones_size]);
	}
}

module tens(){
	union(){
		for(i=[0:9]){
			translate([0,ones_size*i,0])ones();
		}
		translate([-.9*ones_size/2,-ones_size/2,-.9*ones_size/2])cube([.9*ones_size,ones_size*10,.9*ones_size]);
	}
}

module hundreds(){
	union(){
		for(i=[0:9]){
			translate([ones_size*i,0,0])tens();
		}
	translate([-.9*ones_size/2,-.9*ones_size/2,-.9*ones_size/2])cube([9.8*ones_size,ones_size*9.8,.9*ones_size]);
	}
}

module thousands(){
	union(){
		for(i=[0:9]){
			translate([0,0,ones_size*i])hundreds();
		}
	translate([-.9*ones_size/2,-.9*ones_size/2,-.9*ones_size/2])cube([9.8*ones_size,ones_size*9.8,9.8*ones_size]);
	}
}