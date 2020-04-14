function initialize()
{
  Tux.deactivate();
  Effect.sixteen_to_nine(0);
  wait(3.2);
  Tux.walk(70);
  wait(2);
  Text.set_text(_("He found the Picnic Place."));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
Text.set_text(_("But Penny was not there."));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
Text.set_text(_("So he decided to go look for her inside the nearby cave that was on the spot."));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
  wait(2);
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
