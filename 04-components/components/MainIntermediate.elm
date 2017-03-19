module MainIntermediate exposing (..)

import Profile
import MailingAddress
import Html exposing (Html, div)


type alias Model =
    { profile : Profile.Model
    , mailingAddress : MailingAddress.Model
    }


type Msg
    = ProfileMsg Profile.Msg
    | MailingAddressMsg MailingAddress.Msg


initialModel : Model
initialModel =
    Model Profile.initialModel MailingAddress.initialModel


init : ( Model, Cmd Msg )
init =
    ( initialModel, Cmd.none )


profileView : Profile.Model -> Html Msg
profileView profile =
    Html.map ProfileMsg (Profile.view profile)


mailingAddressView : MailingAddress.Model -> Html Msg
mailingAddressView mailingAddress =
    Html.map MailingAddressMsg (MailingAddress.view mailingAddress)


view : Model -> Html Msg
view model =
    div []
        [ profileView model.profile
        , mailingAddressView model.mailingAddress
        ]


main : Html Msg
main =
    view initialModel
