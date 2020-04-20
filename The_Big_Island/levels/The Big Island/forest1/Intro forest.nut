function initialize()
{
  Tux.deactivate();
  Effect.sixteen_to_nine(0);
  wait(3.2);
  Tux.walk(50);
  wait(2);
  Text.set_text(_("After a long journey, Tux arrived at his second home in the forest."));
  Text.fade_in(1);
  wait(3);
  wait(0.5);
  Text.fade_out(1);
  wait(1);
  Tux.walk(70);
  Text.set_text(_("He found a letter from Penny."));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
Text.set_text(_("Inviting you for a surprise picnic in the middle of the forest."));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
Text.set_text(_("So Tux decided to go to her ..."));
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
