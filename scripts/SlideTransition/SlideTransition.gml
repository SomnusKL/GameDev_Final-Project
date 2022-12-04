/// @desc SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode between nexty, restart and goto
/// @arg Target sets target room when using to the goto mode.

with (oTransition)
{
	mode = argument [0]; 
	if (argument_count > 1) target = argument [1];
	

}