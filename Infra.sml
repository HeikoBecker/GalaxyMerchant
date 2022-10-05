structure Infra = struct

  exception NOT_IMPLEMENTED;

  fun failure() = OS.Process.terminate OS.Process.failure;

end
