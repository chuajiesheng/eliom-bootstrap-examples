let main_service =
  Eliom_service.service ~path:[] ~get_params:Eliom_parameter.unit ()

let heading_service =
  Eliom_service.service ~path:["heading"] ~get_params:Eliom_parameter.unit ()

let grid_service =
  Eliom_service.service ~path:["grid"] ~get_params:Eliom_parameter.unit ()
