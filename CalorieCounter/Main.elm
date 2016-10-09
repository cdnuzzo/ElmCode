module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App as App


-- model


type alias Model =
    Int


initModel : Model
initModel =
    0



-- update


type Msg
    = AddCalorie
    | RemoveCalorie
    | Clear


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddCalorie ->
            model + 1

        RemoveCalorie ->
           model - 1

        Clear ->
            initModel



-- view


view : Model -> Html Msg
view model =
    div []
        [ h3 []
            [ text ("Total Calories that you just ate: " ++ (toString model)) ]
        , button
            [ type' "button"
            , onClick AddCalorie
            ]
            [ text "Add" ]
        , button
            [ type' "button"
            , onClick RemoveCalorie
            ]
            [ text "Minus" ]
        , button
            [ type' "button"
            , onClick Clear
            ]
            [ text "Clear" ]
        ]


main : Program Never
main =
    App.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }

