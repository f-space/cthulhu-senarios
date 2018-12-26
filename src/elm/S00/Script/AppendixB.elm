module S00.Script.AppendixB exposing (view)

import Browser exposing (Document)
import Html as E exposing (Html, text)
import Html.Attributes as A
import S00.Script.Utility exposing (..)


view : Document msg
view =
    Document "付録Ｂ"
        [ article "付録Ｂ 設定集" <| markdown """
## 事件日の真相

クトーニアン移送の実施日、
本来クトーニアンは十分に無力化された状態で運ばれる計画であったが、
クトーニアンを傷つけることを躊躇ったAmeliaは不十分な無力化案を提示、実行する。

移送途中、スロープを降り切ったあたりで無力化されたふりをしていたクトーニアンは暴れだし、ケージを破壊。
解放されたクトーニアンに対してAmeliaは自ら接近して吸血される。
その様子を見ていたBenjaminは発狂して逃げ惑うもあえなく捕まることとなる。

一方、ケージの組立を終えて様子を見に来たCarloとEmmaも脱走したクトーニアンと遭遇。
恐怖でうまく動けなくなってしまったEmmaをCarloがかばうが、Carloごと壁に叩きつけられる。

程なくして、ひとりプールに残っていたDavidのもとにもクトーニアンが襲来。
Davidは隠し持っていた拳銃で抵抗するも顔ごと潰されてしまう。

警備室でこれらの様子を見ていたFredは、
階段のシャッターを下ろして行動範囲を制限した後にクトーニアンの退治へと向かう。
いくらか善戦するものの弾切れにより追いつめられる。

Garyは一度は警備室に残ったものの、応援のために駆けつけることを決意。
しかし、運悪くスロープを降りた直後にクトーニアンと鉢合わせ、不意打ちによって致命傷を負う。
スロープを上り、退却を計るも途中で息絶えてしまう。

## エレベーター故障の理由

探索者たちはエレベーターの落下により、地下施設からの脱出が不可能となる。
これは研究員たちが襲われた際、
クトーニアンがエレベーター付近で暴れたことでエレベーターの一部が破損したためである。

最近のエレベーターは滅多なことでは落ちないらしいが、
秘密の地下施設に通ずるものであったため真っ当な会社が作っていなかったのかもしれない。

## クトーニアンが逃げ出さない理由

クトーニアンが研究員殺害後に研究所から逃げ出さなかった理由としては次の二つを考えた。

* 守るべき卵が見つかっていなかったため
* 地盤が多量の水分を含んでいたため

卵はセクション２にてAmeliaの部屋から初めて見つかることになる。
これだけだと卵奪取後は真っ先に逃げてもよさそうだが、何かしらの理由でクトーニアンはひきこもる。

そこで、舞台がカリフォルニア州で場所によっては海に面していること、あるいは長雨が続いていることから、
地面の水分量が多いということにした。
実際その程度で致命的になるほど水分量が増えるのかはよく知らないが、
ためらう程度にはなるかもしれない。

結局のところ、未知の生物だから何を考えているのかよくわからないというのが一番妥当な言い訳かもしれない。

## クトーニアンの攻撃性

セクション２では仮に探索者がクトーニアンに立ち向かったとしても、探索者を殺すまではしない。
人間並みかそれ以上の知能を持っているのであれば、自分にとってよほどの脅威でなければ無闇に殺生はしないと思われる。
またセクション２では単に卵を持ち帰ることしか考えていなかっただけかもしれない。

逆に言えば、クトーニアンに殲滅させられた研究員たちはよほど脅威とみなされるような行為をしていたと思われる。
吸血されたものに関しては、単に養分が必要だっただけである可能性もある。

## テレパシーの効果と解釈

本シナリオのクトーニアンは成体ではないためテレパシーの能力が完全ではないと思われる。
そこで、これをクトーニアンに対して激しく動揺したり恐怖した人物にだけかけられる能力と限定する。

そのため、虫のような外観に恐怖する虫嫌いのAmeliaのみがテレパシーの影響を受けていたということにした。
研究が進むにつれ、Benjaminも対象となりえたかもしれない。

クトーニアンのテレパシー能力は対象を心理的に特定の場所に縛り付ける能力とされているが、
ここでは少し拡張して何かに惹きつけるような能力とした。
これは「特定の場所」を何か「対象の周り」とすれば、心理的に対象から注意を逸らせなくする能力と解釈できるためである。
無意識に対象に注目してしまうという状況は好奇心や愛情と誤認しかねないし、
負の感情で対象に注目し続けるのは精神的に疲弊するため防衛機能としてそれを正の感情に変換しようとするかもしれない。
理由はなんであれ、シナリオではAmeliaはこのテレパシー能力によりクトーニアンに魅了されることになる。

## 局地的大地震

シナリオの最期は局地的大地震によって締めくくられるが、
これはシナリオ内にでてくるクトーニアンが起こしたものではなく、
その仲間が研究所直下の地下から起こしたものである。

もしも探索者がクトーニアンを撃破したのであれば、恐らく報復のためだと思われる。
逆に探索者が全滅したのであれば、クトーニアン脱出後に研究所への仕返しとして起こしたのだろう。

## 記憶の矛盾

記憶の矛盾について特に明確な理由付けはしていない。
恐怖で頭がおかしくなったのかもしれないし、
何か未知の生物や神格によって記憶を植え付けられたのかもしれない。
"""
        ]
