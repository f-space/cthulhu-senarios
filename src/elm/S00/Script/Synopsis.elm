module S00.Script.Synopsis exposing (view)

import Browser exposing (Document)
import Html as E exposing (Html, text)
import Html.Attributes as A
import S00.Script.Utility exposing (..)


view : Document msg
view =
    Document "梗概"
        [ article "梗概"
            [ p """
                ハルクース研究所では極秘の地下施設にて超自然の生物に関する研究をしていた。
                ある日、成長段階のクトーニアンが捕獲され、そこに運び込まれる。
                しばらくの間、研究は順調に進んだ。
            """
            , p """
                クトーニアンはその大きさや危険性から、搬入口から移動ができずにいたが、
                資材搬入の障害となるため地下二階のプール施設への移動計画が立てられる。
                計画は一時的に比較的小型のケージに弱らせたクトーニアンを移し、それを移送するものだったが、
                事前にクトーニアンのテレパシーにより精神攻撃を受けていた研究員の不手際により失敗する。
                これにより、支配を逃れたクトーニアンはすべての研究員を殺害し、地下施設を根城とする。
            """
            , p """
                研究員が秘密施設内で亡くなったことにより、世間は集団失踪事件として騒ぎ立て、研究所は施設の閉鎖を決定する。
                閉鎖された研究所に来た探索者たちは、地下施設へと入り込み、クトーニアンと遭遇することになる。
                探索者はクトーニアンに挑んだ末に大地震に巻き込まれ、研究所ごと倒壊する中、幸運にも救助隊に助けられる。
            """
            , p """
                探索者は研究所で起きた事件のことを誰にも話すことができないままに晩年まで過ごす。
                しかし、秘密を抱えて生涯を終える恐怖に耐えかね、アーカムプレス社と連絡をとる。
                アーカムプレス社の記者は探索者の話を聞くべく、探索者の自宅へと向かう。
            """
            , p """
                シナリオはこのとき探索者が記者に語った内容としてプレイされる。
            """
            ]
        ]