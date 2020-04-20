if(! ("underg" in state)){
	state.underg <- false;
  print("[DEBUG] Underg state initialized\n");
}

function go_underg(under){
  fade_time <- 0.15;
  ice2.fade(under ? 1 : 0, fade_time);
  ice.fade(under ? 1 : 0, fade_time);
  underground1.fade(under ? 1 : 0, fade_time);
  foreground.fade(under ? 1 : 0, fade_time);
  undergroundcover.fade(under ? 0 : 1, fade_time);
  undergroundfore.fade(under ? 0 : 1, fade_time);
  undergrounddecoration.fade(under ? 0 : 1, fade_time);
  dark.fade(under ? 0 : 1, fade_time);
  state.underg <- under;
}

go_underg(state.underg);
