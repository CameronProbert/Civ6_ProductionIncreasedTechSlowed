/*
	Halves production costs and doubles tech costs.
	by Cameron Probert (2016)

	This should also reduce the stacking production cost for each successive district, as well as settlers.
*/

--Lowers production costs:

UPDATE Buildings 
	SET Cost = Cost*0.65;
UPDATE Districts 
	SET Cost = Cost*0.65;
UPDATE Units 
	SET Cost = Cost*0.65;

UPDATE Districts
	SET CostProgressionParam1 = CostProgressionParam1/2;
	
-- Increases tech costs:
-- Special thanks to alpaca, Gedemon. Code adapted from their mod.

UPDATE Technologies
	SET Cost = Cost*1
	WHERE EraType ='ERA_ANCIENT'; -- just for reference
UPDATE Technologies 
	SET Cost = Cost*1
	WHERE EraType ='ERA_CLASSICAL';
UPDATE Technologies
	SET Cost = Cost*1.1
	WHERE EraType ='ERA_MEDIEVAL';
UPDATE Technologies
	SET Cost = Cost*1.2
	WHERE EraType ='ERA_RENAISSANCE';
UPDATE Technologies
	SET Cost = Cost*1.45
	WHERE EraType ='ERA_INDUSTRIAL';
UPDATE Technologies
	SET Cost = Cost*1.65
	WHERE EraType ='ERA_MODERN';
UPDATE Technologies
	SET Cost = Cost*1.90
	WHERE EraType ='ERA_ATOMIC';
UPDATE Technologies
	SET Cost = Cost*2.20
	WHERE EraType ='ERA_INFORMATION';