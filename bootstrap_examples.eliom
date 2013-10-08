{shared{
  open Eliom_lib
  open Eliom_content
}}

module Bootstrap_examples_app =
  Eliom_registration.App (
    struct
      let application_name = "bootstrap_examples"
    end)

let () =
  Bootstrap_examples_app.register
    ~service:Services.main_service
    (fun () () ->
     Pages.main_page ()
    )

let () =
  Bootstrap_examples_app.register
    ~service:Services.heading_service
    (fun () () ->
    Pages.heading_page ())
