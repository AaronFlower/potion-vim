if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "potion"
" syntax keyword {group-name} [{options}] {keywords} .. [{ooptions}]
syntax keyword potionKeyword loop to times while
syntax keyword potionKeyword if elsif else 
syntax keyword potionKeyword class return


syntax keyword potionFuncition print join string

highlight link potionKeyword Keyword
highlight link potionFuncition Function

" Comment
syntax match potionComment "\v#.*$"

highlight link potionComment Comment

" Operators	
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"

syntax match potionOperator "\v\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="

highlight link potionOperator Operator

" Number
syntax match potionNubmer "\v\d+"
highlight link potionNubmer Number

" String
syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/
highlight link potionString String
