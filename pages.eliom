open Eliom_content
open Eliom_content.Html5.D
open Lwt

let title = "Bootstrap Binding in Eliom"
let page_title page_name = title ^ " - " ^ page_name

let main_page () =
  let content =
    div [
        div ~a:[Bootstrap.row] [
              div ~a:[Bootstrap.span 12] [
                    h2 [pcdata "Welcome from Eliom Bootstrap Examples!"]]];
        div ~a:[Bootstrap.row] [
              div ~a:[Bootstrap.span 11; Bootstrap.offset 1] [
                    h4 [pcdata "Examples"];
                    ul [
                        li [a Services.heading_service [pcdata "Headings"] ()];
                        li [a Services.grid_service [pcdata "Grid System"] ()]
                      ]
            ]]

      ]
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

let grid_page () =
  let content =
    div ~a:[Bootstrap.row] [
          div ~a:[Bootstrap.span 12] [
                div ~a:[Bootstrap.row; Bootstrap.Example.show_grid] [
                      div ~a:[Bootstrap.span 1] [pcdata "1"];
                      div ~a:[Bootstrap.span 1] [pcdata "1"];
                      div ~a:[Bootstrap.span 1] [pcdata "1"];
                      div ~a:[Bootstrap.span 1] [pcdata "1"];
                      div ~a:[Bootstrap.span 1] [pcdata "1"];
                      div ~a:[Bootstrap.span 1] [pcdata "1"];
                      div ~a:[Bootstrap.span 1] [pcdata "1"];
                      div ~a:[Bootstrap.span 1] [pcdata "1"];
                      div ~a:[Bootstrap.span 1] [pcdata "1"]
                    ];
                div ~a:[Bootstrap.row; Bootstrap.Example.show_grid] [
                      div ~a:[Bootstrap.span 2] [pcdata "2"];
                      div ~a:[Bootstrap.span 3] [pcdata "3"];
                      div ~a:[Bootstrap.span 4] [pcdata "4"]
                    ];
                div ~a:[Bootstrap.row; Bootstrap.Example.show_grid] [
                          div ~a:[Bootstrap.span 4] [pcdata "4"];
                          div ~a:[Bootstrap.span 5] [pcdata "5"]
                    ];
                div ~a:[Bootstrap.row] [
                      div ~a:[Bootstrap.span 9] [pcdata "9"];
                    ]
              ]
        ] in
  Document.create_page_v232 (page_title "Grid") content
