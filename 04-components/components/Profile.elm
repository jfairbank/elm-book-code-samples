module Profile exposing (Model, Msg, initialModel, view, update)

import Html exposing (Html, br, div, h2, input, label, text)
import Html.Attributes exposing (type_, value)
import Html.Events exposing (onInput)


type alias Model =
    { name : String
    , email : String
    }


type Msg
    = UpdateName String
    | UpdateEmail String


initialModel : Model
initialModel =
    Model "" ""


view : Model -> Html Msg
view model =
    div []
        [ h2 [] [ text "Profile" ]
        , label [] [ text "Name" ]
        , input
            [ type_ "text"
            , onInput UpdateName
            , value model.name
            ]
            []
        , br [] []
        , label [] [ text "Email" ]
        , input
            [ type_ "text"
            , onInput UpdateEmail
            , value model.email
            ]
            []
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateName name ->
            ( { model | name = name }, Cmd.none )

        UpdateEmail email ->
            ( { model | email = email }, Cmd.none )
