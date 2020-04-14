function initialize()
{
  Tux.deactivate();
  Effect.sixteen_to_nine(0);
  play_music("music/forest/treeboss.music");
  wait(3.2);
  Tux.walk(120);
  wait(3.5);
  Text.set_text(_("...Tux found a ghosttree..."));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
  wait(1.5);
  Tux.walk(0);
  Camera.scroll_to(1100, 190, 7);
  wait(1);
  Text.set_text(_("Ghosttree- Tux if you want your friend Penny? I dare you to pass through my roots! Ah! Ah! Ah!"));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
  Text.set_text(_("Ghosttree- To come to me, you'll have to go through a big tower."));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
  wait(1);
  Text.set_text(_("Ghosttree- To open the gate to that tower, you will need special keys."));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
  wait(1);
  k5.start_moving();
  Text.set_text(_("Ghosttree- Air key"));
  Text.fade_in(1);
  wait(3);
  Text.fade_out(1);
  wait(1);
  k4.start_moving();
  Text.set_text(_("Ghosttree- Earth key"));
  Text.fade_in(1);
  wait(3);
  Text.fade_out(1);
  wait(1);
  k1.start_moving();
  Text.set_text(_("Ghosttree- Wood key"));
  Text.fade_in(1);
  wait(3);
  Text.fade_out(1);
  wait(1);
  k3.start_moving();
  Text.set_text(_("Ghosttree- Fire key"));
  Text.fade_in(1);
  wait(3);
  Text.fade_out(1);
  wait(1);
  k2.start_moving();
  Text.set_text(_("Ghosttree- Water key"));
  Text.fade_in(1);
  wait(3);
  Text.fade_out(1);
  wait(1);
  Effect.fade_out(2);
  wait(2);
  ghosttree.set_visible(false);
  penny.set_visible(false);
  root.set_visible(false);
  wait(1);
  Tux.walk(95);
  Effect.fade_in(2);
  play_sound("speech/tux_upset.ogg"); // 11 seconds
  wait(2.4);
  Text.set_text(_("Tux - Oh no, Penny was kidnapped by Ghosttree, I have to go save her !!!"));
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
