function initialize()
{
  Tux.deactivate();
  Effect.sixteen_to_nine(0);
  Effect.fade_in(1.5);
  Tux.walk(150);
  wait(3.5);
  Text.set_text(_("Tux reached the end of the castle."));
  Text.fade_in(1);
  wait(2.2);
  Tux.walk(100);
  wait(0.3);
  Tux.walk(75);
  wait(0.1);
  Tux.walk(0);
  wait(1.4);
  Text.fade_out(1);
  wait(2);
 play_sound("sounds/yeti_roar.wav");
  wait(1);
  Tux.walk(100);
  wait(0.35);
  Tux.walk(0);
  wait(1);
  Text.set_text(_("He heard Penny calling for help. He also felt a yeti roar."));
  Text.fade_in(1);
  wait(4);
  Text.fade_out(1);
  wait(2);
  wait(1);
  YETI.set_pos(96, 426);
  YETI.set_action("stand-right");
  YETI.set_visible(true);
  play_sound("sounds/yeti_roar.wav");
  wait(0.8);
  Tux.set_dir(false);
  Camera.scroll_to(40, 250, 0.9);
  play_music("music/antarctic/voc-boss.music");
  wait(0.3);
  YETI.set_action("stomp-right");
  play_sound("sounds/yeti_gna.wav");
  YETI.set_velocity(0, -300);
  wait(0.5);
  YETI.set_action("stand-right");
  wait(0.3);
  YETI.set_action("stomp-right");
  play_sound("sounds/yeti_gna.wav");
  YETI.set_velocity(0, -300);
  wait(0.4);
  YETI.set_action("stand-right");
  wait(0.3);
  YETI.set_action("walking-right");
  YETI.set_velocity(225, 0);
  wait(0.1);
  Camera.scroll_to(490, 250, 0.2);
  Tux.do_jump(-250);
  wait(0.5);
  Tux.set_dir(true);
  Tux.walk(300);
  wait(1.3);
  Effect.fade_out(1);
  wait(0.5);
  play_sound("sounds/door.wav");
  DOOR.set_action("opening");
  wait(1);
  Level.spawn("outcastle", "door");
}

function outdoor()
{
  Effect.sixteen_to_nine(0);
  Camera.scroll_to(40, 250, 0.9);
  YETI.set_action("stand-right");
  Tux.deactivate();
  DOOR.set_action("open");
  Effect.fade_in(1);
  wait(0.5);
  DOOR.set_action("closing");
  Tux.walk(250);
  wait(0.6);
  DOOR.set_action("closed");
  wait(1.2);
  Tux.do_jump(-500);
  wait(1.3);
  DOOR.set_action("opening");
  play_sound("sounds/door.wav");
  wait(0.6);
  DOOR.set_action("open");
  YETI.set_pos(192, 288);
  YETI.set_visible(true);
  wait(0.5);
  YETI.set_action("stomp-right");
  play_sound("sounds/yeti_gna.wav");
  YETI.set_velocity(0, -300);
  wait(0.5);
  Tux.walk(0);
  YETI.set_action("stand-right");
  wait(0.5);
  YETI.set_action("walking-right");
  YETI.set_velocity(250, 0);
  wait(1);
  YETI.set_action("jump-right");
  play_sound("sounds/yeti_roar.wav");
  YETI.set_velocity(300, -450);
  wait(2);
  Effect.fade_out(2);
  wait(2);
  Level.finish(true);
}

state_idx <- 0;
states <- { init=0, start=1, outdoor=2};
function trigger_state(state) {
  local idx = states[state];
  if(!idx || idx <= state_idx)
    return;
  state_idx = idx;
  switch(state) {
    case "start":
      initialize();
      break;
	case "outdoor":
      outdoor();
      break;
  }
}
