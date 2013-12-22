protractor_r=40;
protractor_t=1.2;
line_w=.5;
border_thickness=12;
minor_line_w=.25;
minor_ang_index=1;
major_ang_index=30;
mid_ang_index=15;
pen_r=.5;

protractor();
module protractor(){
	intersection(){
		difference(){
			union(){
				cylinder(r=protractor_r,h=protractor_t);
				for(major_ang=[0:major_ang_index:180]){
					rotate([0,0,-major_ang])translate([-protractor_r,-line_w/2,0])cube([protractor_r/4,line_w,protractor_t+line_w]);
				}
				for(mid_ang=[0:mid_ang_index:180]){
					rotate([0,0,-mid_ang])translate([-protractor_r,-line_w/2,0])cube([protractor_r/8,line_w,protractor_t+line_w]);
				}
				for(minor_ang=[0:minor_ang_index:180]){
					rotate([0,0,-minor_ang])translate([-protractor_r,-minor_line_w/2,0])cube([protractor_r/16,minor_line_w,protractor_t+minor_line_w]);
				}
			}
			difference(){
				translate([0,0,-protractor_t/2])cylinder(r=protractor_r-border_thickness,h=protractor_t*2+line_w);
				translate([-protractor_r,0,-protractor_t/2])cube([protractor_r*2,border_thickness,protractor_r*2+line_w*2]);
			}
			translate([-protractor_r,-protractor_r,-protractor_t])cube([protractor_r*2,protractor_r,protractor_t*3+line_w]);
			translate([0,0,-0.001])cylinder(r1=pen_r,r2=pen_r+protractor_t*2,h=protractor_t*2);
		
		}
		cylinder(r1=protractor_r,r2=0,h=protractor_r*1.25);
	}
}
