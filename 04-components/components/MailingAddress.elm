module MailingAddress exposing (Model, Msg, initialModel, view, update)

import Html exposing (Html, br, div, h2, input, label, text)
import Html.Attributes exposing (type_, value)
import Html.Events exposing (onInput)


type alias Model =
    { line1 : String
    , line2 : String
    , city : String
    , state : String
    , country : String
    , zip : String
    }


type Msg
    = UpdateLine1 String
    | UpdateLine2 String
    | UpdateCity String
    | UpdateState String
    | UpdateCountry String
    | UpdateZip String


initialModel : Model
initialModel =
    Model "" "" "" "" "" ""


view : Model -> Html Msg
view model =
    div []
        [ h2 [] [ text "Mailing Address" ]
        , label [] [ text "Line 1" ]
        , input
            [ type_ "text"
            , onInput UpdateLine1
            , value model.line1
            ]
            []
        , br [] []
        , label [] [ text "Line 2" ]
        , input
            [ type_ "text"
            , onInput UpdateLine2
            , value model.line2
            ]
            []
        , br [] []
        , label [] [ text "City" ]
        , input
            [ type_ "text"
            , onInput UpdateCity
            , value model.city
            ]
            []
        , br [] []
        , label [] [ text "State" ]
        , input
            [ type_ "text"
            , onInput UpdateState
            , value model.state
            ]
            []
        , br [] []
        , label [] [ text "Zip" ]
        , input
            [ type_ "text"
            , onInput UpdateZip
            , value model.zip
            ]
            []
        , br [] []
        , label [] [ text "Country" ]
        , input
            [ type_ "text"
            , onInput UpdateCountry
            , value model.country
            ]
            []
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateLine1 line1 ->
            ( { model | line1 = line1 }, Cmd.none )

        UpdateLine2 line2 ->
            ( { model | line2 = line2 }, Cmd.none )

        UpdateCity city ->
            ( { model | city = city }, Cmd.none )

        UpdateState state ->
            ( { model | state = state }, Cmd.none )

        UpdateZip zip ->
            ( { model | zip = zip }, Cmd.none )

        UpdateCountry country ->
            ( { model | country = country }, Cmd.none )
