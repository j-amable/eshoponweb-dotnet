Ì
p/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/PagedCatalogItemResponse.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public 
class $
PagedCatalogItemResponse %
{ 
public 

List 
< 
CatalogItem 
> 
CatalogItems )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
new: =
List> B
<B C
CatalogItemC N
>N O
(O P
)P Q
;Q R
public 

int 
	PageCount 
{ 
get 
; 
set  #
;# $
}% &
=' (
$num) *
;* +
}		 ›
b/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/LookupData.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public 
abstract 
class 

LookupData  
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
} ˚
d/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/ErrorDetails.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public 
class 
ErrorDetails 
{ 
public 

int 

StatusCode 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
Message 
{ 
get 
;  
set! $
;$ %
}& '
public		 

override		 
string		 
ToString		 #
(		# $
)		$ %
{

 
return 
JsonSerializer 
. 
	Serialize '
(' (
this( ,
), -
;- .
} 
} æ
o/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/EditCatalogItemResponse.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public 
class !
EditCatalogItemResult "
{ 
public 

CatalogItem 
CatalogItem "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
CatalogItem7 B
(B C
)C D
;D E
} Ñ
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/DeleteCatalogItemResponse.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public 
class %
DeleteCatalogItemResponse &
{ 
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
$str) 2
;2 3
} ƒ
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/CreateCatalogItemResponse.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public 
class %
CreateCatalogItemResponse &
{ 
public 

CatalogItem 
CatalogItem "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
new3 6
CatalogItem7 B
(B C
)C D
;D E
} ‰
k/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/CatalogTypeResponse.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public 
class 
CatalogTypeResponse  
:! "
ILookupDataResponse# 6
<6 7
CatalogType7 B
>B C
{ 
[

 
JsonPropertyName

 
(

 
$str

 $
)

$ %
]

% &
public 

List 
< 
CatalogType 
> 
List !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
new2 5
List6 :
<: ;
CatalogType; F
>F G
(G H
)H I
;I J
} ›
p/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/CreateCatalogItemRequest.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public 
class $
CreateCatalogItemRequest %
{ 
public 

int 
CatalogTypeId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 

int		 
CatalogBrandId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
[ 
Required 
( 
ErrorMessage 
= 
$str 9
)9 :
]: ;
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
=% &
string' -
.- .
Empty. 3
;3 4
[ 
Required 
( 
ErrorMessage 
= 
$str @
)@ A
]A B
public 

string 
Description 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 
RegularExpression 
( 
$str +
,+ ,
ErrorMessage- 9
=: ;
$str	< Ç
)
Ç É
]
É Ñ
[ 
Range 

(
 
$num 
, 
$num 
) 
] 
[ 
DataType 
( 
DataType 
. 
Currency 
)  
]  !
public 

decimal 
Price 
{ 
get 
; 
set  #
;# $
}% &
=' (
$num) *
;* +
public 

string 

PictureUri 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 

string 
PictureBase64 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public 

string 
PictureName 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
} »
c/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/CatalogType.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
[ 
Endpoint 	
(	 

Name
 
= 
$str  
)  !
]! "
public 
class 
CatalogType 
: 

LookupData %
{ 
} –7
c/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/CatalogItem.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public		 
class		 
CatalogItem		 
{

 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
public 

int 
CatalogTypeId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
CatalogType 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. 6
;6 7
public 

int 
CatalogBrandId 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
CatalogBrand 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$str/ 7
;7 8
[ 
Required 
( 
ErrorMessage 
= 
$str 9
)9 :
]: ;
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
[ 
Required 
( 
ErrorMessage 
= 
$str @
)@ A
]A B
public 

string 
Description 
{ 
get  #
;# $
set% (
;( )
}* +
[ 
RegularExpression 
( 
$str +
,+ ,
ErrorMessage- 9
=: ;
$str	< Ç
)
Ç É
]
É Ñ
[ 
Range 

(
 
$num 
, 
$num 
) 
] 
[ 
DataType 
( 
DataType 
. 
Currency 
)  
]  !
public 

decimal 
Price 
{ 
get 
; 
set  #
;# $
}% &
public 

string 

PictureUri 
{ 
get "
;" #
set$ '
;' (
}) *
public   

string   
PictureBase64   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public!! 

string!! 
PictureName!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
private## 
const## 
int## 
ImageMaximumBytes## '
=##( )
$num##* 0
;##0 1
public%% 

static%% 
string%% 
IsValidImage%% %
(%%% &
string%%& ,
pictureName%%- 8
,%%8 9
string%%: @
pictureBase64%%A N
)%%N O
{&& 
if'' 

('' 
string'' 
.'' 
IsNullOrEmpty''  
(''  !
pictureBase64''! .
)''. /
)''/ 0
{(( 	
return)) 
$str)) $
;))$ %
}** 	
var++ 
fileData++ 
=++ 
Convert++ 
.++ 
FromBase64String++ /
(++/ 0
pictureBase64++0 =
)++= >
;++> ?
if-- 

(-- 
fileData-- 
.-- 
Length-- 
<=-- 
$num--  
)--  !
{.. 	
return// 
$str// &
;//& '
}00 	
if22 

(22 
fileData22 
.22 
Length22 
>22 
ImageMaximumBytes22 /
)22/ 0
{33 	
return44 
$str44 ,
;44, -
}55 	
if77 

(77 
!77 
IsExtensionValid77 
(77 
pictureName77 )
)77) *
)77* +
{88 	
return99 
$str99 &
;99& '
}:: 	
return<< 
null<< 
;<< 
}== 
public?? 

static?? 
async?? 
Task?? 
<?? 
string?? #
>??# $
DataToBase64??% 1
(??1 2
IFileListEntry??2 @
fileItem??A I
)??I J
{@@ 
usingAA 
(AA 
varAA 
readerAA 
=AA 
newAA 
StreamReaderAA  ,
(AA, -
fileItemAA- 5
.AA5 6
DataAA6 :
)AA: ;
)AA; <
{BB 	
usingCC 
(CC 
varCC 
	memStreamCC  
=CC! "
newCC# &
MemoryStreamCC' 3
(CC3 4
)CC4 5
)CC5 6
{DD 
awaitEE 
readerEE 
.EE 

BaseStreamEE '
.EE' (
CopyToAsyncEE( 3
(EE3 4
	memStreamEE4 =
)EE= >
;EE> ?
varFF 
fileDataFF 
=FF 
	memStreamFF (
.FF( )
ToArrayFF) 0
(FF0 1
)FF1 2
;FF2 3
varGG 
encodedBase64GG !
=GG" #
ConvertGG$ +
.GG+ ,
ToBase64StringGG, :
(GG: ;
fileDataGG; C
)GGC D
;GGD E
returnII 
encodedBase64II $
;II$ %
}JJ 
}KK 	
}LL 
privateNN 
staticNN 
boolNN 
IsExtensionValidNN (
(NN( )
stringNN) /
fileNameNN0 8
)NN8 9
{OO 
varPP 
	extensionPP 
=PP 
PathPP 
.PP 
GetExtensionPP )
(PP) *
fileNamePP* 2
)PP2 3
;PP3 4
returnRR 
stringRR 
.RR 
EqualsRR 
(RR 
	extensionRR &
,RR& '
$strRR( .
,RR. /
StringComparisonRR0 @
.RR@ A
OrdinalIgnoreCaseRRA R
)RRR S
||RRT V
stringSS 
.SS 
EqualsSS 
(SS 
	extensionSS &
,SS& '
$strSS( .
,SS. /
StringComparisonSS0 @
.SS@ A
OrdinalIgnoreCaseSSA R
)SSR S
||SST V
stringTT 
.TT 
EqualsTT 
(TT 
	extensionTT &
,TT& '
$strTT( .
,TT. /
StringComparisonTT0 @
.TT@ A
OrdinalIgnoreCaseTTA R
)TTR S
||TTT V
stringUU 
.UU 
EqualsUU 
(UU 
	extensionUU &
,UU& '
$strUU( /
,UU/ 0
StringComparisonUU1 A
.UUA B
OrdinalIgnoreCaseUUB S
)UUS T
;UUT U
}VV 
}WW È
l/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/CatalogBrandResponse.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
public 
class  
CatalogBrandResponse !
:" #
ILookupDataResponse$ 7
<7 8
CatalogBrand8 D
>D E
{ 
[		 
JsonPropertyName		 
(		 
$str		 %
)		% &
]		& '
public

 

List

 
<

 
CatalogBrand

 
>

 
List

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
=

1 2
new

3 6
List

7 ;
<

; <
CatalogBrand

< H
>

H I
(

I J
)

J K
;

K L
}  
d/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Models/CatalogBrand.cs
	namespace 	
BlazorShared
 
. 
Models 
; 
[ 
Endpoint 	
(	 

Name
 
= 
$str !
)! "
]" #
public 
class 
CatalogBrand 
: 

LookupData &
{ 
} ˝
o/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Interfaces/ILookupDataResponse.cs
	namespace 	
BlazorShared
 
. 

Interfaces !
;! "
public 
	interface 
ILookupDataResponse $
<$ %
TLookupData% 0
>0 1
where2 7
TLookupData8 C
:D E

LookupDataF P
{ 
List 
< 	
TLookupData	 
> 
List 
{ 
get  
;  !
set" %
;% &
}' (
}		 à
u/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Interfaces/ICatalogLookupDataService.cs
	namespace 	
BlazorShared
 
. 

Interfaces !
;! "
public 
	interface %
ICatalogLookupDataService *
<* +
TLookupData+ 6
>6 7
where8 =
TLookupData> I
:J K

LookupDataL V
{ 
Task		 
<		 	
List			 
<		 
TLookupData		 
>		 
>		 
List		  
(		  !
)		! "
;		" #
}

 ´
o/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Interfaces/ICatalogItemService.cs
	namespace 	
BlazorShared
 
. 

Interfaces !
;! "
public 
	interface 
ICatalogItemService $
{ 
Task		 
<		 	
CatalogItem			 
>		 
Create		 
(		 $
CreateCatalogItemRequest		 5
catalogItem		6 A
)		A B
;		B C
Task

 
<

 	
CatalogItem

	 
>

 
Edit

 
(

 
CatalogItem

 &
catalogItem

' 2
)

2 3
;

3 4
Task 
< 	
string	 
> 
Delete 
( 
int 
id 
) 
;  
Task 
< 	
CatalogItem	 
> 
GetById 
( 
int !
id" $
)$ %
;% &
Task 
< 	
List	 
< 
CatalogItem 
> 
> 
	ListPaged %
(% &
int& )
pageSize* 2
)2 3
;3 4
Task 
< 	
List	 
< 
CatalogItem 
> 
> 
List  
(  !
)! "
;" #
} ¿
e/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/BaseUrlConfiguration.cs
	namespace 	
BlazorShared
 
; 
public 
class  
BaseUrlConfiguration !
{ 
public 

const 
string 
CONFIG_NAME #
=$ %
$str& 0
;0 1
public 

string 
ApiBase 
{ 
get 
;  
set! $
;$ %
}& '
public 

string 
WebBase 
{ 
get 
;  
set! $
;$ %
}& '
}		 ≈

g/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Authorization/UserInfo.cs
	namespace 	
BlazorShared
 
. 
Authorization $
;$ %
public 
class 
UserInfo 
{ 
public 

static 
readonly 
UserInfo #
	Anonymous$ -
=. /
new0 3
UserInfo4 <
(< =
)= >
;> ?
public 

bool 
IsAuthenticated 
{  !
get" %
;% &
set' *
;* +
}, -
public		 

string		 
NameClaimType		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 

string

 
RoleClaimType

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 

string 
Token 
{ 
get 
; 
set "
;" #
}$ %
public 

IEnumerable 
< 

ClaimValue !
>! "
Claims# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} Ø
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Authorization/Constants.cs
	namespace 	
BlazorShared
 
. 
Authorization $
;$ %
public 
static 
class 
	Constants 
{ 
public 

static 
class 
Roles 
{ 
public 
const 
string 
ADMINISTRATORS *
=+ ,
$str- =
;= >
} 
}		 ç
i/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Authorization/ClaimValue.cs
	namespace 	
BlazorShared
 
. 
Authorization $
;$ %
public 
class 

ClaimValue 
{ 
public 


ClaimValue 
( 
) 
{ 
} 
public		 


ClaimValue		 
(		 
string		 
type		 !
,		! "
string		# )
value		* /
)		/ 0
{

 
Type 
= 
type 
; 
Value 
= 
value 
; 
} 
public 

string 
Type 
{ 
get 
; 
set !
;! "
}# $
public 

string 
Value 
{ 
get 
; 
set "
;" #
}$ %
} 
m/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorShared/Attributes/EndpointAttribute.cs
	namespace 	
BlazorShared
 
. 

Attributes !
;! "
public 
class 
EndpointAttribute 
:  
	Attribute! *
{ 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
} 