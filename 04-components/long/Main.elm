module Main exposing (..)

import Html exposing (Html, br, div, h2, input, label, text)
import Html.Attributes exposing (type_, value)
import Html.Events exposing (onInput)


type alias Model =
    { profileName : String
    , profileEmail : String
    , mailingAddressLine1 : String
    , mailingAddressLine2 : String
    , mailingAddressCity : String
    , mailingAddressState : String
    , mailingAddressCountry : String
    , mailingAddressZip : String
    , accountUsername : String
    , accountPassword : String
    }


type Msg
    = UpdateProfileName String
    | UpdateProfileEmail String
    | UpdateMailingAddressLine1 String
    | UpdateMailingAddressLine2 String
    | UpdateMailingAddressCity String
    | UpdateMailingAddressState String
    | UpdateMailingAddressCountry String
    | UpdateMailingAddressZip String
    | UpdateAccountUsername String
    | UpdateAccountPassword String


init : ( Model, Cmd Msg )
init =
    ( Model "" "" "" "" "" "" "" "" "" "", Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ div []
            [ h2 [] [ text "Profile" ]
            , label [] [ text "Name" ]
            , input
                [ type_ "text"
                , onInput UpdateProfileName
                , value model.profileName
                ]
                []
            , br [] []
            , label [] [ text "Email" ]
            , input
                [ type_ "text"
                , onInput UpdateProfileEmail
                , value model.profileEmail
                ]
                []
            ]
        , div []
            [ h2 [] [ text "Mailing Adddress" ]
            , label [] [ text "Line 1" ]
            , input
                [ type_ "text"
                , onInput UpdateMailingAddressLine1
                , value model.mailingAddressLine1
                ]
                []
            , br [] []
            , label [] [ text "Line 2" ]
            , input
                [ type_ "text"
                , onInput UpdateMailingAddressLine2
                , value model.mailingAddressLine2
                ]
                []
            , br [] []
            , label [] [ text "City" ]
            , input
                [ type_ "text"
                , onInput UpdateMailingAddressCity
                , value model.mailingAddressCity
                ]
                []
            , br [] []
            , label [] [ text "State" ]
            , input
                [ type_ "text"
                , onInput UpdateMailingAddressState
                , value model.mailingAddressState
                ]
                []
            , br [] []
            , label [] [ text "Zip" ]
            , input
                [ type_ "text"
                , onInput UpdateMailingAddressZip
                , value model.mailingAddressZip
                ]
                []
            , br [] []
            , label [] [ text "Country" ]
            , input
                [ type_ "text"
                , onInput UpdateMailingAddressCountry
                , value model.mailingAddressCountry
                ]
                []
            ]
        , div []
            [ h2 [] [ text "Account" ]
            , label [] [ text "Username" ]
            , input
                [ type_ "text"
                , onInput UpdateAccountUsername
                , value model.accountUsername
                ]
                []
            , br [] []
            , label [] [ text "Password" ]
            , input
                [ type_ "password"
                , onInput UpdateAccountPassword
                , value model.accountPassword
                ]
                []
            ]
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateProfileName name ->
            ( { model | profileName = name }, Cmd.none )

        UpdateProfileEmail email ->
            ( { model | profileEmail = email }, Cmd.none )

        UpdateMailingAddressLine1 line1 ->
            ( { model | mailingAddressLine1 = line1 }, Cmd.none )

        UpdateMailingAddressLine2 line2 ->
            ( { model | mailingAddressLine2 = line2 }, Cmd.none )

        UpdateMailingAddressCity city ->
            ( { model | mailingAddressCity = city }, Cmd.none )

        UpdateMailingAddressState state ->
            ( { model | mailingAddressState = state }, Cmd.none )

        UpdateMailingAddressZip zip ->
            ( { model | mailingAddressZip = zip }, Cmd.none )

        UpdateMailingAddressCountry country ->
            ( { model | mailingAddressCountry = country }, Cmd.none )

        UpdateAccountUsername username ->
            ( { model | accountUsername = username }, Cmd.none )

        UpdateAccountPassword password ->
            ( { model | accountPassword = password }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
