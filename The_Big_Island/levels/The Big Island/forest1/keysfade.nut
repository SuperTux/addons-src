if(! ("keysfade" in state)){
	state.keysfade <- false;
  print("[DEBUG] keysfade state initialized\n");
}

function go_keysfade(key){
  fade_time <- 0.35;
  chaves1.fade(key ? 1 : 0, fade_time);
  chaves2.fade(key ? 0 : 1, fade_time);
  path.fade(key ? 1 : 0, fade_time);
  state.keysfade <- key;
}

go_keysfade(state.keysfade);
