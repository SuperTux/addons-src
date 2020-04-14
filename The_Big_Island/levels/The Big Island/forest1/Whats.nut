function initialize()
{
Tux.deactivate();
settings.fade_to_ambient_light(0.7, 0.7, 0.7, 1);
wait(2);
Text.set_text(_("What is happening?"));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
wait(2);
settings.fade_to_ambient_light(0.4, 0.4, 0.4, 1);
wait(1);
Text.set_text(_("The forest is getting rotten !!!"));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
wait(2);
settings.fade_to_ambient_light(0.2, 0.2, 0.2, 0.3);
thunder.thunder();
wait(0.5);
thunder.lightning();
wait(0.5);
thunder.thunder();
wait(0.5);
thunder.lightning();
wait(0.2);
thunder.lightning();
Tux.walk(100);
ghost.fade(1, 3);
wait(0.1);
ghost2.fade(1, 3);
wait(3);
  Effect.fade_out(2);
  wait(2);
  Level.finish(true);
}

state_idx <- 0;
states <- { init=0, start=1};
function trigger_state(state) {
  local idx = states[state];
  if(!idx || idx <= state_idx)
    return;
  state_idx = idx;
  switch(state) {
    case "start":
      initialize();
      break;
  }
}
