open Eliom_content
open Eliom_content.Html5.D
open Lwt

let title = "Bootstrap Binding in Eliom"
let page_title page_name = title ^ " - " ^ page_name

let main_page () =
  let content =
    div [h2 [pcdata "Welcome from Eliom's destillery!"]]
  in
  Document.create_page_v232 (page_title "Main") content

let heading_page () =
  let content =
    div [
        h1 [pcdata "h1. Heading 1"];
        h2 [pcdata "h2. Heading 2"];
        h3 [pcdata "h3. Heading 3"];
        h4 [pcdata "h4. Heading 4"];
        h5 [pcdata "h5. Heading 5"];
        h6 [pcdata "h6. Heading 6"]
      ]
  in
  Document.create_page_v232 (page_title "Headings") content
