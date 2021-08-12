(* test content *)
let () =
  let id = "7bdf38d4468c114206c9b6ebd9cf1176e085d346" in
  match Swhids.Download.content ~hash_type:"sha1_git" id with
  | Ok result ->
    assert (
      result
      = Leaf
          "https://archive.softwareheritage.org/api/1/content/sha1_git:7bdf38d4468c114206c9b6ebd9cf1176e085d346/raw/" )
  | Error e ->
    Format.eprintf "Test for id `%s` failed with error `%s`@." id e;
    assert false
