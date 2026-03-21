Øâ
`D:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\Concrete\NewsPostManager.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 
Concrete '
{ 
public 

class 
NewsPostManager  
:! "
INewsPostService# 3
{ 
private 
const 
string #
NewsPostNotFoundMessage 4
=5 6
$str7 U
;U V
private 
const 
string $
NewsPostsNotFoundMessage 5
=6 7
$str8 S
;S T
private 
const 
string #
CategoryNotFoundMessage 4
=5 6
$str7 T
;T U
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly 
IMapper  
_mapper! (
;( )
public 
NewsPostManager 
( 
IUnitOfWork *

unitOfWork+ 5
,5 6
IMapper7 >
mapper? E
)E F
{ 	
_unitOfWork 
= 

unitOfWork $
;$ %
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
IDataResult %
<% &
NewsPostDto& 1
>1 2
>2 3
Get4 7
(7 8
int8 ;

newsPostId< F
)F G
{ 	
var   
newsPost   
=   
await    
_unitOfWork  ! ,
.  , -
	NewsPosts  - 6
.  6 7
GetAsync  7 ?
(  ? @
n!! 
=>!! 
n!! 
.!! 
Id!! 
==!! 

newsPostId!! '
,!!' (
n"" 
=>"" 
n"" 
."" 
User"" 
,"" 
n## 
=>## 
n## 
.## 
Category## 
)##  
;##  !
return%%  
CreateNewsPostResult%% '
(%%' (
newsPost%%( 0
)%%0 1
;%%1 2
}&& 	
public(( 
async(( 
Task(( 
<(( 
IDataResult(( %
<((% &
NewsPostListDto((& 5
>((5 6
>((6 7
GetAll((8 >
(((> ?
)((? @
{)) 	
var** 
	newsPosts** 
=** 
await** !
_unitOfWork**" -
.**- .
	NewsPosts**. 7
.**7 8
GetAllAsync**8 C
(**C D
null**D H
,**H I
n**J K
=>**L N
n**O P
.**P Q
User**Q U
,**U V
n**W X
=>**Y [
n**\ ]
.**] ^
Category**^ f
)**f g
;**g h
return++ $
CreateNewsPostListResult++ +
(+++ ,
	newsPosts++, 5
)++5 6
;++6 7
},, 	
public.. 
async.. 
Task.. 
<.. 
IDataResult.. %
<..% &
NewsPostListDto..& 5
>..5 6
>..6 7
GetAllByNonDeleted..8 J
(..J K
)..K L
{// 	
var00 
	newsPosts00 
=00 
await00 !
_unitOfWork00" -
.00- .
	NewsPosts00. 7
.007 8
GetAllAsync008 C
(00C D
n00D E
=>00F H
!00I J
n00J K
.00K L
	IsDeleted00L U
,00U V
n00W X
=>00Y [
n00\ ]
.00] ^
User00^ b
,00b c
n00d e
=>00f h
n00i j
.00j k
Category00k s
)00s t
;00t u
return11 $
CreateNewsPostListResult11 +
(11+ ,
	newsPosts11, 5
)115 6
;116 7
}22 	
public44 
async44 
Task44 
<44 
IDataResult44 %
<44% &
NewsPostListDto44& 5
>445 6
>446 7
GetAllByCategory448 H
(44H I
int44I L

categoryId44M W
)44W X
{55 	
if66 
(66 
!66 
await66 
_unitOfWork66 "
.66" #

Categories66# -
.66- .
AnyAsync66. 6
(666 7
c667 8
=>669 ;
c66< =
.66= >
Id66> @
==66A C

categoryId66D N
)66N O
)66O P
return77 &
CategoryNotFoundListResult77 1
(771 2
)772 3
;773 4
var99 
	newsPosts99 
=99 
await99 !
_unitOfWork99" -
.99- .
	NewsPosts99. 7
.997 8
GetAllAsync998 C
(99C D
n:: 
=>:: 
n:: 
.:: 

CategoryId:: !
==::" $

categoryId::% /
,::/ 0
n;; 
=>;; 
!;; 
n;; 
.;; 
	IsDeleted;; !
&&;;" $
n;;% &
.;;& '
IsActive;;' /
,;;/ 0
n<< 
=><< 
n<< 
.<< 
User<< 
,<< 
n== 
=>== 
n== 
.== 
Category== 
)==  
;==  !
return?? $
CreateNewsPostListResult?? +
(??+ ,
	newsPosts??, 5
)??5 6
;??6 7
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
IDataResultBB %
<BB% &
NewsPostListDtoBB& 5
>BB5 6
>BB6 7'
GetAllByNonDeletedAndActiveBB8 S
(BBS T
)BBT U
{CC 	
varDD 
	newsPostsDD 
=DD 
awaitDD !
_unitOfWorkDD" -
.DD- .
	NewsPostsDD. 7
.DD7 8
GetAllAsyncDD8 C
(DDC D
nEE 
=>EE 
!EE 
nEE 
.EE 
	IsDeletedEE !
&&EE" $
nEE% &
.EE& '
IsActiveEE' /
,EE/ 0
nFF 
=>FF 
nFF 
.FF 
UserFF 
,FF 
nGG 
=>GG 
nGG 
.GG 
CategoryGG 
)GG  
;GG  !
returnII $
CreateNewsPostListResultII +
(II+ ,
	newsPostsII, 5
)II5 6
;II6 7
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IResultLL !
>LL! "
AddLL# &
(LL& '
NewsPostAddDtoLL' 5
newsPostAddDtoLL6 D
,LLD E
stringLLF L
createdByNameLLM Z
)LLZ [
{MM 	
varNN 
newsPostNN 
=NN 
_mapperNN "
.NN" #
MapNN# &
<NN& '
NewsPostNN' /
>NN/ 0
(NN0 1
newsPostAddDtoNN1 ?
)NN? @
;NN@ A
newsPostOO 
.OO 
CreatedByNameOO "
=OO# $
createdByNameOO% 2
;OO2 3
newsPostPP 
.PP 
ModifiedByNamePP #
=PP$ %
createdByNamePP& 3
;PP3 4
newsPostQQ 
.QQ 
UserIdQQ 
=QQ 
$numQQ 
;QQ  
awaitSS 
_unitOfWorkSS 
.SS 
	NewsPostsSS '
.SS' (
AddAsyncSS( 0
(SS0 1
newsPostSS1 9
)SS9 :
;SS: ;
awaitTT 
	SaveAsyncTT 
(TT 
)TT 
;TT 
returnVV 
SuccessResultVV  
(VV  !
$"VV! #
$strVV# 8
{VV8 9
newsPostAddDtoVV9 G
.VVG H
TitleVVH M
}VVM N
$strVVN k
"VVk l
)VVl m
;VVm n
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
IResultYY !
>YY! "
UpdateYY# )
(YY) *
NewsPostUpdateDtoYY* ;
newsPostUpdateDtoYY< M
,YYM N
stringYYO U
modifiedByNameYYV d
)YYd e
{ZZ 	
var[[ 
newsPost[[ 
=[[ 
_mapper[[ "
.[[" #
Map[[# &
<[[& '
NewsPost[[' /
>[[/ 0
([[0 1
newsPostUpdateDto[[1 B
)[[B C
;[[C D
newsPost\\ 
.\\ 
ModifiedByName\\ #
=\\$ %
modifiedByName\\& 4
;\\4 5
await^^ 
_unitOfWork^^ 
.^^ 
	NewsPosts^^ '
.^^' (
UpdateAsync^^( 3
(^^3 4
newsPost^^4 <
)^^< =
;^^= >
await__ 
	SaveAsync__ 
(__ 
)__ 
;__ 
returnaa 
SuccessResultaa  
(aa  !
$"aa! #
$straa# 8
{aa8 9
newsPostUpdateDtoaa9 J
.aaJ K
TitleaaK P
}aaP Q
$straaQ p
"aap q
)aaq r
;aar s
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
IResultdd !
>dd! "
Deletedd# )
(dd) *
intdd* -

newsPostIddd. 8
,dd8 9
stringdd: @
modifiedByNameddA O
)ddO P
{ee 	
varff 
newsPostff 
=ff 
awaitff  
GetExistingNewsPostff! 4
(ff4 5

newsPostIdff5 ?
)ff? @
;ff@ A
ifgg 
(gg 
newsPostgg 
==gg 
nullgg  
)gg  !
returnhh "
NewsPostNotFoundResulthh -
(hh- .
)hh. /
;hh/ 0
newsPostjj 
.jj 
	IsDeletedjj 
=jj  
truejj! %
;jj% &
newsPostkk 
.kk 
ModifiedByNamekk #
=kk$ %
modifiedByNamekk& 4
;kk4 5
newsPostll 
.ll 
ModifiedDatell !
=ll" #
DateTimell$ ,
.ll, -
Nowll- 0
;ll0 1
awaitnn 
_unitOfWorknn 
.nn 
	NewsPostsnn '
.nn' (
UpdateAsyncnn( 3
(nn3 4
newsPostnn4 <
)nn< =
;nn= >
awaitoo 
	SaveAsyncoo 
(oo 
)oo 
;oo 
returnqq 
SuccessResultqq  
(qq  !
$"qq! #
$strqq# 8
{qq8 9
newsPostqq9 A
.qqA B
TitleqqB G
}qqG H
$strqqH g
"qqg h
)qqh i
;qqi j
}rr 	
publictt 
asynctt 
Tasktt 
<tt 
IResulttt !
>tt! "

HardDeletett# -
(tt- .
inttt. 1

newsPostIdtt2 <
)tt< =
{uu 	
varvv 
newsPostvv 
=vv 
awaitvv  
GetExistingNewsPostvv! 4
(vv4 5

newsPostIdvv5 ?
)vv? @
;vv@ A
ifww 
(ww 
newsPostww 
==ww 
nullww  
)ww  !
returnxx "
NewsPostNotFoundResultxx -
(xx- .
)xx. /
;xx/ 0
awaitzz 
_unitOfWorkzz 
.zz 
	NewsPostszz '
.zz' (
DeleteAsynczz( 3
(zz3 4
newsPostzz4 <
)zz< =
;zz= >
await{{ 
	SaveAsync{{ 
({{ 
){{ 
;{{ 
return}} 
SuccessResult}}  
(}}  !
$"~~ 
$str~~ '
{~~' (
newsPost~~( 0
.~~0 1
Title~~1 6
}~~6 7
$str~~7 h
"~~h i
)~~i j
;~~j k
} 	
private
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
NewsPost
ÉÉ #
>
ÉÉ# $!
GetExistingNewsPost
ÉÉ% 8
(
ÉÉ8 9
int
ÉÉ9 <

newsPostId
ÉÉ= G
)
ÉÉG H
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
await
ÖÖ 
_unitOfWork
ÖÖ "
.
ÖÖ" #
	NewsPosts
ÖÖ# ,
.
ÖÖ, -
AnyAsync
ÖÖ- 5
(
ÖÖ5 6
n
ÖÖ6 7
=>
ÖÖ8 :
n
ÖÖ; <
.
ÖÖ< =
Id
ÖÖ= ?
==
ÖÖ@ B

newsPostId
ÖÖC M
)
ÖÖM N
)
ÖÖN O
return
ÜÜ 
null
ÜÜ 
;
ÜÜ 
return
àà 
await
àà 
_unitOfWork
àà $
.
àà$ %
	NewsPosts
àà% .
.
àà. /
GetAsync
àà/ 7
(
àà7 8
n
àà8 9
=>
àà: <
n
àà= >
.
àà> ?
Id
àà? A
==
ààB D

newsPostId
ààE O
)
ààO P
;
ààP Q
}
ââ 	
private
ãã 
async
ãã 
Task
ãã 
	SaveAsync
ãã $
(
ãã$ %
)
ãã% &
{
åå 	
await
çç 
_unitOfWork
çç 
.
çç 
	SaveAsync
çç '
(
çç' (
)
çç( )
;
çç) *
}
éé 	
private
êê 
static
êê 
IResult
êê 
SuccessResult
êê ,
(
êê, -
string
êê- 3
message
êê4 ;
)
êê; <
{
ëë 	
return
íí 
new
íí 
Result
íí 
(
íí 
ResultStatus
íí *
.
íí* +
Success
íí+ 2
,
íí2 3
message
íí4 ;
)
íí; <
;
íí< =
}
ìì 	
private
ïï 
static
ïï 
IResult
ïï $
NewsPostNotFoundResult
ïï 5
(
ïï5 6
)
ïï6 7
{
ññ 	
return
óó 
new
óó 
Result
óó 
(
óó 
ResultStatus
óó *
.
óó* +
Error
óó+ 0
,
óó0 1%
NewsPostNotFoundMessage
óó2 I
)
óóI J
;
óóJ K
}
òò 	
private
öö 
static
öö 
IDataResult
öö "
<
öö" #
NewsPostListDto
öö# 2
>
öö2 3(
CategoryNotFoundListResult
öö4 N
(
ööN O
)
ööO P
{
õõ 	
return
úú 
new
úú 

DataResult
úú !
<
úú! "
NewsPostListDto
úú" 1
>
úú1 2
(
úú2 3
ResultStatus
úú3 ?
.
úú? @
Error
úú@ E
,
úúE F%
CategoryNotFoundMessage
úúG ^
,
úú^ _
data
úú` d
:
úúd e
null
úúf j
)
úúj k
;
úúk l
}
ùù 	
private
üü 
static
üü 
IDataResult
üü "
<
üü" #
NewsPostDto
üü# .
>
üü. /"
CreateNewsPostResult
üü0 D
(
üüD E
NewsPost
üüE M
newsPost
üüN V
)
üüV W
{
†† 	
if
°° 
(
°° 
newsPost
°° 
==
°° 
null
°°  
)
°°  !
return
¢¢ 
new
¢¢ 

DataResult
¢¢ %
<
¢¢% &
NewsPostDto
¢¢& 1
>
¢¢1 2
(
¢¢2 3
ResultStatus
¢¢3 ?
.
¢¢? @
Error
¢¢@ E
,
¢¢E F%
NewsPostNotFoundMessage
¢¢G ^
,
¢¢^ _
data
¢¢` d
:
¢¢d e
null
¢¢f j
)
¢¢j k
;
¢¢k l
return
§§ 
new
§§ 

DataResult
§§ !
<
§§! "
NewsPostDto
§§" -
>
§§- .
(
§§. /
ResultStatus
§§/ ;
.
§§; <
Success
§§< C
,
§§C D
new
§§E H
NewsPostDto
§§I T
{
•• 
NewsPost
¶¶ 
=
¶¶ 
newsPost
¶¶ #
,
¶¶# $
ResultStatus
ßß 
=
ßß 
ResultStatus
ßß +
.
ßß+ ,
Success
ßß, 3
}
®® 
)
®® 
;
®® 
}
©© 	
private
´´ 
static
´´ 
IDataResult
´´ "
<
´´" #
NewsPostListDto
´´# 2
>
´´2 3&
CreateNewsPostListResult
´´4 L
(
´´L M
IList
´´M R
<
´´R S
NewsPost
´´S [
>
´´[ \
	newsPosts
´´] f
)
´´f g
{
¨¨ 	
if
ÆÆ 
(
ÆÆ 
	newsPosts
ÆÆ 
!=
ÆÆ 
null
ÆÆ !
&&
ÆÆ" $
	newsPosts
ÆÆ% .
.
ÆÆ. /
Count
ÆÆ/ 4
>
ÆÆ5 6
-
ÆÆ7 8
$num
ÆÆ8 9
)
ÆÆ9 :
{
ØØ 
return
∞∞ 
new
∞∞ 

DataResult
∞∞ %
<
∞∞% &
NewsPostListDto
∞∞& 5
>
∞∞5 6
(
∞∞6 7
ResultStatus
∞∞7 C
.
∞∞C D
Success
∞∞D K
,
∞∞K L
new
∞∞M P
NewsPostListDto
∞∞Q `
{
±± 
	NewsPosts
≤≤ 
=
≤≤ 
	newsPosts
≤≤  )
,
≤≤) *
ResultStatus
≥≥  
=
≥≥! "
ResultStatus
≥≥# /
.
≥≥/ 0
Success
≥≥0 7
}
¥¥ 
)
¥¥ 
;
¥¥ 
}
µµ 
return
∑∑ 
new
∑∑ 

DataResult
∑∑ !
<
∑∑! "
NewsPostListDto
∑∑" 1
>
∑∑1 2
(
∑∑2 3
ResultStatus
∑∑3 ?
.
∑∑? @
Error
∑∑@ E
,
∑∑E F&
NewsPostsNotFoundMessage
∑∑G _
,
∑∑_ `
data
∑∑a e
:
∑∑e f
null
∑∑g k
)
∑∑k l
;
∑∑l m
}
∏∏ 	
}
ππ 
}∫∫ ß&
`D:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\Concrete\LanguageManager.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 
Concrete '
{ 
public 

class 
LanguageManager  
:! "
ILanguageService# 3
{ 
private 
const 
string #
LanguageNotFoundMessage 4
=5 6
$str7 T
;T U
private 
const 
string $
LanguagesNotFoundMessage 5
=6 7
$str8 R
;R S
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
public 
LanguageManager 
( 
IUnitOfWork *

unitOfWork+ 5
)5 6
{ 	
_unitOfWork 
= 

unitOfWork $
;$ %
} 	
public 
async 
Task 
< 
IDataResult %
<% &
LanguageDto& 1
>1 2
>2 3
Get4 7
(7 8
int8 ;

languageId< F
)F G
{ 	
var 
language 
= 
await  
_unitOfWork! ,
., -
	Languages- 6
.6 7
GetAsync7 ?
(? @
l 
=> 
l 
. 
Id 
== 

languageId '
,' (
l 
=> 
l 
. 
	NewsPosts  
,  !
l 
=> 
l 
. 
Comments 
)  
;  !
if   
(   
language   
==   
null    
)    !
{!! 
return"" 
new"" 

DataResult"" %
<""% &
LanguageDto""& 1
>""1 2
(""2 3
ResultStatus""3 ?
.""? @
Error""@ E
,""E F#
LanguageNotFoundMessage""G ^
,""^ _
data""` d
:""d e
null""f j
)""j k
;""k l
}## 
return%% 
new%% 

DataResult%% !
<%%! "
LanguageDto%%" -
>%%- .
(%%. /
ResultStatus%%/ ;
.%%; <
Success%%< C
,%%C D
new%%E H
LanguageDto%%I T
{&& 
Language'' 
='' 
language'' #
,''# $
ResultStatus(( 
=(( 
ResultStatus(( +
.((+ ,
Success((, 3
})) 
))) 
;)) 
}** 	
public,, 
async,, 
Task,, 
<,, 
IDataResult,, %
<,,% &
LanguageListDto,,& 5
>,,5 6
>,,6 7
GetAll,,8 >
(,,> ?
),,? @
{-- 	
var.. 
	languages.. 
=.. 
await.. !
_unitOfWork.." -
...- .
	Languages... 7
...7 8
GetAllAsync..8 C
(..C D
null..D H
,..H I
l..J K
=>..L N
l..O P
...P Q
	NewsPosts..Q Z
,..Z [
l..\ ]
=>..^ `
l..a b
...b c
Comments..c k
)..k l
;..l m
return// $
CreateLanguageListResult// +
(//+ ,
	languages//, 5
)//5 6
;//6 7
}00 	
private22 
static22 
IDataResult22 "
<22" #
LanguageListDto22# 2
>222 3$
CreateLanguageListResult224 L
(22L M
IList22M R
<22R S
Language22S [
>22[ \
	languages22] f
)22f g
{33 	
if44 
(44 
	languages44 
==44 
null44 !
)44! "
{55 
return66 
new66 

DataResult66 %
<66% &
LanguageListDto66& 5
>665 6
(666 7
ResultStatus667 C
.66C D
Error66D I
,66I J$
LanguagesNotFoundMessage66K c
,66c d
data66e i
:66i j
null66k o
)66o p
;66p q
}77 
return99 
new99 

DataResult99 !
<99! "
LanguageListDto99" 1
>991 2
(992 3
ResultStatus993 ?
.99? @
Success99@ G
,99G H
new99I L
LanguageListDto99M \
{:: 
	Languages;; 
=;; 
	languages;; %
,;;% &
ResultStatus<< 
=<< 
ResultStatus<< +
.<<+ ,
Success<<, 3
}== 
)== 
;== 
}>> 	
}?? 
}@@ É&
_D:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\Concrete\CommentManager.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 
Concrete '
{ 
public 

class 
CommentManager 
:  !
ICommentService" 1
{ 
private 
const 
string "
CommentNotFoundMessage 3
=4 5
$str6 R
;R S
private 
const 
string #
CommentsNotFoundMessage 4
=5 6
$str7 P
;P Q
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
public 
CommentManager 
( 
IUnitOfWork )

unitOfWork* 4
)4 5
{ 	
_unitOfWork 
= 

unitOfWork $
;$ %
} 	
public 
async 
Task 
< 
IDataResult %
<% &

CommentDto& 0
>0 1
>1 2
Get3 6
(6 7
int7 :
	commentId; D
)D E
{ 	
var 
comment 
= 
await 
_unitOfWork  +
.+ ,
Comments, 4
.4 5
GetAsync5 =
(= >
c 
=> 
c 
. 
Id 
== 
	commentId &
,& '
c 
=> 
c 
. 
NewsPost 
,  
c 
=> 
c 
. 
Language 
)  
;  !
if   
(   
comment   
==   
null   
)    
{!! 
return"" 
new"" 

DataResult"" %
<""% &

CommentDto""& 0
>""0 1
(""1 2
ResultStatus""2 >
.""> ?
Error""? D
,""D E"
CommentNotFoundMessage""F \
,""\ ]
data""^ b
:""b c
null""d h
)""h i
;""i j
}## 
return%% 
new%% 

DataResult%% !
<%%! "

CommentDto%%" ,
>%%, -
(%%- .
ResultStatus%%. :
.%%: ;
Success%%; B
,%%B C
new%%D G

CommentDto%%H R
{&& 
Comment'' 
='' 
comment'' !
,''! "
ResultStatus(( 
=(( 
ResultStatus(( +
.((+ ,
Success((, 3
})) 
))) 
;)) 
}** 	
public,, 
async,, 
Task,, 
<,, 
IDataResult,, %
<,,% &
CommentListDto,,& 4
>,,4 5
>,,5 6
GetAll,,7 =
(,,= >
),,> ?
{-- 	
var.. 
comments.. 
=.. 
await..  
_unitOfWork..! ,
..., -
Comments..- 5
...5 6
GetAllAsync..6 A
(..A B
null..B F
,..F G
c..H I
=>..J L
c..M N
...N O
NewsPost..O W
,..W X
c..Y Z
=>..[ ]
c..^ _
..._ `
Language..` h
)..h i
;..i j
return// #
CreateCommentListResult// *
(//* +
comments//+ 3
)//3 4
;//4 5
}00 	
private22 
static22 
IDataResult22 "
<22" #
CommentListDto22# 1
>221 2#
CreateCommentListResult223 J
(22J K
IList22K P
<22P Q
Comment22Q X
>22X Y
comments22Z b
)22b c
{33 	
if44 
(44 
comments44 
==44 
null44  
)44  !
{55 
return66 
new66 

DataResult66 %
<66% &
CommentListDto66& 4
>664 5
(665 6
ResultStatus666 B
.66B C
Error66C H
,66H I#
CommentsNotFoundMessage66J a
,66a b
data66c g
:66g h
null66i m
)66m n
;66n o
}77 
return99 
new99 

DataResult99 !
<99! "
CommentListDto99" 0
>990 1
(991 2
ResultStatus992 >
.99> ?
Success99? F
,99F G
new99H K
CommentListDto99L Z
{:: 
Comments;; 
=;; 
comments;; #
,;;# $
ResultStatus<< 
=<< 
ResultStatus<< +
.<<+ ,
Success<<, 3
}== 
)== 
;== 
}>> 	
}?? 
}@@ ñë
`D:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\Concrete\CategoryManager.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 
Concrete '
{ 
public 

class 
CategoryManager  
:! "
ICategoryService# 3
{ 
private 
readonly 
CategoryQueryPart *

_queryPart+ 5
;5 6
private 
readonly 
CategoryCommandPart ,
_commandPart- 9
;9 :
public 
CategoryManager 
( 
IUnitOfWork *

unitOfWork+ 5
,5 6
IMapper7 >
mapper? E
)E F
{ 	

_queryPart 
= 
new 
CategoryQueryPart .
(. /

unitOfWork/ 9
)9 :
;: ;
_commandPart 
= 
new 
CategoryCommandPart 2
(2 3

unitOfWork3 =
,= >
mapper? E
)E F
;F G
} 	
public 
Task 
< 
IDataResult 
<  
CategoryDto  +
>+ ,
>, -
Get. 1
(1 2
int2 5

categoryId6 @
)@ A
=> 

_queryPart 
. 
Get 
( 

categoryId (
)( )
;) *
public 
Task 
< 
IDataResult 
<  
CategoryListDto  /
>/ 0
>0 1
GetAll2 8
(8 9
)9 :
=> 

_queryPart 
. 
GetAll  
(  !
)! "
;" #
public   
Task   
<   
IDataResult   
<    
CategoryListDto    /
>  / 0
>  0 1
GetAllByNonDeleted  2 D
(  D E
)  E F
=>!! 

_queryPart!! 
.!! 
GetAllByNonDeleted!! ,
(!!, -
)!!- .
;!!. /
public## 
Task## 
<## 
IDataResult## 
<##  
CategoryListDto##  /
>##/ 0
>##0 1'
GetAllByNonDeletedAndActive##2 M
(##M N
)##N O
=>$$ 

_queryPart$$ 
.$$ '
GetAllByNonDeletedAndActive$$ 5
($$5 6
)$$6 7
;$$7 8
public&& 
Task&& 
<&& 
IResult&& 
>&& 
Add&&  
(&&  !
CategoryAddDto&&! /
categoryAddDto&&0 >
,&&> ?
string&&@ F
createdByName&&G T
)&&T U
=>'' 
_commandPart'' 
.'' 
Add'' 
(''  
categoryAddDto''  .
,''. /
createdByName''0 =
)''= >
;''> ?
public)) 
Task)) 
<)) 
IResult)) 
>)) 
Update)) #
())# $
CategoryUpdateDto))$ 5
categoryUpdateDto))6 G
,))G H
string))I O
modifiedByName))P ^
)))^ _
=>** 
_commandPart** 
.** 
Update** "
(**" #
categoryUpdateDto**# 4
,**4 5
modifiedByName**6 D
)**D E
;**E F
public,, 
Task,, 
<,, 
IResult,, 
>,, 
Delete,, #
(,,# $
int,,$ '

categoryId,,( 2
,,,2 3
string,,4 :
modifiedByName,,; I
),,I J
=>-- 
_commandPart-- 
.-- 
Delete-- "
(--" #

categoryId--# -
,--- .
modifiedByName--/ =
)--= >
;--> ?
public// 
Task// 
<// 
IResult// 
>// 

HardDelete// '
(//' (
int//( +

categoryId//, 6
)//6 7
=>00 
_commandPart00 
.00 

HardDelete00 &
(00& '

categoryId00' 1
)001 2
;002 3
private55 
sealed55 
class55 
CategoryQueryPart55 .
{66 	
private77 
readonly77 
IUnitOfWork77 (
_unitOfWork77) 4
;774 5
public99 
CategoryQueryPart99 $
(99$ %
IUnitOfWork99% 0

unitOfWork991 ;
)99; <
{:: 
_unitOfWork;; 
=;; 

unitOfWork;; (
;;;( )
}<< 
public>> 
async>> 
Task>> 
<>> 
IDataResult>> )
<>>) *
CategoryDto>>* 5
>>>5 6
>>>6 7
Get>>8 ;
(>>; <
int>>< ?

categoryId>>@ J
)>>J K
{?? 
var@@ 
category@@ 
=@@ 
await@@ $
_unitOfWork@@% 0
.@@0 1

Categories@@1 ;
.@@; <
GetAsync@@< D
(@@D E
c@@E F
=>@@G I
c@@J K
.@@K L
Id@@L N
==@@O Q

categoryId@@R \
)@@\ ]
;@@] ^
returnAA  
CreateCategoryResultAA +
(AA+ ,
categoryAA, 4
)AA4 5
;AA5 6
}BB 
publicDD 
asyncDD 
TaskDD 
<DD 
IDataResultDD )
<DD) *
CategoryListDtoDD* 9
>DD9 :
>DD: ;
GetAllDD< B
(DDB C
)DDC D
{EE 
varFF 

categoriesFF 
=FF  
awaitFF! &
_unitOfWorkFF' 2
.FF2 3

CategoriesFF3 =
.FF= >
GetAllAsyncFF> I
(FFI J
nullFFJ N
,FFN O
cFFP Q
=>FFR T
cFFU V
.FFV W
	NewsPostsFFW `
)FF` a
;FFa b
returnGG $
CreateCategoryListResultGG /
(GG/ 0

categoriesGG0 :
)GG: ;
;GG; <
}HH 
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IDataResultJJ )
<JJ) *
CategoryListDtoJJ* 9
>JJ9 :
>JJ: ;
GetAllByNonDeletedJJ< N
(JJN O
)JJO P
{KK 
varLL 

categoriesLL 
=LL  
awaitLL! &
_unitOfWorkLL' 2
.LL2 3

CategoriesLL3 =
.LL= >
GetAllAsyncLL> I
(LLI J
cLLJ K
=>LLL N
!LLO P
cLLP Q
.LLQ R
	IsDeletedLLR [
,LL[ \
cLL] ^
=>LL_ a
cLLb c
.LLc d
	NewsPostsLLd m
)LLm n
;LLn o
returnMM $
CreateCategoryListResultMM /
(MM/ 0

categoriesMM0 :
)MM: ;
;MM; <
}NN 
publicPP 
asyncPP 
TaskPP 
<PP 
IDataResultPP )
<PP) *
CategoryListDtoPP* 9
>PP9 :
>PP: ;'
GetAllByNonDeletedAndActivePP< W
(PPW X
)PPX Y
{QQ 
varRR 

categoriesRR 
=RR  
awaitRR! &
_unitOfWorkRR' 2
.RR2 3

CategoriesRR3 =
.RR= >
GetAllAsyncRR> I
(RRI J
cSS 
=>SS 
!SS 
cSS 
.SS 
	IsDeletedSS %
&&SS& (
cSS) *
.SS* +
IsActiveSS+ 3
,SS3 4
cTT 
=>TT 
cTT 
.TT 
	NewsPostsTT $
)TT$ %
;TT% &
returnVV $
CreateCategoryListResultVV /
(VV/ 0

categoriesVV0 :
)VV: ;
;VV; <
}WW 
privateYY 
staticYY 
IDataResultYY &
<YY& '
CategoryDtoYY' 2
>YY2 3 
CreateCategoryResultYY4 H
(YYH I
CategoryYYI Q
categoryYYR Z
)YYZ [
{ZZ 
if[[ 
([[ 
category[[ 
==[[ 
null[[  $
)[[$ %
{\\ 
return]] 
new]] 

DataResult]] )
<]]) *
CategoryDto]]* 5
>]]5 6
(]]6 7
ResultStatus^^ $
.^^$ %
Error^^% *
,^^* +
message__ 
:__  
$str__! >
,__> ?
data`` 
:`` 
null`` "
)``" #
;``# $
}aa 
returncc 
newcc 

DataResultcc %
<cc% &
CategoryDtocc& 1
>cc1 2
(cc2 3
ResultStatusdd  
.dd  !
Successdd! (
,dd( )
newee 
CategoryDtoee #
{ff 
Categorygg  
=gg! "
categorygg# +
,gg+ ,
ResultStatushh $
=hh% &
ResultStatushh' 3
.hh3 4
Successhh4 ;
}ii 
)ii 
;ii 
}jj 
privatell 
staticll 
IDataResultll &
<ll& '
CategoryListDtoll' 6
>ll6 7$
CreateCategoryListResultll8 P
(llP Q
IListllQ V
<llV W
CategoryllW _
>ll_ `

categorieslla k
)llk l
{mm 
ifnn 
(nn 

categoriesnn 
==nn !
nullnn" &
)nn& '
{oo 
returnpp 
newpp 

DataResultpp )
<pp) *
CategoryListDtopp* 9
>pp9 :
(pp: ;
ResultStatusqq $
.qq$ %
Errorqq% *
,qq* +
messagerr 
:rr  
$strrr! >
,rr> ?
datass 
:ss 
nullss "
)ss" #
;ss# $
}tt 
returnvv 
newvv 

DataResultvv %
<vv% &
CategoryListDtovv& 5
>vv5 6
(vv6 7
ResultStatusww  
.ww  !
Successww! (
,ww( )
newxx 
CategoryListDtoxx '
{yy 

Categorieszz "
=zz# $

categorieszz% /
,zz/ 0
ResultStatus{{ $
={{% &
ResultStatus{{' 3
.{{3 4
Success{{4 ;
}|| 
)|| 
;|| 
}}} 
}~~ 	
private
ÉÉ 
sealed
ÉÉ 
class
ÉÉ !
CategoryCommandPart
ÉÉ 0
{
ÑÑ 	
private
ÖÖ 
readonly
ÖÖ 
IUnitOfWork
ÖÖ (
_unitOfWork
ÖÖ) 4
;
ÖÖ4 5
private
ÜÜ 
readonly
ÜÜ 
IMapper
ÜÜ $
_mapper
ÜÜ% ,
;
ÜÜ, -
public
àà !
CategoryCommandPart
àà &
(
àà& '
IUnitOfWork
àà' 2

unitOfWork
àà3 =
,
àà= >
IMapper
àà? F
mapper
ààG M
)
ààM N
{
ââ 
_unitOfWork
ää 
=
ää 

unitOfWork
ää (
;
ää( )
_mapper
ãã 
=
ãã 
mapper
ãã  
;
ãã  !
}
åå 
public
éé 
async
éé 
Task
éé 
<
éé 
IResult
éé %
>
éé% &
Add
éé' *
(
éé* +
CategoryAddDto
éé+ 9
categoryAddDto
éé: H
,
ééH I
string
ééJ P
createdByName
ééQ ^
)
éé^ _
{
èè 
var
êê 
category
êê 
=
êê 
_mapper
êê &
.
êê& '
Map
êê' *
<
êê* +
Category
êê+ 3
>
êê3 4
(
êê4 5
categoryAddDto
êê5 C
)
êêC D
;
êêD E
category
ëë 
.
ëë 
CreatedByName
ëë &
=
ëë' (
createdByName
ëë) 6
;
ëë6 7
category
íí 
.
íí 
ModifiedByName
íí '
=
íí( )
createdByName
íí* 7
;
íí7 8
await
îî 
_unitOfWork
îî !
.
îî! "

Categories
îî" ,
.
îî, -
AddAsync
îî- 5
(
îî5 6
category
îî6 >
)
îî> ?
;
îî? @
await
ïï 
_unitOfWork
ïï !
.
ïï! "
	SaveAsync
ïï" +
(
ïï+ ,
)
ïï, -
;
ïï- .
return
óó 
new
óó 
Result
óó !
(
óó! "
ResultStatus
òò  
.
òò  !
Success
òò! (
,
òò( )
$"
ôô 
$str
ôô )
{
ôô) *
categoryAddDto
ôô* 8
.
ôô8 9
Name
ôô9 =
}
ôô= >
$str
ôô> [
"
ôô[ \
)
ôô\ ]
;
ôô] ^
}
öö 
public
úú 
async
úú 
Task
úú 
<
úú 
IResult
úú %
>
úú% &
Update
úú' -
(
úú- .
CategoryUpdateDto
úú. ?
categoryUpdateDto
úú@ Q
,
úúQ R
string
úúS Y
modifiedByName
úúZ h
)
úúh i
{
ùù 
var
ûû 
category
ûû 
=
ûû 
_mapper
ûû &
.
ûû& '
Map
ûû' *
<
ûû* +
Category
ûû+ 3
>
ûû3 4
(
ûû4 5
categoryUpdateDto
ûû5 F
)
ûûF G
;
ûûG H
category
üü 
.
üü 
ModifiedByName
üü '
=
üü( )
modifiedByName
üü* 8
;
üü8 9
await
°° 
_unitOfWork
°° !
.
°°! "

Categories
°°" ,
.
°°, -
UpdateAsync
°°- 8
(
°°8 9
category
°°9 A
)
°°A B
;
°°B C
await
¢¢ 
_unitOfWork
¢¢ !
.
¢¢! "
	SaveAsync
¢¢" +
(
¢¢+ ,
)
¢¢, -
;
¢¢- .
return
§§ 
new
§§ 
Result
§§ !
(
§§! "
ResultStatus
••  
.
••  !
Success
••! (
,
••( )
$"
¶¶ 
$str
¶¶ )
{
¶¶) *
categoryUpdateDto
¶¶* ;
.
¶¶; <
Name
¶¶< @
}
¶¶@ A
$str
¶¶A `
"
¶¶` a
)
¶¶a b
;
¶¶b c
}
ßß 
public
©© 
Task
©© 
<
©© 
IResult
©© 
>
©©  
Delete
©©! '
(
©©' (
int
©©( +

categoryId
©©, 6
,
©©6 7
string
©©8 >
modifiedByName
©©? M
)
©©M N
{
™™ 
return
´´ (
ExecuteForExistingCategory
´´ 1
(
´´1 2

categoryId
´´2 <
,
´´< =
async
´´> C
category
´´D L
=>
´´M O
{
¨¨ 
category
≠≠ 
.
≠≠ 
	IsDeleted
≠≠ &
=
≠≠' (
true
≠≠) -
;
≠≠- .
category
ÆÆ 
.
ÆÆ 
ModifiedByName
ÆÆ +
=
ÆÆ, -
modifiedByName
ÆÆ. <
;
ÆÆ< =
category
ØØ 
.
ØØ 
ModifiedDate
ØØ )
=
ØØ* +
DateTime
ØØ, 4
.
ØØ4 5
Now
ØØ5 8
;
ØØ8 9
await
±± 
_unitOfWork
±± %
.
±±% &

Categories
±±& 0
.
±±0 1
UpdateAsync
±±1 <
(
±±< =
category
±±= E
)
±±E F
;
±±F G
await
≤≤ 
_unitOfWork
≤≤ %
.
≤≤% &
	SaveAsync
≤≤& /
(
≤≤/ 0
)
≤≤0 1
;
≤≤1 2
return
¥¥ 
new
¥¥ 
Result
¥¥ %
(
¥¥% &
ResultStatus
µµ $
.
µµ$ %
Success
µµ% ,
,
µµ, -
$"
∂∂ 
$str
∂∂ -
{
∂∂- .
category
∂∂. 6
.
∂∂6 7
Name
∂∂7 ;
}
∂∂; <
$str
∂∂< [
"
∂∂[ \
)
∂∂\ ]
;
∂∂] ^
}
∑∑ 
)
∑∑ 
;
∑∑ 
}
∏∏ 
public
∫∫ 
Task
∫∫ 
<
∫∫ 
IResult
∫∫ 
>
∫∫  

HardDelete
∫∫! +
(
∫∫+ ,
int
∫∫, /

categoryId
∫∫0 :
)
∫∫: ;
{
ªª 
return
ºº (
ExecuteForExistingCategory
ºº 1
(
ºº1 2

categoryId
ºº2 <
,
ºº< =
async
ºº> C
category
ººD L
=>
ººM O
{
ΩΩ 
await
ææ 
_unitOfWork
ææ %
.
ææ% &

Categories
ææ& 0
.
ææ0 1
DeleteAsync
ææ1 <
(
ææ< =
category
ææ= E
)
ææE F
;
ææF G
await
øø 
_unitOfWork
øø %
.
øø% &
	SaveAsync
øø& /
(
øø/ 0
)
øø0 1
;
øø1 2
return
¡¡ 
new
¡¡ 
Result
¡¡ %
(
¡¡% &
ResultStatus
¬¬ $
.
¬¬$ %
Success
¬¬% ,
,
¬¬, -
$"
√√ 
$str
√√ -
{
√√- .
category
√√. 6
.
√√6 7
Name
√√7 ;
}
√√; <
$str
√√< m
"
√√m n
)
√√n o
;
√√o p
}
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
≈≈ 
private
«« 
async
«« 
Task
«« 
<
«« 
IResult
«« &
>
««& '(
ExecuteForExistingCategory
««( B
(
««B C
int
»» 

categoryId
»» 
,
»» 
Func
…… 
<
…… 
Category
…… 
,
…… 
Task
…… #
<
……# $
IResult
……$ +
>
……+ ,
>
……, -
	operation
……. 7
)
……7 8
{
   
var
ÀÀ 
category
ÀÀ 
=
ÀÀ 
await
ÀÀ $
_unitOfWork
ÀÀ% 0
.
ÀÀ0 1

Categories
ÀÀ1 ;
.
ÀÀ; <
GetAsync
ÀÀ< D
(
ÀÀD E
c
ÀÀE F
=>
ÀÀG I
c
ÀÀJ K
.
ÀÀK L
Id
ÀÀL N
==
ÀÀO Q

categoryId
ÀÀR \
)
ÀÀ\ ]
;
ÀÀ] ^
if
ÃÃ 
(
ÃÃ 
category
ÃÃ 
==
ÃÃ 
null
ÃÃ  $
)
ÃÃ$ %
{
ÕÕ 
return
ŒŒ 
new
ŒŒ 
Result
ŒŒ %
(
ŒŒ% &
ResultStatus
ŒŒ& 2
.
ŒŒ2 3
Error
ŒŒ3 8
,
ŒŒ8 9
message
ŒŒ: A
:
ŒŒA B
$str
ŒŒC `
)
ŒŒ` a
;
ŒŒa b
}
œœ 
return
—— 
await
—— 
	operation
—— &
(
——& '
category
——' /
)
——/ 0
;
——0 1
}
““ 
}
”” 	
}
‘‘ 
}’’ ”
kD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\AutoMapper\Profiles\CategoryProfile.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 

AutoMapper )
.) *
Profiles* 2
{ 
public 

class 
CategoryProfile  
:! "
Profile# *
{		 
public

 
CategoryProfile

 
(

 
)

  
{ 	
	CreateMap 
< 
CategoryAddDto $
,$ %
Category& .
>. /
(/ 0
)0 1
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
CreatedDate( 3
,3 4
opt5 8
=>9 ;
opt< ?
.? @
MapFrom@ G
(G H
xH I
=>J L
DateTimeM U
.U V
NowV Y
)Y Z
)Z [
;[ \
	CreateMap 
< 
CategoryUpdateDto '
,' (
Category) 1
>1 2
(2 3
)3 4
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
ModifiedDate( 4
,4 5
opt6 9
=>: <
opt= @
.@ A
MapFromA H
(H I
xI J
=>K M
DateTimeN V
.V W
NowW Z
)Z [
)[ \
;\ ]
} 	
} 
} ”
kD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\AutoMapper\Profiles\NewsPostProfile.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 

AutoMapper )
.) *
Profiles* 2
{ 
public 

class 
NewsPostProfile  
:! "
Profile# *
{		 
public

 
NewsPostProfile

 
(

 
)

  
{ 	
	CreateMap 
< 
NewsPostAddDto $
,$ %
NewsPost& .
>. /
(/ 0
)0 1
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
CreatedDate( 3
,3 4
opt5 8
=>9 ;
opt< ?
.? @
MapFrom@ G
(G H
xH I
=>J L
DateTimeM U
.U V
NowV Y
)Y Z
)Z [
;[ \
	CreateMap 
< 
NewsPostUpdateDto '
,' (
NewsPost) 1
>1 2
(2 3
)3 4
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
ModifiedDate( 4
,4 5
opt6 9
=>: <
opt= @
.@ A
MapFromA H
(H I
xI J
=>K M
DateTimeN V
.V W
NowW Z
)Z [
)[ \
;\ ]
} 	
} 
} »
aD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\Abstract\INewsPostService.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 
Abstract '
{ 
public 

	interface 
INewsPostService %
{ 
Task		 
<		 
IDataResult		 
<		 
NewsPostDto		 $
>		$ %
>		% &
Get		' *
(		* +
int		+ .

newsPostId		/ 9
)		9 :
;		: ;
Task

 
<

 
IDataResult

 
<

 
NewsPostListDto

 (
>

( )
>

) *
GetAll

+ 1
(

1 2
)

2 3
;

3 4
Task 
< 
IDataResult 
< 
NewsPostListDto (
>( )
>) *
GetAllByNonDeleted+ =
(= >
)> ?
;? @
Task 
< 
IDataResult 
< 
NewsPostListDto (
>( )
>) *
GetAllByCategory+ ;
(; <
int< ?

categoryId@ J
)J K
;K L
Task 
< 
IDataResult 
< 
NewsPostListDto (
>( )
>) *'
GetAllByNonDeletedAndActive+ F
(F G
)G H
;H I
Task 
< 
IResult 
> 
Add 
( 
NewsPostAddDto (
newsPostAddDto) 7
,7 8
string9 ?
createdByName@ M
)M N
;N O
Task 
< 
IResult 
> 
Update 
( 
NewsPostUpdateDto .
newsPostUpdateDto/ @
,@ A
stringB H
modifiedByNameI W
)W X
;X Y
Task 
< 
IResult 
> 
Delete 
( 
int  

newsPostId! +
,+ ,
string- 3
modifiedByName4 B
)B C
;C D
Task 
< 
IResult 
> 

HardDelete  
(  !
int! $

newsPostId% /
)/ 0
;0 1
} 
} à
aD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\Abstract\ILanguageService.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 
Abstract '
{ 
public 

	interface 
ILanguageService %
{ 
Task		 
<		 
IDataResult		 
<		 
LanguageDto		 $
>		$ %
>		% &
Get		' *
(		* +
int		+ .

languageId		/ 9
)		9 :
;		: ;
Task

 
<

 
IDataResult

 
<

 
LanguageListDto

 (
>

( )
>

) *
GetAll

+ 1
(

1 2
)

2 3
;

3 4
} 
} É
`D:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\Abstract\ICommentService.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 
Abstract '
{ 
public 

	interface 
ICommentService $
{ 
Task		 
<		 
IDataResult		 
<		 

CommentDto		 #
>		# $
>		$ %
Get		& )
(		) *
int		* -
	commentId		. 7
)		7 8
;		8 9
Task

 
<

 
IDataResult

 
<

 
CommentListDto

 '
>

' (
>

( )
GetAll

* 0
(

0 1
)

1 2
;

2 3
} 
} –
aD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Business\Abstract\ICategoryService.cs
	namespace 	
NewsWebsite
 
. 
Services 
. 
Abstract '
{ 
public 

	interface 
ICategoryService %
{ 
Task		 
<		 
IDataResult		 
<		 
CategoryDto		 $
>		$ %
>		% &
Get		' *
(		* +
int		+ .

categoryId		/ 9
)		9 :
;		: ;
Task

 
<

 
IDataResult

 
<

 
CategoryListDto

 (
>

( )
>

) *
GetAll

+ 1
(

1 2
)

2 3
;

3 4
Task 
< 
IDataResult 
< 
CategoryListDto (
>( )
>) *
GetAllByNonDeleted+ =
(= >
)> ?
;? @
Task 
< 
IDataResult 
< 
CategoryListDto (
>( )
>) *'
GetAllByNonDeletedAndActive+ F
(F G
)G H
;H I
Task 
< 
IResult 
> 
Add 
( 
CategoryAddDto (
categoryAddDto) 7
,7 8
string9 ?
createdByName@ M
)M N
;N O
Task 
< 
IResult 
> 
Update 
( 
CategoryUpdateDto .
categoryUpdateDto/ @
,@ A
stringB H
modifiedByNameI W
)W X
;X Y
Task 
< 
IResult 
> 
Delete 
( 
int  

categoryId! +
,+ ,
string- 3
modifiedByName4 B
)B C
;C D
Task 
< 
IResult 
> 

HardDelete  
(  !
int! $

categoryId% /
)/ 0
;0 1
} 
} 