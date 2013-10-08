open Eliom_content.Html5.D

(* constant *)
let brand = "eliom-bootstrap-examples"

let static s = make_uri ~service:(Eliom_service.static_dir ()) s

let google_js = js_script
  (uri_of_string (function () ->
   "https://apis.google.com/js/client.js"))
  ()

let navbar =
  div ~a:[Bootstrap.navbar] [
    a
      ~a:[Bootstrap.navbar_brand]
      ~service:Eliom_service.void_coservice'
      ~fragment:"" [pcdata brand] ();
  ]

let navbar_logged_in user =
  div ~a:[Bootstrap.navbar] [
    a ~a:[Bootstrap.navbar_brand]
      ~service:Eliom_service.void_coservice'
      ~fragment:"" [pcdata brand] ();
    p ~a:[Bootstrap.navbar_text; Bootstrap.pull_right]
      [pcdata ("Signed in as " ^ user)]
  ]

(*
  -important-
  the last element that is to be append to the list
  need to be in [] while the middle section element
  must be in ()

  example: ()::()::()::[]
  wrong example: ()::[]::()::()

  the last element must be a list that why the []
*)
let create_page mytitle mycontent =
  Lwt.return
    (html
       (head (title (pcdata mytitle))
             [Uri.JQuery.Min.v2; Uri.Css.Min.v3; Uri.Theme.Min.v3; Uri.Js.Min.v3;
              google_js])
       (body ((navbar)::mycontent)))