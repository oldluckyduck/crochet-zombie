res=100;
s=1;

module hook()
{
 difference()
 {
  union()
  {
   cylinder(d1=8, d2=6.5, h=20-2.2, $fn=res);
   
   translate([0,0,20-2.2])
   scale([1,1,1.8])
   sphere(d=6.5, $fn=res/2);
  }
  
  hull()
  {
  rotate([0,-90,0])
  translate([16,-1,0])
  rotate([0,0,16.5])
  hull()
  {
   cylinder(d=2, h=10, $fn=res, center=true);
   translate([-17,0,0])
   cylinder(d=2, h=10, $fn=res, center=true);
  }
  
  rotate([0,-90,0])
  translate([16,-1,0])
  rotate([0,0,45])
  hull()
  {
   cylinder(d=2, h=10, $fn=res, center=true);
   translate([-17,0,0])
   cylinder(d=2, h=10, $fn=res, center=true);
  }
  }
  for(i=[0:5:180])
  translate([0,0,16])
  
  rotate([-(16.5+(45-16.5)/2),0,0])
  
  translate([0,-0.1,5.1])
  
  rotate([0,-i,0])
  translate([-4-1.5,0,0])  
  
  translate([0,-1.5/2,0])
  cylinder(d=1.8, h=10, $fn=res, center=true);
 }
}


translate([0,0,0])
rotate([0,90,0])
difference()
{
 union()
 {
  cylinder(d=8, h=90, $fn=res, center=true); 

  translate([0,0,90/2])
  hook();
 
  translate([0,0,-90/2])
  rotate([0,180,180])
  hook();
 }
 
 translate([9-s,0,0])
 cube(size=[10,10,140], center=true);
 
 translate([-9+s,0,0])
 cube(size=[10,10,140], center=true);
}
