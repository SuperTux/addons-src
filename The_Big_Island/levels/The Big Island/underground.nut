if(! ("underground" in state)){
	state.underground <- false;
  print("[DEBUG] Underground state initialized\n");
}

function go_underground(under){
  fade_time <- 0.35;
  ice2.fade(under ? 1 : 0, fade_time);
  ice.fade(under ? 1 : 0, fade_time);
  underground1.fade(under ? 1 : 0, fade_time);
  foreground.fade(under ? 1 : 0, fade_time);
  undergroundcover.fade(under ? 0 : 1, fade_time);
  undergroundfore.fade(under ? 0 : 1, fade_time);
  undergrounddecoration.fade(under ? 0 : 1, fade_time);
  dark.fade(under ? 0 : 1, fade_time);
  state.underground <- under;
}

go_underground(state.underground);
