/// @description FSM event dispatching.
/// @param ev
/// @param subevent

if( fsm_state == noone )
	return;

script_execute(fsm_state, argument0, argument1);
