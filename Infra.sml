structure Infra = struct

  exception NOT_IMPLEMENTED;

  fun failure s = (print (s^"\n"); OS.Process.terminate OS.Process.failure)

end
