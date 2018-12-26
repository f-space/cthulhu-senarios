module S00.Script.Section1 exposing (view)

import Browser exposing (Document)
import Html as E exposing (Html, text)
import Html.Attributes as A
import S00.Script.Utility exposing (..)


view : Document msg
view =
    Document "研究所へ"
        [ article "研究所へ" <| markdown """
## 問題フェイズ

[地下一階](../../map/b1f)のエレベーター前の部屋、鈍色の扉を正面にした状態からスタート。

このセクションの問題は認証装置によりロックされた扉である。
探索フェイズで職員証と認証コードのヒントを手に入れて、
認証装置を突破することが目的となる。

初期状態では正面に鈍色の扉があることだけ伝える。
辺りを見回したり、扉に近づいたりしたときに初めて扉脇の認証装置について伝える。

その状態にある経緯を問われた場合には、回想に移行できることを伝える。
また、辺りを探索してから回想に移行することを促してもよい。
認証装置の存在に気付かずに探索フェイズへと移行すると、
回想のやり直しが発生する可能性が高くなる。

* 初期位置から鈍色の扉までは3m程度。
* 明かりはついているものとする。
* エレベーターは動かない。
* 時刻は探索フェイズの開始時刻の二時間後。

## 探索フェイズ

[一階](../../map/1f)の入り口、扉を背後にした状態からスタート。

探索者は建物内を自由に探索できるが、建物外へは移動しないように誘導する。
探索者が建物外へと移動してしまい探索の継続が困難な場合には、回想を終了して記憶の矛盾として処理する。

地下一階に全員が降り立つか、
地下一階に降り立った誰かが正しい手順で鈍色の扉を開けようと試行した時点で終了。
ただし後者の場合には、対処フェイズ時には全員が地下一階にいることになるため記憶の矛盾を処理する。

Ameliaの職員証と電卓のヒントを得た状態で全員がエレベーターに乗り込んで地下に降りるのが理想だが、
うまく進行しないようであれば、次の代替案を用いてもよい。

* エレベーターから部品の破損音等を鳴らして注目させる。
* 探索者全員が揃わなくてもエレベーターを落下させてしまう。
* 対処フェイズ移行後に再度探索フェイズへと戻り記憶を上書きする。
* 幸運ロールや適当な技能ロールでコードを入力させる。

設定上建物の一階は部屋や物が多いが、
ほとんどがシナリオ上無意味なためあまり探索に時間を掛けさせないように誘導する。

* 明かりの有無は探索者の設定に従う。
* 時刻は探索者の設定に従う。

## 対処フェイズ

探索者が認証装置に職員証をかざして、コードを正しく入力、扉を空けることが出来れば終了。

このセクションはチュートリアルであるため、プレイヤーが手詰まりを感じているようなら積極的にヒントを与える。
探索フェイズで迷っているようであれば、無理やり対処フェイズに移行させ、
場所を絞って再度探索フェイズへと移行させる。

例えば、探索フェイズで探索者が職員証を手にしなかった場合には、

1. 探索者全員がエレベーターに乗った時点で強制落下して対処フェイズへ。
1. 認証装置を調べさせて、「そういえば研究室に…」という流れで再度探索フェイズへ。
1. 職員証を手に入れたところで回想終了で対処フェイズへ。

といった手順を踏んで職員証を取得させることができる。

もちろん、もっと強引な手を使っても構わない。
回想であることと記憶矛盾のシステムを使えば、大抵の状況には対応できる。
"""
        ]
