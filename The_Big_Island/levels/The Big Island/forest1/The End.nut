function initialize()
{
  Tux.set_visible(false);
  Tux.deactivate();
  Effect.sixteen_to_nine(0);
  wait(3.2);
  Camera.scroll_to(2391, 960, 15);
  wait(2);
  Text.set_text(_("After a long journey to save Penny..."));
  Text.fade_in(1);
  wait(3);
  Text.fade_out(1);
  wait(3);
  Text.set_text(_("Tux and Penny returned to their home."));
  Text.fade_in(1);
  wait(3);
  wait(0.5);
  Text.fade_out(1);
  wait(7);
  Effect.fade_out(2);
  wait(2);
  Level.spawn("house", "main");
}
function Part2()
{
  Tux.deactivate();
  Effect.sixteen_to_nine(0);
  wait(1);
  Text.set_text(_("And they lived happily ever after."));
  Text.fade_in(1);
  wait(3);
  Text.fade_out(1); 
  wait(7);
  Tux.trigger_sequence("fireworks");
  wait(10);
  Effect.fade_out(2);
}

state_idx <- 0;
states <- { init=0, start=1, Part2=2};
function trigger_state(state) {
  local idx = states[state];
  if(!idx || idx <= state_idx)
    return;
  state_idx = idx;
  switch(state) {
    case "start":
      initialize();
      break;
    case "Part2":
      Part2();
      break;
  }
}
