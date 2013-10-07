{shared{
  open Eliom_lib
  open Eliom_content
}}

module Bootstrap_examples_app =
  Eliom_registration.App (
    struct
      let application_name = "bootstrap_examples"
    end)

let main_service =
  Eliom_service.service ~path:[] ~get_params:Eliom_parameter.unit ()

let () =
  Bootstrap_examples_app.register
    ~service:main_service
    (fun () () ->
      Lwt.return
        (Eliom_tools.F.html
           ~title:"bootstrap_examples"
           ~css:[["css";"bootstrap_examples.css"]]
           Html5.F.(body [
             h2 [pcdata "Welcome from Eliom's destillery!"];
           ])))
