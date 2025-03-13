if exists("b:current_syntax")
		finish
endif

" Keywords
syntax keyword arkKeyword let mut set fun if while begin import del

" Builtins
	" IO
	syntax keyword arkFunction print puts input
	syntax keyword arkFunction io:writeFile io:appendToFile io:readFile
	syntax keyword arkFunction io:fileExists? io:listFiles io:dir? io:makeDir io:removeFiles

	" List
	syntax keyword arkFunction list:reverse list:find list:slice list:sort list:fill list:setAt
	syntax keyword arkFunction list:forEach list:product list:sum list:drop list:dropWhile list:filter list:map
	syntax keyword arkFunction list:reduce list:flatten list:flatMap list:take list:takeWhile list:unzip list:zip
	syntax keyword arkFunction list:zipWithIndex list:foldLeft list:forAll list:any list:countIf list:iterate list:iota
	syntax keyword arkFunction list:chunkBy

	" Mathematics
	syntax keyword arkFunction math:exp math:ln math:ceil math:floor math:round math:NaN? math:Inf?
	syntax keyword arkFunction math:cos math:sin math:tan math:arccos math:arcsin math:arctan
	syntax keyword arkFunction math:cosh math:sinh math:tanh math:acosh math:asinh math:atanh
	syntax keyword arkFunction math:abs math:even math:odd math:min math:max math:pow math:sqrt
	syntax keyword arkFunction math:fibo math:divs math:log math:log2 math:log10 math:floordiv
	syntax keyword arkFunction math:complex math:complex-add math:complex-sub math:complex-mul math:complex-conjugate
	syntax keyword arkFunction math:complex-module math:complex-div

	syntax keyword arkConstant math:pi math:e math:tau math:Inf math:NaN

	" String
	syntax keyword arkFunction string:format string:find string:removeAt string:ord string:chr
	syntax keyword arkFunction string:toLower string:toUpper string:reverse string:slice string:split
	syntax keyword arkFunction string:replace string:join

	syntax keyword arkFunction switch lazy:eval exceptions:throw exceptions:return exceptions:try range:range
	syntax keyword arkFunction range:forEach range:filter range:map range:reduce os:home_dir test:case test:expect
	syntax keyword arkFunction test:eq test:neq test:suite functional:compose functional:left functional:right
	syntax keyword arkFunction functional:flip events:manager:make events:_check_valid events:on events:emitWith
	syntax keyword arkFunction events:emit events:removeListenersOfType

	syntax keyword arkFunction async await random

	" System
	syntax keyword arkFunction sys:exec sys:sleep sys:exit

	" Time
	syntax keyword arkFunction time

" Comments
syntax match arkComment "\v#.*$" " Matching comments with a regex

" Operators
syntax match arkOperator "\v\=" " =
syntax match arkOperator "\v\*" " *
syntax match arkOperator "\v/" " /
syntax match arkOperator "\v\+" " +
syntax match arkOperator "\v-" " -
syntax match arkOperator "\v\@" " @
syntax match arkOperator "\v\@"= " @=
syntax match arkOperator "\v\@\@" " @@
syntax match arkOperator "\v\@\@=" " @@=
syntax match arkOperator "\v\<" " <
syntax match arkOperator "\v\>" " >
syntax match arkOperator "\v\<\=" " <=
syntax match arkOperator "\v\>\=" " >=
syntax match arkOperator "\v!\=" " !=
syntax keyword arkOperator len empty? head tail
syntax keyword arkOperator list append concat pop append! concat! pop!
syntax keyword arkOperator nil? assert toNumber toString and or mod type hasField not

" Numbers
syntax match arkNumber "[0-9]" " From 0 to 9

" Strings
syntax region arkString start=/\v"/ skip=/\v\\./ end=/\v"/

" Constants
syntax keyword arkConstant false true nil sys:args sys:platform

" Macros
syntax keyword arkMacros $undef $symcat $argcount $repr $as-is

" Highlighting
highlight link arkNumber Number
highlight link arkKeyword Keyword
highlight link arkFunction Function
highlight link arkMacros Function
highlight link arkComment Comment
highlight link arkOperator Operator
highlight link arkString String
highlight link arkConstant Constant

let b:current_syntax = "Ark"
