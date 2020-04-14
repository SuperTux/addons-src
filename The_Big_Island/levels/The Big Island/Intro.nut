function initialize()
{
  Tux.add_bonus("grow");
  penny.set_action("stand-left");
  yeti.set_visible(false);
  LOGO.set_visible(false);
  LOGO.enable_gravity(false);
  SIGN.set_visible(false);
}

function logo_in()
{
  local x = LOGO.get_pos_x();
  local y = LOGO.get_pos_y();
  local time = 1.9;
  LOGO.set_pos(x,-120);
  LOGO.set_visible(true);
  LOGO.set_velocity(0,(120+y)/time);
  LOGO.enable_gravity(false);
  wait(time);
  LOGO.set_velocity(0,0);
  wait(3);
  LOGO.set_visible(false);
}

function intro_text()
{
  Text.set_text(_("I'm late for dinner."));
  Text.fade_in(1);
  wait(5);
  Text.fade_out(1);
 Text.set_text(_("Penny must be upset."));
  Text.fade_in(1);
  wait(5);
  Text.fade_out(1);
}

function night()
{
Tux.deactivate();
Camera.set_mode("manual");
Effect.sixteen_to_nine(0);
Camera.scroll_to( 5000, 945, 15);
Effect.fade_out(2);
wait(3);
Effect.fade_in(2);
settings.set_ambient_light(0.08, 0.08, 0.08);
wait(6);
Text.set_text(_("Tux never arrives again ?!"));
Text.fade_in(1);
wait(4);
Text.fade_out(1);
play_sound("sounds/yeti_gna.wav");
wait(3);
Text.set_text(_("What is that noise ?!"));
Text.fade_in(1);
wait(4);
play_sound("sounds/yeti_roar.wav");
wait(2);
Text.fade_out(1);
yeti.set_visible(true);
Effect.fade_out(2);
wait(3);
Effect.fade_in(2);
yeti.set_visible(false);
yeti.set_solid(false);
penny.set_visible(false);
penny.set_solid(false);
  Tux.walk(3000);
 play_sound("speech/tux_upset.ogg");
wait(8);
 Effect.fade_out(2);
  wait(2.1);
  Level.finish(true);
}



state_idx <- 0;
states <- { init=0, start=1, logo_in=2, intro_text=3, night=4};
function trigger_state(state) {
  local idx = states[state];
  if(!idx || idx <= state_idx)
    return;
  state_idx = idx;
  switch(state) {
    case "start":
      initialize();
      break;
    case "logo_in":
      logo_in();
      break;
    case "intro_text":
      intro_text();
      break;
   case "night":
      night();
      break;
  }
}