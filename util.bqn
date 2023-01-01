#! /usr/bin/env bqn

SplitTSV ← >(@+9)⊸=⊸(×∘↕∘≠⊸(↓¨)+`⊸⊔)¨
JoinTSV ← (<1↓∾)˘ (@+9)⊸∾¨
_onTSV ← {JoinTSV∘𝔽∘SplitTSV}
_file ← { 𝕩 •FLines 𝔽 _onTSV •FLines 𝕩 }

Reorder ← {𝕊t:
  letters ← "¯_"∾∾"0aA"+⟜↕¨10‿26‿26
  chars ← " ⊢⊣+-×∨∧⌈⌊⌽÷|»«=≠<>≤≥≡≢↓↑⥊⋆√¬˙˜∘⊸⟜˘¨⌜○/´⎉⌾⊘◶˝∾⋈≍‿⊏↕∊⊐⁼⍟⍋⍒`⍉⊑⊒⍷⊔⚇!⎊@←⇐↩:;𝕨𝕩𝔽𝔾𝕗𝕘𝕎𝕏𝕤𝕊𝕣(){}⟨⟩⋄,#0123456789_XYZMNIJABCDEFGHIJKLMNOPQRSTUVWXYZfghasvmabcdefghijklmnopqrstuvwxyzÀ"

  [syntax,class] ← ("SYNTAX"‿"CLASS"⊐˜⊏t) ⊏ ⍉1↓t
  order ← ⍋⍉[
    "Primitive"‿"System"‿"Syntax" ⊐ class
    (≠∾·∨chars⊸⊐)∘(¬∘∊/⊣)⟜(" "∾letters)¨ syntax
    chars⊸⊐¨ syntax
  ]
  t ⊏˜ 0∾1+order
}

[opts,acts] ← ⍉[
  "reorder"‿{𝕤⋄Reorder _file "table.tsv"}
  "showdup"‿{𝕤⋄•Out¨ (¬∘(∊∧∊⌾⌽)⊏˘)⊸/ _onTSV •FLines "table.tsv"}
]

{𝕏@} (opts⊸⊐⌾< ⊑•args) ⊑ acts∾⟨{𝕤⋄0!˜"Option not found!"}⟩
