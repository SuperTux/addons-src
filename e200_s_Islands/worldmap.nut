
fade_time <- 0.35;

// ============================================================================
//   ROAD FORKS
// ============================================================================

if(! ("path_a" in state)){
	state.path_a <- false;
  print("[DEBUG] 'The Path Splits' road fork (cave) initialized\n");
}

if(! ("path_b" in state)){
	state.path_b <- false;
  print("[DEBUG] 'The Path Splits' road fork (crystal) initialized\n");
}

path_a.set_solid(state.path_a);
path_b.set_solid(state.path_b);



// ============================================================================
//   SECRET AREAS
// ============================================================================

if(! ("secret" in state)){
	state.secret <- false;
  print("[DEBUG] 'Freezing River' secret road initialized\n");
}

function toggle_secret_road(tilemap, enabled){
  tilemap.fade(enabled ? 1 : 0, fade_time);
  tilemap.set_solid(enabled);
}

toggle_secret_road(secret, state.secret);
