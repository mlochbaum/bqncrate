#! /usr/bin/env dbqn

SplitTSV ← >(@+9)⊸=⊸(×∘↕∘≠⊸(↓¨)+`⊸⊔)¨
JoinTSV ← (<1↓∾)˘ (@+9)⊸∾¨

Reorder←{𝕊t:
  letters←"¯_"∾∾"0aA"+⟜↕¨10‿26‿26
  chars←" ⊢⊣+-×∨∧⌈⌊⌽÷|»«=≠<>≤≥≡≢↓↑⥊⋆√¬˙˜∘⊸⟜˘¨⌜○/´⎉⌾⊘◶˝∾≍‿⊏↕∊⊐⁼⍟⍋⍒`⍉⊑⊒⍷⊔⚇@←⇐→↩:;𝕨𝕩𝔽𝔾𝕗𝕘𝕎𝕏𝕤𝕊𝕣(){}⟨⟩⋄,#0123456789_XYZMNIJABCDEFGHIJKLMNOPQRSTUVWXYZfghasvmabcdefghijklmnopqrstuvwxyzÀ"

  class←⟨
    "Primitive"
    "System"
    "Tacit"
    "Block Function"
    "Block Modifier"
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
  𝕩 •LNS⟜(∾∾⟜(@+10)¨) JoinTSV Reorder SplitTSV •LNS 𝕩
}

opts‿acts ← <˘⍉∘‿2⥊ ⟨
  "reorder", {𝕤⋄ReorderFile "table.tsv"}
⟩

{𝕏@} (acts∾⟨{𝕤⋄0!˜"Option not found!"}⟩)⊑∘⊏˜opts⊐⊏•args
