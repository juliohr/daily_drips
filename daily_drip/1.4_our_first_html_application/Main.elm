module Main exposing (..)

import Html exposing (..)

import Html.Events exposing (onClick)

type alias Model =
  { count : Int, inc_count : Int, dec_count : Int }

type Msg
  = Increment
  | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      { model 
        | count = model.count + 1
        , inc_count = model.inc_count + 1
      }
    Decrement ->
      { model 
        | count = model.count - 1
        , dec_count = model.dec_count + 1
      }

view : Model -> Html Msg
view model =
  div []
      [ button [ onClick Decrement ] [text "-" ] 
      , div [] [ text (toString model.count) ]
      , button [ onClick Increment] [ text "+" ]
      , h3 [] [ text (toString model.inc_count)]
      , h3 [] [ text (toString model.dec_count)]
      ]

main =
  Html.beginnerProgram
    { model = { count = 0, inc_count = 0, dec_count = 0 }
    , view = view
    , update = update
    }