function initialize()
{
  Tux.deactivate();
  Effect.sixteen_to_nine(0);
  Effect.fade_in(1.5);
  play_music("music/castle/darkforestkeep.music");
 wait(3.2);
  Tux.walk(50);
  wait(3.5);
  Text.set_text(_("Tux reached the bottom."));
  Text.fade_in(1);
  wait(2.2);
  wait(0.3);
  Text.fade_out(1);
  wait(1);
  Tux.walk(100);
  Text.set_text(_("He found a hidden fortress !!!"));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
  wait(2);
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
