/*
	Halves production costs and doubles tech costs.
	by Cameron Probert (2016)

	This should also reduce the stacking production cost for each successive district, as well as settlers.
*/

--Lowers production costs:

UPDATE Buildings 
	SET Cost = Cost*0.50;
UPDATE Districts 
	SET Cost = Cost*0.50;
UPDATE Units 
	SET Cost = Cost*0.50;

UPDATE Districts
	SET CostProgressionParam1 = CostProgressionParam1/2;
	
--Increases tech costs:

UPDATE Technologies 
	SET Cost = Cost*2.0;