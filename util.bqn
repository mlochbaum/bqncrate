#! /usr/bin/env bqn

SplitTSV ← >(@+9)⊸=⊸(×∘↕∘≠⊸(↓¨)+`⊸⊔)¨
JoinTSV ← (<1↓∾)˘ (@+9)⊸∾¨
_onTSV ← {JoinTSV∘𝔽∘SplitTSV}

Reorder←{𝕊t:
  letters←"¯_"∾∾"0aA"+⟜↕¨10‿26‿26
  chars←" ⊢⊣+-×∨∧⌈⌊⌽÷|»«=≠<>≤≥≡≢↓↑⥊⋆√¬˙˜∘⊸⟜˘¨⌜○/´⎉⌾⊘◶˝∾⋈≍‿⊏↕∊⊐⁼⍟⍋⍒`⍉⊑⊒⍷⊔⚇!⎊@←⇐↩:;𝕨𝕩𝔽𝔾𝕗𝕘𝕎𝕏𝕤𝕊𝕣(){}⟨⟩⋄,#0123456789_XYZMNIJABCDEFGHIJKLMNOPQRSTUVWXYZfghasvmabcdefghijklmnopqrstuvwxyzÀ"

  class←⟨
    "Primitive"
    "System"
    "Syntax"
  ⟩
  type←⟨
    "Monadic Function"
    "Dyadic Function"
  ⟩

  fields←"SYNTAX"‿"CLASS"‿"TYPE"
  val←((fields⊐˜⊏)⊏·⍉1⊸↓)t
  syntaxdata←chars⊸⊐¨0⊏val
  classdata←class⊐1⊏val
  typedata←type⊐2⊏val
  complexity←(≠∾·∨chars⊸⊐)∘(¬∘∊/⊣)⟜(" "∾letters)¨0⊏val
  t⊏˜0∾1+⍋⍉>⟨classdata,complexity,syntaxdata,typedata⟩
}
ReorderFile←{
  𝕩 •FLines Reorder _onTSV •FLines 𝕩
}

opts‿acts ← <˘⍉∘‿2⥊ ⟨
  "reorder", {𝕤⋄ReorderFile "table.tsv"}
  "showdup", {𝕤⋄•Out ¯1↓(∾∾⟜(@+10)¨) (¬∘(∊∧∊⌾⌽)⊏˘)⊸/ _onTSV •FLines "table.tsv"}
⟩

{𝕏@} (acts∾⟨{𝕤⋄0!˜"Option not found!"}⟩)⊑∘⊏˜opts⊐⊏•args
