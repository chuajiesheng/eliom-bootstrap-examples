open Eliom_content.Html5.D

(* constant *)
let brand = "eliom-bootstrap-examples"

let static s = make_uri ~service:(Eliom_service.static_dir ()) s

let inverse_navbar_v2 =
  div ~a:[Bootstrap.navbar; Bootstrap.navbar_inverse; Bootstrap.navbar_static_top] [
        div ~a:[Bootstrap.navbar_inner] [
              a
                ~a:[Bootstrap.brand]
                ~service:Services.main_service
                ~fragment:"" [pcdata brand] ();
              p ~a:[Bootstrap.navbar_text; Bootstrap.pull_right]
                [pcdata "Welcome"]
      ]]

let navbar_v3 =
  div ~a:[Bootstrap.navbar] [
        a
          ~a:[Bootstrap.navbar_brand]
          ~service:Eliom_service.void_coservice'
          ~fragment:"" [pcdata brand] ();
      ]

let navbar_logged_in_v3 user =
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
let create_page_v232 mytitle mycontent =
  Lwt.return
    (html
       (head (title (pcdata mytitle))
             [Uri.JQuery.Min.v2; Uri.Css.Min.v232; Uri.Docs.v232; Uri.Js.Min.v232])
       (body (inverse_navbar_v2::[mycontent])))


let create_page_v3 mytitle mycontent =
  Lwt.return
    (html
       (head (title (pcdata mytitle))
             [Uri.JQuery.Min.v2; Uri.Css.Min.v3; Uri.Theme.Min.v3; Uri.Js.Min.v3])
       (body (navbar_v3::[mycontent])))
