$fn = 25;

bit_depth = 20;
edge_length = 17;

cylinder(h = 2, d = edge_length * 1.6);
translate([0, 0, 2])
cylinder(h = 16, d = 8, $fn = 6);
intersection()
{
    translate([0, 0, - bit_depth / 2])
    {
        cube([edge_length, edge_length, bit_depth], center = true);
        rotate([0, 0, 45])
        cube([edge_length, edge_length, bit_depth], center = true);
    }
    translate([0, 0,- bit_depth*1.57])
    cylinder(h = bit_depth*1.57, d1 = 0, d2 = edge_length * 3);
}
