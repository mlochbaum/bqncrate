#! /usr/bin/env bqn

SplitTSV ← >(@+9)⊸=⊸(×∘↕∘≠⊸(↓¨)+`⊸⊔)¨
JoinTSV ← (<1↓∾)˘ (@+9)⊸∾¨
_onTSV ← {JoinTSV∘𝔽∘SplitTSV}
_file ← { 𝕩 •FLines 𝔽 _onTSV •FLines 𝕩 }

Reorder ← {𝕊t:
  letters ← "¯_"∾∾"0aA"+⟜↕¨10‿26‿26
  chars ← " +-×∧∨⌈⌊÷=≠<>≤≥¬»«⋈∾≍‿(){}≡≢↕|𝕩𝕨↓↑⌽⊢⊣˜˘¨/⊏⊑⥊⊔∘⊸⟜○⌾⁼⌜´˝`˙⟨⟩[]⋆√∊⊐⎉⊘⍟◶𝔽𝔾⍋⍒⊒⍷⍉⚇!⎊@⋄,←⇐↩𝕗𝕘𝕏𝕎𝕊𝕤𝕣:;#0123456789_XYZMNIJABCDEFGHIJKLMNOPQRSTUVWXYZfghasvmabcdefghijklmnopqrstuvwxyz"

  [syntax,class] ← ("SYNTAX"‿"CLASS"⊐˜⊏t) ⊏ ⍉1↓t
  order ← ⍋⍉[
    "Primitive"‿"Syntax"‿"System" ⊐ class
    (≠∾·∨chars⊸⊐)∘(¬∘∊/⊣)⟜(" "∾letters)¨ syntax
    chars⊸⊐¨ syntax
  ]
  t ⊏˜ 0∾1+order
}

TrimKeywords ← {𝕊t:
  Sp ← {
    𝕊⁼: 1↓∾" "⊸∾¨𝕩 ;
    𝕊 : (1-˜(⊢×1+`»⊸>)' '≠𝕩) ⊔ 𝕩
  }
  ToLower ← +⟜(32×'A'⊸≤∧≤⟜'Z')
  Trim ← { 𝕩 /˜ 1≥+˝˘ 𝕩 +´∘⍷⌜○ToLower 𝕨∾𝕩 }
  {(¯1↓𝕩)⊸Trim∘⍷⌾Sp⌾(¯1⊸⊑) 𝕩}˘ t
}

[opts,acts] ← ⍉[
  "reorder"‿{Reorder _file 𝕩}
  "showdup"‿{•Out¨ (¬∘(∊∧∊⌾⌽)⊏˘)⊸/ _onTSV •FLines 𝕩}
  "showcat"‿{•Show ∨ (/⁼∘⊐≍˘⍷) ((⍉1⊸↓) ⊏˜ ·⊑⊏⊐⟨"CATEGORY"⟩˙) SplitTSV •FLines 𝕩}
  "trimkey"‿{TrimKeywords _file 𝕩}
]

{𝕏"table.tsv"} (opts⊸⊐⌾< ⊑•args) ⊑ acts∾⟨{𝕤⋄0!˜"Option not found!"}⟩
