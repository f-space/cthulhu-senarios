module S00.Introduction exposing (view)

import Browser exposing (Document)
import Html as E exposing (Html, text)
import Html.Attributes as A


view : Document msg
view =
    Document "イントロダクション"
        [ article
            [ prologue "あらすじ"
                [ block
                    [ "１月、カリフォルニア州。"
                    , "長雨の続く陰鬱な日々に一件のニュースが舞い込んだ。"
                    ]
                , block
                    [ "『ハルクース研究所、集団行方不明か』" ]
                , block
                    [ "今月十日より行方不明者が後を絶たない。"
                    , "三日以上消息不明の者が現在判明しているだけで六人、"
                    , "そのすべてがハルクース研究所に所属する職員であるという。"
                    , "警察は職員らが集団行動中に何らかの事故に巻き込まれたとみて、"
                    , "行方不明者の直近の行動の調査および周辺の捜索を開始するとともに、"
                    , "同研究所職員の安否確認を急いでいる。"
                    , "渦中のハルクース研究所は混乱の拡大を防ぐため、"
                    , "業務の停止と敷地の閉鎖を決定した。"
                    ]
                ]
            , note "設定"
                [ "時代は現代。"
                , "探索者たちはハルクース研究所へと立ち入り、その内部を探索する。"
                , """
                    探索者たちの立場はなんであってもかまわない。
                    許可を得て研究所内部を調べる捜査員でもいいし、
                    人がいないのをいいことに金目のものを盗む火事場泥棒のような者でもいい。
                    ただし、全ての探索者は共通の目的を持ち、行動をともにしていることが望ましい。
                """
                , """
                    持ち物に特に制限はない。
                    探索者の背景に沿った範囲で自由に持ち込むこと。
                    ただし、持ち物によってはシナリオをひどく単純化させ、つまらないものにする可能性がある。
                    難解さよりも雰囲気を重視したシナリオのため、
                    クリア目的の便利な道具よりも、探索者のキャラクター性を引き立たせる目的の小道具をおすすめする。
                    もちろん、何も持っていなくてもかまわない。
                """
                ]
            ]
        ]


article : List (Html msg) -> Html msg
article =
    E.article [ A.id "contents", A.class "introduction" ]


section : String -> String -> List (Html msg) -> Html msg
section class heading children =
    E.section [ A.class class ] <|
        E.h1 [] [ text heading ]
            :: children


prologue : String -> List (Html msg) -> Html msg
prologue heading children =
    section "story" heading [ E.div [ A.class "content" ] children ]


block : List String -> Html msg
block =
    List.map text
        >> List.intersperse (E.br [] [])
        >> E.p []


note : String -> List String -> Html msg
note heading =
    List.map (\s -> E.p [] [ text s ])
        >> section "settings" heading