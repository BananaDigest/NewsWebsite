ˆ
gD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Shared\Utilities\Results\Concrete\Result.cs
	namespace 	
NewsWebsite
 
. 
Shared 
. 
	Utilities &
.& '
Results' .
.. /
Concrete/ 7
{ 
public 

class 
Result 
: 
IResult !
{ 
public		 
Result		 
(		 
ResultStatus		 "
resultStatus		# /
)		/ 0
{

 	
ResultStatus 
= 
resultStatus '
;' (
} 	
public 
Result 
( 
ResultStatus "
resultStatus# /
,/ 0
string1 7
message8 ?
)? @
{ 	
ResultStatus 
= 
resultStatus '
;' (
Message 
= 
message 
; 
} 	
public 
Result 
( 
ResultStatus "
resultStatus# /
,/ 0
string1 7
message8 ?
,? @
	ExceptionA J
	exceptionK T
)T U
{ 	
ResultStatus 
= 
resultStatus '
;' (
Message 
= 
message 
; 
	Exception 
= 
	exception !
;! "
} 	
public 
ResultStatus 
ResultStatus (
{) *
get+ .
;. /
}0 1
public 
string 
Message 
{ 
get  #
;# $
}% &
public 
	Exception 
	Exception "
{# $
get% (
;( )
}* +
} 
} Ã
kD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Shared\Utilities\Results\Concrete\DataResult.cs
	namespace 	
NewsWebsite
 
. 
Shared 
. 
	Utilities &
.& '
Results' .
.. /
Concrete/ 7
{ 
public 

class 

DataResult 
< 
T 
> 
:  
IDataResult! ,
<, -
T- .
>. /
{ 
public		 

DataResult		 
(		 
ResultStatus		 &
resultStatus		' 3
,		3 4
T		5 6
data		7 ;
)		; <
{

 	
ResultStatus 
= 
resultStatus '
;' (
Data 
= 
data 
; 
} 	
public 

DataResult 
( 
ResultStatus &
resultStatus' 3
,3 4
string5 ;
message< C
,C D
TE F
dataG K
)K L
{ 	
ResultStatus 
= 
resultStatus '
;' (
Message 
= 
message 
; 
Data 
= 
data 
; 
} 	
public 

DataResult 
( 
ResultStatus &
resultStatus' 3
,3 4
string5 ;
message< C
,C D
TE F
dataG K
,K L
	ExceptionM V
	exceptionW `
)` a
{ 	
ResultStatus 
= 
resultStatus '
;' (
Message 
= 
message 
; 
Data 
= 
data 
; 
	Exception 
= 
	exception !
;! "
} 	
public 
ResultStatus 
ResultStatus (
{) *
get+ .
;. /
}0 1
public 
string 
Message 
{ 
get  #
;# $
}% &
public   
	Exception   
	Exception   "
{  # $
get  % (
;  ( )
}  * +
public!! 
T!! 
Data!! 
{!! 
get!! 
;!! 
}!! 
}"" 
}## ¯
qD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Shared\Utilities\Results\ComplexTypes\ResultStatus.cs
	namespace 	
NewsWebsite
 
. 
Shared 
. 
	Utilities &
.& '
Results' .
.. /
ComplexTypes/ ;
{ 
public 

enum 
ResultStatus 
{ 
Success 
= 
$num 
, 
Error 
= 
$num 
, 
Warning 
= 
$num 
, 
Info 
= 
$num 
}		 
}

 £
hD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Shared\Utilities\Results\Abstract\IResult.cs
	namespace 	
NewsWebsite
 
. 
Shared 
. 
	Utilities &
.& '
Results' .
.. /
Abstract/ 7
{ 
public 

	interface 
IResult 
{ 
public 
ResultStatus 
ResultStatus (
{) *
get+ .
;. /
}0 1
public		 
string		 
Message		 
{		 
get		  #
;		# $
}		% &
public

 
	Exception

 
	Exception

 "
{

# $
get

% (
;

( )
}

* +
} 
} ÿ
lD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Shared\Utilities\Results\Abstract\IDataResult.cs
	namespace 	
NewsWebsite
 
. 
Shared 
. 
	Utilities &
.& '
Results' .
.. /
Abstract/ 7
{ 
public 

	interface 
IDataResult  
<  !
out! $
T% &
>& '
:( )
IResult* 1
{ 
public 
T 
Data 
{ 
get 
; 
} 
} 
} ð
]D:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Shared\Entity\Abstract\IEntity.cs
	namespace 	
NewsWebsite
 
. 
Shared 
. 
Entity #
.# $
Abstract$ ,
{ 
public 

	interface 
IEntity 
{ 
} 
} Ò
`D:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Shared\Entity\Abstract\EntityBase.cs
	namespace 	
NewsWebsite
 
. 
Shared 
. 
Entity #
.# $
Abstract$ ,
{ 
public 

abstract 
class 

EntityBase $
{ 
public 
virtual 
int 
Id 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
DateTime 
CreatedDate  +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
DateTime< D
.D E
NowE H
;H I
public		 
virtual		 
DateTime		 
ModifiedDate		  ,
{		- .
get		/ 2
;		2 3
set		4 7
;		7 8
}		9 :
=		; <
DateTime		= E
.		E F
Now		F I
;		I J
public

 
virtual

 
bool

 
	IsDeleted

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
=

4 5
false

6 ;
;

; <
public 
virtual 
bool 
IsActive $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
true5 9
;9 :
public 
virtual 
string 
CreatedByName +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
$str< C
;C D
public 
virtual 
string 
ModifiedByName ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
$str= D
;D E
} 
} Ã
`D:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Shared\Entity\Abstract\DtoGetBase.cs
	namespace 	
NewsWebsite
 
. 
Shared 
. 
Entity #
.# $
Abstract$ ,
{ 
public 

abstract 
class 

DtoGetBase $
{ 
public 
virtual 
ResultStatus #
ResultStatus$ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} 
}		 É
eD:\Coding\NewsWebsite-master\NewsWebsite-master\NewsWebsite.Shared\Data\Abstract\IEntityRepository.cs
	namespace 	
NewsWebsite
 
. 
Shared 
. 
Data !
.! "
Abstract" *
{ 
public		 

	interface		 
IEntityRepository		 &
<		& '
T		' (
>		( )
where		* /
T		0 1
:		2 3
class		4 9
,		9 :
IEntity		; B
,		B C
new		D G
(		G H
)		H I
{

 
Task 
< 
T 
> 
GetAsync 
( 

Expression #
<# $
Func$ (
<( )
T) *
,* +
bool, 0
>0 1
>1 2
	predicate3 <
,< =
params> D

ExpressionE O
<O P
FuncP T
<T U
TU V
,V W
objectX ^
>^ _
>_ `
[` a
]a b
includePropertiesc t
)t u
;u v
Task 
< 
IList 
< 
T 
> 
> 
GetAllAsync "
(" #

Expression# -
<- .
Func. 2
<2 3
T3 4
,4 5
bool6 :
>: ;
>; <
	predicate= F
=G H
nullI M
,M N
params 

Expression 
< 
Func "
<" #
T# $
,$ %
object& ,
>, -
>- .
[. /
]/ 0
includeProperties1 B
)B C
;C D
Task 
AddAsync 
( 
T 
entity 
) 
;  
Task 
UpdateAsync 
( 
T 
entity !
)! "
;" #
Task 
DeleteAsync 
( 
T 
entity !
)! "
;" #
Task 
< 
bool 
> 
AnyAsync 
( 

Expression &
<& '
Func' +
<+ ,
T, -
,- .
bool/ 3
>3 4
>4 5
	predicate6 ?
)? @
;@ A
Task 
< 
int 
> 

CountAsync 
( 

Expression '
<' (
Func( ,
<, -
T- .
,. /
bool0 4
>4 5
>5 6
	predicate7 @
)@ A
;A B
} 
} 