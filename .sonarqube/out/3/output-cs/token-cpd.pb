÷
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Shared/CustomInputSelect.cs
	namespace 	
BlazorAdmin
 
. 
Shared 
; 
public

 
class

 
CustomInputSelect

 
<

 
TValue

 %
>

% &
:

' (
InputSelect

) 4
<

4 5
TValue

5 ;
>

; <
{ 
	protected 
override 
bool #
TryParseValueFromString 3
(3 4
string4 :
value; @
,@ A
outB E
TValueF L
resultM S
,S T
out 
string "
validationErrorMessage )
)) *
{ 
if 

( 
typeof 
( 
TValue 
) 
== 
typeof $
($ %
int% (
)( )
)) *
{ 	
if 
( 
int 
. 
TryParse 
( 
value "
," #
out$ '
var( +
	resultInt, 5
)5 6
)6 7
{ 
result 
= 
( 
TValue  
)  !
(! "
object" (
)( )
	resultInt) 2
;2 3"
validationErrorMessage &
=' (
null) -
;- .
return 
true 
; 
} 
else 
{ 
result 
= 
default  
;  !"
validationErrorMessage &
=' (
$" 
$str )
{) *
value* /
}/ 0
$str0 G
"G H
;H I
return 
false 
; 
} 
} 	
else 
{   	
return!! 
base!! 
.!! #
TryParseValueFromString!! /
(!!/ 0
value!!0 5
,!!5 6
out!!7 :
result!!; A
,!!A B
out"" "
validationErrorMessage"" *
)""* +
;""+ ,
}## 	
}$$ 
}%% Æ
e/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/ServicesConfiguration.cs
	namespace 	
BlazorAdmin
 
; 
public 
static 
class !
ServicesConfiguration )
{		 
public

 

static

 
IServiceCollection

 $
AddBlazorServices

% 6
(

6 7
this

7 ;
IServiceCollection

< N
services

O W
)

W X
{ 
services 
. 
	AddScoped 
< %
ICatalogLookupDataService 4
<4 5
CatalogBrand5 A
>A B
,B C3
'CachedCatalogLookupDataServiceDecoratorD k
<k l
CatalogBrandl x
,x y!
CatalogBrandResponse	z é
>
é è
>
è ê
(
ê ë
)
ë í
;
í ì
services 
. 
	AddScoped 
< $
CatalogLookupDataService 3
<3 4
CatalogBrand4 @
,@ A 
CatalogBrandResponseB V
>V W
>W X
(X Y
)Y Z
;Z [
services 
. 
	AddScoped 
< %
ICatalogLookupDataService 4
<4 5
CatalogType5 @
>@ A
,A B3
'CachedCatalogLookupDataServiceDecoratorC j
<j k
CatalogTypek v
,v w 
CatalogTypeResponse	x ã
>
ã å
>
å ç
(
ç é
)
é è
;
è ê
services 
. 
	AddScoped 
< $
CatalogLookupDataService 3
<3 4
CatalogType4 ?
,? @
CatalogTypeResponseA T
>T U
>U V
(V W
)W X
;X Y
services 
. 
	AddScoped 
< 
ICatalogItemService .
,. /-
!CachedCatalogItemServiceDecorator0 Q
>Q R
(R S
)S T
;T U
services 
. 
	AddScoped 
< 
CatalogItemService -
>- .
(. /
)/ 0
;0 1
return 
services 
; 
} 
} ®
e/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Services/ToastService.cs
	namespace 	
BlazorAdmin
 
. 
Services 
; 
public 
enum 

ToastLevel 
{ 
Info 
, 	
Success		 
,		 
Warning

 
,

 
Error 	
} 
public 
class 
ToastService 
: 
IDisposable '
{ 
public 

event 
Action 
< 
string 
, 

ToastLevel  *
>* +
OnShow, 2
;2 3
public 

event 
Action 
OnHide 
; 
private 
Timer 
	Countdown 
; 
public 

void 
	ShowToast 
( 
string  
message! (
,( )

ToastLevel* 4
level5 :
): ;
{ 
OnShow 
? 
. 
Invoke 
( 
message 
, 
level  %
)% &
;& '
StartCountdown 
( 
) 
; 
} 
private 
void 
StartCountdown 
(  
)  !
{ 
SetCountdown 
( 
) 
; 
if 

( 
	Countdown 
. 
Enabled 
) 
{ 	
	Countdown 
. 
Stop 
( 
) 
; 
	Countdown 
. 
Start 
( 
) 
; 
} 	
else   
{!! 	
	Countdown"" 
."" 
Start"" 
("" 
)"" 
;"" 
}## 	
}$$ 
private%% 
void%% 
SetCountdown%% 
(%% 
)%% 
{&& 
if'' 

('' 
	Countdown'' 
=='' 
null'' 
)'' 
{(( 	
	Countdown)) 
=)) 
new)) 
Timer)) !
())! "
$num))" &
)))& '
;))' (
	Countdown** 
.** 
Elapsed** 
+=**  
	HideToast**! *
;*** +
	Countdown++ 
.++ 
	AutoReset++ 
=++  !
false++" '
;++' (
},, 	
}-- 
private.. 
void.. 
	HideToast.. 
(.. 
object.. !
source.." (
,..( )
ElapsedEventArgs..* :
args..; ?
)..? @
{// 
OnHide00 
?00 
.00 
Invoke00 
(00 
)00 
;00 
}11 
public22 

void22 
Dispose22 
(22 
)22 
{33 
	Countdown44 
?44 
.44 
Dispose44 
(44 
)44 
;44 
}55 
}66 ºA
d/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Services/HttpService.cs
	namespace		 	
BlazorAdmin		
 
.		 
Services		 
;		 
public 
class 
HttpService 
{ 
private 
readonly 

HttpClient 
_httpClient  +
;+ ,
private 
readonly 
ToastService !
_toastService" /
;/ 0
private 
readonly 
string 
_apiUrl #
;# $
public 

HttpService 
( 

HttpClient !

httpClient" ,
,, -
IOptions. 6
<6 7 
BaseUrlConfiguration7 K
>K L 
baseUrlConfigurationM a
,a b
ToastServicec o
toastServicep |
)| }
{ 
_httpClient 
= 

httpClient  
;  !
_toastService 
= 
toastService $
;$ %
_apiUrl 
=  
baseUrlConfiguration &
.& '
Value' ,
., -
ApiBase- 4
;4 5
} 
public 

async 
Task 
< 
T 
> 
HttpGet  
<  !
T! "
>" #
(# $
string$ *
uri+ .
). /
where 
T 
: 
class 
{ 
var 
result 
= 
await 
_httpClient &
.& '
GetAsync' /
(/ 0
$"0 2
{2 3
_apiUrl3 :
}: ;
{; <
uri< ?
}? @
"@ A
)A B
;B C
if 

( 
! 
result 
. 
IsSuccessStatusCode '
)' (
{ 	
return 
null 
; 
}   	
return"" 
await"" #
FromHttpResponseMessage"" ,
<"", -
T""- .
>"". /
(""/ 0
result""0 6
)""6 7
;""7 8
}## 
public%% 

async%% 
Task%% 
<%% 
T%% 
>%% 

HttpDelete%% #
<%%# $
T%%$ %
>%%% &
(%%& '
string%%' -
uri%%. 1
,%%1 2
int%%3 6
id%%7 9
)%%9 :
where&& 
T&& 
:&& 
class&& 
{'' 
var(( 
result(( 
=(( 
await(( 
_httpClient(( &
.((& '
DeleteAsync((' 2
(((2 3
$"((3 5
{((5 6
_apiUrl((6 =
}((= >
{((> ?
uri((? B
}((B C
$str((C D
{((D E
id((E G
}((G H
"((H I
)((I J
;((J K
if)) 

()) 
!)) 
result)) 
.)) 
IsSuccessStatusCode)) '
)))' (
{** 	
return++ 
null++ 
;++ 
},, 	
return.. 
await.. #
FromHttpResponseMessage.. ,
<.., -
T..- .
>... /
(../ 0
result..0 6
)..6 7
;..7 8
}// 
public11 

async11 
Task11 
<11 
T11 
>11 
HttpPost11 !
<11! "
T11" #
>11# $
(11$ %
string11% +
uri11, /
,11/ 0
object111 7

dataToSend118 B
)11B C
where22 
T22 
:22 
class22 
{33 
var44 
content44 
=44 
ToJson44 
(44 

dataToSend44 '
)44' (
;44( )
var66 
result66 
=66 
await66 
_httpClient66 &
.66& '
	PostAsync66' 0
(660 1
$"661 3
{663 4
_apiUrl664 ;
}66; <
{66< =
uri66= @
}66@ A
"66A B
,66B C
content66D K
)66K L
;66L M
if77 

(77 
!77 
result77 
.77 
IsSuccessStatusCode77 '
)77' (
{88 	
var99 
	exception99 
=99 
JsonSerializer99 *
.99* +
Deserialize99+ 6
<996 7
ErrorDetails997 C
>99C D
(99D E
await99E J
result99K Q
.99Q R
Content99R Y
.99Y Z
ReadAsStringAsync99Z k
(99k l
)99l m
,99m n
new99o r"
JsonSerializerOptions	99s à
{:: '
PropertyNameCaseInsensitive;; +
=;;, -
true;;. 2
}<< 
)<< 
;<< 
_toastService== 
.== 
	ShowToast== #
(==# $
$"==$ &
$str==& .
{==. /
	exception==/ 8
.==8 9
Message==9 @
}==@ A
"==A B
,==B C

ToastLevel==D N
.==N O
Error==O T
)==T U
;==U V
return?? 
null?? 
;?? 
}@@ 	
returnBB 
awaitBB #
FromHttpResponseMessageBB ,
<BB, -
TBB- .
>BB. /
(BB/ 0
resultBB0 6
)BB6 7
;BB7 8
}CC 
publicEE 

asyncEE 
TaskEE 
<EE 
TEE 
>EE 
HttpPutEE  
<EE  !
TEE! "
>EE" #
(EE# $
stringEE$ *
uriEE+ .
,EE. /
objectEE0 6

dataToSendEE7 A
)EEA B
whereFF 
TFF 
:FF 
classFF 
{GG 
varHH 
contentHH 
=HH 
ToJsonHH 
(HH 

dataToSendHH '
)HH' (
;HH( )
varJJ 
resultJJ 
=JJ 
awaitJJ 
_httpClientJJ &
.JJ& '
PutAsyncJJ' /
(JJ/ 0
$"JJ0 2
{JJ2 3
_apiUrlJJ3 :
}JJ: ;
{JJ; <
uriJJ< ?
}JJ? @
"JJ@ A
,JJA B
contentJJC J
)JJJ K
;JJK L
ifKK 

(KK 
!KK 
resultKK 
.KK 
IsSuccessStatusCodeKK '
)KK' (
{LL 	
_toastServiceMM 
.MM 
	ShowToastMM #
(MM# $
$strMM$ +
,MM+ ,

ToastLevelMM- 7
.MM7 8
ErrorMM8 =
)MM= >
;MM> ?
returnNN 
nullNN 
;NN 
}OO 	
returnQQ 
awaitQQ #
FromHttpResponseMessageQQ ,
<QQ, -
TQQ- .
>QQ. /
(QQ/ 0
resultQQ0 6
)QQ6 7
;QQ7 8
}RR 
privateTT 
StringContentTT 
ToJsonTT  
(TT  !
objectTT! '
objTT( +
)TT+ ,
{UU 
returnVV 
newVV 
StringContentVV  
(VV  !
JsonSerializerVV! /
.VV/ 0
	SerializeVV0 9
(VV9 :
objVV: =
)VV= >
,VV> ?
EncodingVV@ H
.VVH I
UTF8VVI M
,VVM N
$strVVO a
)VVa b
;VVb c
}WW 
privateYY 
asyncYY 
TaskYY 
<YY 
TYY 
>YY #
FromHttpResponseMessageYY 1
<YY1 2
TYY2 3
>YY3 4
(YY4 5
HttpResponseMessageYY5 H
resultYYI O
)YYO P
{ZZ 
return[[ 
JsonSerializer[[ 
.[[ 
Deserialize[[ )
<[[) *
T[[* +
>[[+ ,
([[, -
await[[- 2
result[[3 9
.[[9 :
Content[[: A
.[[A B
ReadAsStringAsync[[B S
([[S T
)[[T U
,[[U V
new[[W Z!
JsonSerializerOptions[[[ p
{\\ 	'
PropertyNameCaseInsensitive]] '
=]]( )
true]]* .
}^^ 	
)^^	 

;^^
 
}__ 
}`` ·
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Services/CatalogLookupDataService.cs
	namespace 	
BlazorAdmin
 
. 
Services 
; 
public 
class $
CatalogLookupDataService %
<% &
TLookupData& 1
,1 2
TReponse3 ;
>; <
: %
ICatalogLookupDataService 
<  
TLookupData  +
>+ ,
where 	
TLookupData
 
: 

LookupData "
where 	
TReponse
 
: 
ILookupDataResponse (
<( )
TLookupData) 4
>4 5
{ 
private 
readonly 

HttpClient 
_httpClient  +
;+ ,
private 
readonly 
ILogger 
< $
CatalogLookupDataService 5
<5 6
TLookupData6 A
,A B
TReponseC K
>K L
>L M
_loggerN U
;U V
private 
readonly 
string 
_apiUrl #
;# $
public 
$
CatalogLookupDataService #
(# $

HttpClient$ .

httpClient/ 9
,9 :
IOptions 
<  
BaseUrlConfiguration %
>% & 
baseUrlConfiguration' ;
,; <
ILogger 
< $
CatalogLookupDataService (
<( )
TLookupData) 4
,4 5
TReponse6 >
>> ?
>? @
loggerA G
)G H
{ 
_httpClient 
= 

httpClient  
;  !
_logger 
= 
logger 
; 
_apiUrl   
=    
baseUrlConfiguration   &
.  & '
Value  ' ,
.  , -
ApiBase  - 4
;  4 5
}!! 
public## 

async## 
Task## 
<## 
List## 
<## 
TLookupData## &
>##& '
>##' (
List##) -
(##- .
)##. /
{$$ 
var%% 
endpointName%% 
=%% 
typeof%% !
(%%! "
TLookupData%%" -
)%%- .
.%%. /
GetCustomAttribute%%/ A
<%%A B
EndpointAttribute%%B S
>%%S T
(%%T U
)%%U V
.%%V W
Name%%W [
;%%[ \
_logger&& 
.&& 
LogInformation&& 
(&& 
$"&& !
$str&&! *
{&&* +
typeof&&+ 1
(&&1 2
TLookupData&&2 =
)&&= >
.&&> ?
Name&&? C
}&&C D
$str&&D Y
{&&Y Z
endpointName&&Z f
}&&f g
"&&g h
)&&h i
;&&i j
var(( 
response(( 
=(( 
await(( 
_httpClient(( (
.((( )
GetFromJsonAsync(() 9
<((9 :
TReponse((: B
>((B C
(((C D
$"((D F
{((F G
_apiUrl((G N
}((N O
{((O P
endpointName((P \
}((\ ]
"((] ^
)((^ _
;((_ `
return)) 
response)) 
.)) 
List)) 
;)) 
}** 
}++ òX
k/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Services/CatalogItemService.cs
	namespace		 	
BlazorAdmin		
 
.		 
Services		 
;		 
public 
class 
CatalogItemService 
:  !
ICatalogItemService" 5
{ 
private 
readonly %
ICatalogLookupDataService .
<. /
CatalogBrand/ ;
>; <
_brandService= J
;J K
private 
readonly %
ICatalogLookupDataService .
<. /
CatalogType/ :
>: ;
_typeService< H
;H I
private 
readonly 
HttpService  
_httpService! -
;- .
private 
readonly 
ILogger 
< 
CatalogItemService /
>/ 0
_logger1 8
;8 9
public 

CatalogItemService 
( %
ICatalogLookupDataService 7
<7 8
CatalogBrand8 D
>D E
brandServiceF R
,R S%
ICatalogLookupDataService !
<! "
CatalogType" -
>- .
typeService/ :
,: ;
HttpService 
httpService 
,  
ILogger 
< 
CatalogItemService "
>" #
logger$ *
)* +
{ 
_brandService 
= 
brandService $
;$ %
_typeService 
= 
typeService "
;" #
_httpService 
= 
httpService "
;" #
_logger 
= 
logger 
; 
} 
public 

async 
Task 
< 
CatalogItem !
>! "
Create# )
() *$
CreateCatalogItemRequest* B
catalogItemC N
)N O
{ 
var 
response 
= 
await 
_httpService )
.) *
HttpPost* 2
<2 3%
CreateCatalogItemResponse3 L
>L M
(M N
$strN ]
,] ^
catalogItem_ j
)j k
;k l
return   
response   
?   
.   
CatalogItem   $
;  $ %
}!! 
public## 

async## 
Task## 
<## 
CatalogItem## !
>##! "
Edit### '
(##' (
CatalogItem##( 3
catalogItem##4 ?
)##? @
{$$ 
return%% 
(%% 
await%% 
_httpService%% "
.%%" #
HttpPut%%# *
<%%* +!
EditCatalogItemResult%%+ @
>%%@ A
(%%A B
$str%%B Q
,%%Q R
catalogItem%%S ^
)%%^ _
)%%_ `
.%%` a
CatalogItem%%a l
;%%l m
}&& 
public(( 

async(( 
Task(( 
<(( 
string(( 
>(( 
Delete(( $
((($ %
int((% (
catalogItemId(() 6
)((6 7
{)) 
return** 
(** 
await** 
_httpService** "
.**" #

HttpDelete**# -
<**- .%
DeleteCatalogItemResponse**. G
>**G H
(**H I
$str**I X
,**X Y
catalogItemId**Z g
)**g h
)**h i
.**i j
Status**j p
;**p q
}++ 
public-- 

async-- 
Task-- 
<-- 
CatalogItem-- !
>--! "
GetById--# *
(--* +
int--+ .
id--/ 1
)--1 2
{.. 
var// 
brandListTask// 
=// 
_brandService// )
.//) *
List//* .
(//. /
)/// 0
;//0 1
var00 
typeListTask00 
=00 
_typeService00 '
.00' (
List00( ,
(00, -
)00- .
;00. /
var11 
itemGetTask11 
=11 
_httpService11 &
.11& '
HttpGet11' .
<11. /!
EditCatalogItemResult11/ D
>11D E
(11E F
$"11F H
$str11H V
{11V W
id11W Y
}11Y Z
"11Z [
)11[ \
;11\ ]
await22 
Task22 
.22 
WhenAll22 
(22 
brandListTask22 (
,22( )
typeListTask22* 6
,226 7
itemGetTask228 C
)22C D
;22D E
var33 
brands33 
=33 
brandListTask33 "
.33" #
Result33# )
;33) *
var44 
types44 
=44 
typeListTask44  
.44  !
Result44! '
;44' (
var55 
catalogItem55 
=55 
itemGetTask55 %
.55% &
Result55& ,
.55, -
CatalogItem55- 8
;558 9
catalogItem66 
.66 
CatalogBrand66  
=66! "
brands66# )
.66) *
FirstOrDefault66* 8
(668 9
b669 :
=>66; =
b66> ?
.66? @
Id66@ B
==66C E
catalogItem66F Q
.66Q R
CatalogBrandId66R `
)66` a
?66a b
.66b c
Name66c g
;66g h
catalogItem77 
.77 
CatalogType77 
=77  !
types77" '
.77' (
FirstOrDefault77( 6
(776 7
t777 8
=>779 ;
t77< =
.77= >
Id77> @
==77A C
catalogItem77D O
.77O P
CatalogTypeId77P ]
)77] ^
?77^ _
.77_ `
Name77` d
;77d e
return88 
catalogItem88 
;88 
}99 
public;; 

async;; 
Task;; 
<;; 
List;; 
<;; 
CatalogItem;; &
>;;& '
>;;' (
	ListPaged;;) 2
(;;2 3
int;;3 6
pageSize;;7 ?
);;? @
{<< 
_logger== 
.== 
LogInformation== 
(== 
$str== A
)==A B
;==B C
var?? 
brandListTask?? 
=?? 
_brandService?? )
.??) *
List??* .
(??. /
)??/ 0
;??0 1
var@@ 
typeListTask@@ 
=@@ 
_typeService@@ '
.@@' (
List@@( ,
(@@, -
)@@- .
;@@. /
varAA 
itemListTaskAA 
=AA 
_httpServiceAA '
.AA' (
HttpGetAA( /
<AA/ 0$
PagedCatalogItemResponseAA0 H
>AAH I
(AAI J
$"AAJ L
$strAAL e
"AAe f
)AAf g
;AAg h
awaitBB 
TaskBB 
.BB 
WhenAllBB 
(BB 
brandListTaskBB (
,BB( )
typeListTaskBB* 6
,BB6 7
itemListTaskBB8 D
)BBD E
;BBE F
varCC 
brandsCC 
=CC 
brandListTaskCC "
.CC" #
ResultCC# )
;CC) *
varDD 
typesDD 
=DD 
typeListTaskDD  
.DD  !
ResultDD! '
;DD' (
varEE 
itemsEE 
=EE 
itemListTaskEE  
.EE  !
ResultEE! '
.EE' (
CatalogItemsEE( 4
;EE4 5
foreachFF 
(FF 
varFF 
itemFF 
inFF 
itemsFF "
)FF" #
{GG 	
itemHH 
.HH 
CatalogBrandHH 
=HH 
brandsHH  &
.HH& '
FirstOrDefaultHH' 5
(HH5 6
bHH6 7
=>HH8 :
bHH; <
.HH< =
IdHH= ?
==HH@ B
itemHHC G
.HHG H
CatalogBrandIdHHH V
)HHV W
?HHW X
.HHX Y
NameHHY ]
;HH] ^
itemII 
.II 
CatalogTypeII 
=II 
typesII $
.II$ %
FirstOrDefaultII% 3
(II3 4
tII4 5
=>II6 8
tII9 :
.II: ;
IdII; =
==II> @
itemIIA E
.IIE F
CatalogTypeIdIIF S
)IIS T
?IIT U
.IIU V
NameIIV Z
;IIZ [
}JJ 	
returnKK 
itemsKK 
;KK 
}LL 
publicNN 

asyncNN 
TaskNN 
<NN 
ListNN 
<NN 
CatalogItemNN &
>NN& '
>NN' (
ListNN) -
(NN- .
)NN. /
{OO 
_loggerPP 
.PP 
LogInformationPP 
(PP 
$strPP A
)PPA B
;PPB C
varRR 
brandListTaskRR 
=RR 
_brandServiceRR )
.RR) *
ListRR* .
(RR. /
)RR/ 0
;RR0 1
varSS 
typeListTaskSS 
=SS 
_typeServiceSS '
.SS' (
ListSS( ,
(SS, -
)SS- .
;SS. /
varTT 
itemListTaskTT 
=TT 
_httpServiceTT '
.TT' (
HttpGetTT( /
<TT/ 0$
PagedCatalogItemResponseTT0 H
>TTH I
(TTI J
$"TTJ L
$strTTL Y
"TTY Z
)TTZ [
;TT[ \
awaitUU 
TaskUU 
.UU 
WhenAllUU 
(UU 
brandListTaskUU (
,UU( )
typeListTaskUU* 6
,UU6 7
itemListTaskUU8 D
)UUD E
;UUE F
varVV 
brandsVV 
=VV 
brandListTaskVV "
.VV" #
ResultVV# )
;VV) *
varWW 
typesWW 
=WW 
typeListTaskWW  
.WW  !
ResultWW! '
;WW' (
varXX 
itemsXX 
=XX 
itemListTaskXX  
.XX  !
ResultXX! '
.XX' (
CatalogItemsXX( 4
;XX4 5
foreachYY 
(YY 
varYY 
itemYY 
inYY 
itemsYY "
)YY" #
{ZZ 	
item[[ 
.[[ 
CatalogBrand[[ 
=[[ 
brands[[  &
.[[& '
FirstOrDefault[[' 5
([[5 6
b[[6 7
=>[[8 :
b[[; <
.[[< =
Id[[= ?
==[[@ B
item[[C G
.[[G H
CatalogBrandId[[H V
)[[V W
?[[W X
.[[X Y
Name[[Y ]
;[[] ^
item\\ 
.\\ 
CatalogType\\ 
=\\ 
types\\ $
.\\$ %
FirstOrDefault\\% 3
(\\3 4
t\\4 5
=>\\6 8
t\\9 :
.\\: ;
Id\\; =
==\\> @
item\\A E
.\\E F
CatalogTypeId\\F S
)\\S T
?\\T U
.\\U V
Name\\V Z
;\\Z [
}]] 	
return^^ 
items^^ 
;^^ 
}__ 
}`` ã
c/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Services/CacheEntry.cs
	namespace 	
BlazorAdmin
 
. 
Services 
; 
public 
class 

CacheEntry 
< 
T 
> 
{ 
public 


CacheEntry 
( 
T 
item 
) 
{ 
Value		 
=		 
item		 
;		 
}

 
public 


CacheEntry 
( 
) 
{ 
} 
public 

T 
Value 
{ 
get 
; 
set 
; 
}  
public 

DateTime 
DateCreated 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
DateTime0 8
.8 9
UtcNow9 ?
;? @
} ö&
Å/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Services/CachedCatalogLookupDataServiceDecorator .cs
	namespace		 	
BlazorAdmin		
 
.		 
Services		 
;		 
public 
class 3
'CachedCatalogLookupDataServiceDecorator 4
<4 5
TLookupData5 @
,@ A
TReponseB J
>J K
: %
ICatalogLookupDataService 
<  
TLookupData  +
>+ ,
where 	
TLookupData
 
: 

LookupData "
where 	
TReponse
 
: 
ILookupDataResponse (
<( )
TLookupData) 4
>4 5
{ 
private 
readonly  
ILocalStorageService ) 
_localStorageService* >
;> ?
private 
readonly $
CatalogLookupDataService -
<- .
TLookupData. 9
,9 :
TReponse; C
>C D
_catalogTypeServiceE X
;X Y
private 
ILogger 
< 3
'CachedCatalogLookupDataServiceDecorator ;
<; <
TLookupData< G
,G H
TReponseI Q
>Q R
>R S
_loggerT [
;[ \
public 
3
'CachedCatalogLookupDataServiceDecorator 2
(2 3 
ILocalStorageService3 G
localStorageServiceH [
,[ \$
CatalogLookupDataService  
<  !
TLookupData! ,
,, -
TReponse. 6
>6 7
catalogTypeService8 J
,J K
ILogger 
< 3
'CachedCatalogLookupDataServiceDecorator 7
<7 8
TLookupData8 C
,C D
TReponseE M
>M N
>N O
loggerP V
)V W
{  
_localStorageService 
= 
localStorageService 2
;2 3
_catalogTypeService 
= 
catalogTypeService 0
;0 1
_logger 
= 
logger 
; 
} 
public 

async 
Task 
< 
List 
< 
TLookupData &
>& '
>' (
List) -
(- .
). /
{ 
string 
key 
= 
typeof 
( 
TLookupData '
)' (
.( )
Name) -
;- .
var   

cacheEntry   
=   
await    
_localStorageService   3
.  3 4
GetItemAsync  4 @
<  @ A

CacheEntry  A K
<  K L
List  L P
<  P Q
TLookupData  Q \
>  \ ]
>  ] ^
>  ^ _
(  _ `
key  ` c
)  c d
;  d e
if!! 

(!! 

cacheEntry!! 
!=!! 
null!! 
)!! 
{"" 	
_logger## 
.## 
LogInformation## "
(##" #
$"### %
$str##% -
{##- .
key##. 1
}##1 2
$str##2 F
"##F G
)##G H
;##H I
if$$ 
($$ 

cacheEntry$$ 
.$$ 
DateCreated$$ &
.$$& '

AddMinutes$$' 1
($$1 2
$num$$2 3
)$$3 4
>$$5 6
DateTime$$7 ?
.$$? @
UtcNow$$@ F
)$$F G
{%% 
return&& 

cacheEntry&& !
.&&! "
Value&&" '
;&&' (
}'' 
else(( 
{)) 
_logger** 
.** 
LogInformation** &
(**& '
$"**' )
$str**) A
{**A B
key**B E
}**E F
$str**F Z
"**Z [
)**[ \
;**\ ]
await++  
_localStorageService++ *
.++* +
RemoveItemAsync+++ :
(++: ;
key++; >
)++> ?
;++? @
},, 
}-- 	
var// 
types// 
=// 
await// 
_catalogTypeService// -
.//- .
List//. 2
(//2 3
)//3 4
;//4 5
var00 
entry00 
=00 
new00 

CacheEntry00 "
<00" #
List00# '
<00' (
TLookupData00( 3
>003 4
>004 5
(005 6
types006 ;
)00; <
;00< =
await11  
_localStorageService11 "
.11" #
SetItemAsync11# /
(11/ 0
key110 3
,113 4
entry115 :
)11: ;
;11; <
return22 
types22 
;22 
}33 
}44 “L
z/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Services/CachedCatalogItemServiceDecorator.cs
	namespace

 	
BlazorAdmin


 
.

 
Services

 
;

 
public 
class -
!CachedCatalogItemServiceDecorator .
:/ 0
ICatalogItemService1 D
{ 
private 
readonly  
ILocalStorageService ) 
_localStorageService* >
;> ?
private 
readonly 
CatalogItemService '
_catalogItemService( ;
;; <
private 
ILogger 
< -
!CachedCatalogItemServiceDecorator 5
>5 6
_logger7 >
;> ?
public 
-
!CachedCatalogItemServiceDecorator ,
(, - 
ILocalStorageService- A
localStorageServiceB U
,U V
CatalogItemService 
catalogItemService -
,- .
ILogger 
< -
!CachedCatalogItemServiceDecorator 1
>1 2
logger3 9
)9 :
{  
_localStorageService 
= 
localStorageService 2
;2 3
_catalogItemService 
= 
catalogItemService 0
;0 1
_logger 
= 
logger 
; 
} 
public 

async 
Task 
< 
List 
< 
CatalogItem &
>& '
>' (
	ListPaged) 2
(2 3
int3 6
pageSize7 ?
)? @
{ 
string 
key 
= 
$str 
; 
var 

cacheEntry 
= 
await  
_localStorageService 3
.3 4
GetItemAsync4 @
<@ A

CacheEntryA K
<K L
ListL P
<P Q
CatalogItemQ \
>\ ]
>] ^
>^ _
(_ `
key` c
)c d
;d e
if 

( 

cacheEntry 
!= 
null 
) 
{   	
_logger!! 
.!! 
LogInformation!! "
(!!" #
$str!!# F
)!!F G
;!!G H
if"" 
("" 

cacheEntry"" 
."" 
DateCreated"" &
.""& '

AddMinutes""' 1
(""1 2
$num""2 3
)""3 4
>""5 6
DateTime""7 ?
.""? @
UtcNow""@ F
)""F G
{## 
return$$ 

cacheEntry$$ !
.$$! "
Value$$" '
;$$' (
}%% 
else&& 
{'' 
_logger(( 
.(( 
LogInformation(( &
(((& '
$"((' )
$str(() 1
{((1 2
key((2 5
}((5 6
$str((6 J
"((J K
)((K L
;((L M
await))  
_localStorageService)) *
.))* +
RemoveItemAsync))+ :
()): ;
key)); >
)))> ?
;))? @
}** 
}++ 	
var-- 
items-- 
=-- 
await-- 
_catalogItemService-- -
.--- .
	ListPaged--. 7
(--7 8
pageSize--8 @
)--@ A
;--A B
var.. 
entry.. 
=.. 
new.. 

CacheEntry.. "
<.." #
List..# '
<..' (
CatalogItem..( 3
>..3 4
>..4 5
(..5 6
items..6 ;
)..; <
;..< =
await//  
_localStorageService// "
.//" #
SetItemAsync//# /
(/// 0
key//0 3
,//3 4
entry//5 :
)//: ;
;//; <
return00 
items00 
;00 
}11 
public33 

async33 
Task33 
<33 
List33 
<33 
CatalogItem33 &
>33& '
>33' (
List33) -
(33- .
)33. /
{44 
string55 
key55 
=55 
$str55 
;55 
var66 

cacheEntry66 
=66 
await66  
_localStorageService66 3
.663 4
GetItemAsync664 @
<66@ A

CacheEntry66A K
<66K L
List66L P
<66P Q
CatalogItem66Q \
>66\ ]
>66] ^
>66^ _
(66_ `
key66` c
)66c d
;66d e
if77 

(77 

cacheEntry77 
!=77 
null77 
)77 
{88 	
_logger99 
.99 
LogInformation99 "
(99" #
$str99# F
)99F G
;99G H
if:: 
(:: 

cacheEntry:: 
.:: 
DateCreated:: &
.::& '

AddMinutes::' 1
(::1 2
$num::2 3
)::3 4
>::5 6
DateTime::7 ?
.::? @
UtcNow::@ F
)::F G
{;; 
return<< 

cacheEntry<< !
.<<! "
Value<<" '
;<<' (
}== 
else>> 
{?? 
_logger@@ 
.@@ 
LogInformation@@ &
(@@& '
$"@@' )
$str@@) 1
{@@1 2
key@@2 5
}@@5 6
$str@@6 J
"@@J K
)@@K L
;@@L M
awaitAA  
_localStorageServiceAA *
.AA* +
RemoveItemAsyncAA+ :
(AA: ;
keyAA; >
)AA> ?
;AA? @
}BB 
}CC 	
varEE 
itemsEE 
=EE 
awaitEE 
_catalogItemServiceEE -
.EE- .
ListEE. 2
(EE2 3
)EE3 4
;EE4 5
varFF 
entryFF 
=FF 
newFF 

CacheEntryFF "
<FF" #
ListFF# '
<FF' (
CatalogItemFF( 3
>FF3 4
>FF4 5
(FF5 6
itemsFF6 ;
)FF; <
;FF< =
awaitGG  
_localStorageServiceGG "
.GG" #
SetItemAsyncGG# /
(GG/ 0
keyGG0 3
,GG3 4
entryGG5 :
)GG: ;
;GG; <
returnHH 
itemsHH 
;HH 
}II 
publicKK 

asyncKK 
TaskKK 
<KK 
CatalogItemKK !
>KK! "
GetByIdKK# *
(KK* +
intKK+ .
idKK/ 1
)KK1 2
{LL 
returnMM 
(MM 
awaitMM 
ListMM 
(MM 
)MM 
)MM 
.MM 
FirstOrDefaultMM ,
(MM, -
xMM- .
=>MM/ 1
xMM2 3
.MM3 4
IdMM4 6
==MM7 9
idMM: <
)MM< =
;MM= >
}NN 
publicPP 

asyncPP 
TaskPP 
<PP 
CatalogItemPP !
>PP! "
CreatePP# )
(PP) *$
CreateCatalogItemRequestPP* B
catalogItemPPC N
)PPN O
{QQ 
varRR 
resultRR 
=RR 
awaitRR 
_catalogItemServiceRR .
.RR. /
CreateRR/ 5
(RR5 6
catalogItemRR6 A
)RRA B
;RRB C
awaitSS #
RefreshLocalStorageListSS %
(SS% &
)SS& '
;SS' (
returnUU 
resultUU 
;UU 
}VV 
publicXX 

asyncXX 
TaskXX 
<XX 
CatalogItemXX !
>XX! "
EditXX# '
(XX' (
CatalogItemXX( 3
catalogItemXX4 ?
)XX? @
{YY 
varZZ 
resultZZ 
=ZZ 
awaitZZ 
_catalogItemServiceZZ .
.ZZ. /
EditZZ/ 3
(ZZ3 4
catalogItemZZ4 ?
)ZZ? @
;ZZ@ A
await[[ #
RefreshLocalStorageList[[ %
([[% &
)[[& '
;[[' (
return]] 
result]] 
;]] 
}^^ 
public`` 

async`` 
Task`` 
<`` 
string`` 
>`` 
Delete`` $
(``$ %
int``% (
id``) +
)``+ ,
{aa 
varbb 
resultbb 
=bb 
awaitbb 
_catalogItemServicebb .
.bb. /
Deletebb/ 5
(bb5 6
idbb6 8
)bb8 9
;bb9 :
awaitcc #
RefreshLocalStorageListcc %
(cc% &
)cc& '
;cc' (
returnee 
resultee 
;ee 
}ff 
privatehh 
asynchh 
Taskhh #
RefreshLocalStorageListhh .
(hh. /
)hh/ 0
{ii 
stringjj 
keyjj 
=jj 
$strjj 
;jj 
awaitll  
_localStorageServicell "
.ll" #
RemoveItemAsyncll# 2
(ll2 3
keyll3 6
)ll6 7
;ll7 8
varmm 
itemsmm 
=mm 
awaitmm 
_catalogItemServicemm -
.mm- .
Listmm. 2
(mm2 3
)mm3 4
;mm4 5
varnn 
entrynn 
=nn 
newnn 

CacheEntrynn "
<nn" #
Listnn# '
<nn' (
CatalogItemnn( 3
>nn3 4
>nn4 5
(nn5 6
itemsnn6 ;
)nn; <
;nn< =
awaitoo  
_localStorageServiceoo "
.oo" #
SetItemAsyncoo# /
(oo/ 0
keyoo0 3
,oo3 4
entryoo5 :
)oo: ;
;oo; <
}pp 
}qq Ã&
W/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Program.cs
var 
builder 
= "
WebAssemblyHostBuilder $
.$ %
CreateDefault% 2
(2 3
args3 7
)7 8
;8 9
builder 
. 
RootComponents 
. 
Add 
< 
App 
> 
(  
$str  (
)( )
;) *
builder 
. 
RootComponents 
. 
Add 
< 

HeadOutlet %
>% &
(& '
$str' 4
)4 5
;5 6
var 
configSection 
= 
builder 
. 
Configuration )
.) *
GetRequiredSection* <
(< = 
BaseUrlConfiguration= Q
.Q R
CONFIG_NAMER ]
)] ^
;^ _
builder 
. 
Services 
. 
	Configure 
<  
BaseUrlConfiguration /
>/ 0
(0 1
configSection1 >
)> ?
;? @
builder 
. 
Services 
. 
	AddScoped 
( 
sp 
=>  
new! $

HttpClient% /
(/ 0
)0 1
{2 3
BaseAddress4 ?
=@ A
newB E
UriF I
(I J
builderJ Q
.Q R
HostEnvironmentR a
.a b
BaseAddressb m
)m n
}o p
)p q
;q r
builder 
. 
Services 
. 
	AddScoped 
< 
ToastService '
>' (
(( )
)) *
;* +
builder 
. 
Services 
. 
	AddScoped 
< 
HttpService &
>& '
(' (
)( )
;) *
builder 
. 
Services 
. #
AddBlazoredLocalStorage (
(( )
)) *
;* +
builder 
. 
Services 
.  
AddAuthorizationCore %
(% &
)& '
;' (
builder 
. 
Services 
. 
	AddScoped 
< '
AuthenticationStateProvider 6
,6 7#
CustomAuthStateProvider8 O
>O P
(P Q
)Q R
;R S
builder   
.   
Services   
.   
	AddScoped   
(   
sp   
=>    
(  ! "#
CustomAuthStateProvider  " 9
)  9 :
sp  : <
.  < =
GetRequiredService  = O
<  O P'
AuthenticationStateProvider  P k
>  k l
(  l m
)  m n
)  n o
;  o p
builder"" 
."" 
Services"" 
."" 
AddBlazorServices"" "
(""" #
)""# $
;""$ %
builder$$ 
.$$ 
Logging$$ 
.$$ 
AddConfiguration$$  
($$  !
builder$$! (
.$$( )
Configuration$$) 6
.$$6 7
GetRequiredSection$$7 I
($$I J
$str$$J S
)$$S T
)$$T U
;$$U V
await&& "
ClearLocalStorageCache&& 
(&& 
builder&& $
.&&$ %
Services&&% -
)&&- .
;&&. /
await(( 
builder(( 
.(( 
Build(( 
((( 
)(( 
.(( 
RunAsync(( 
((( 
)((  
;((  !
static** 
async** 
Task** "
ClearLocalStorageCache** (
(**( )
IServiceCollection**) ;
services**< D
)**D E
{++ 
var,, 
sp,, 

=,, 
services,, 
.,,  
BuildServiceProvider,, *
(,,* +
),,+ ,
;,,, -
var-- 
localStorageService-- 
=-- 
sp--  
.--  !
GetRequiredService--! 3
<--3 4 
ILocalStorageService--4 H
>--H I
(--I J
)--J K
;--K L
await// 	
localStorageService//
 
.// 
RemoveItemAsync// -
(//- .
typeof//. 4
(//4 5
CatalogBrand//5 A
)//A B
.//B C
Name//C G
)//G H
;//H I
await00 	
localStorageService00
 
.00 
RemoveItemAsync00 -
(00- .
typeof00. 4
(004 5
CatalogType005 @
)00@ A
.00A B
Name00B F
)00F G
;00G H
}11 ≈,
p/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Pages/CatalogItemPage/List.razor.cs
	namespace 	
BlazorAdmin
 
. 
Pages 
. 
CatalogItemPage +
;+ ,
public		 
partial		 
class		 
List		 
:		 
BlazorComponent		 +
{

 
[ 
	Microsoft 
. 

AspNetCore 
. 

Components $
.$ %
Inject% +
]+ ,
public 

ICatalogItemService 
CatalogItemService 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
[ 
	Microsoft 
. 

AspNetCore 
. 

Components $
.$ %
Inject% +
]+ ,
public 
%
ICatalogLookupDataService $
<$ %
CatalogBrand% 1
>1 2
CatalogBrandService3 F
{G H
getI L
;L M
setN Q
;Q R
}S T
[ 
	Microsoft 
. 

AspNetCore 
. 

Components $
.$ %
Inject% +
]+ ,
public 
%
ICatalogLookupDataService $
<$ %
CatalogType% 0
>0 1
CatalogTypeService2 D
{E F
getG J
;J K
setL O
;O P
}Q R
private 
List 
< 
CatalogItem 
> 
catalogItems *
=+ ,
new- 0
List1 5
<5 6
CatalogItem6 A
>A B
(B C
)C D
;D E
private 
List 
< 
CatalogType 
> 
catalogTypes *
=+ ,
new- 0
List1 5
<5 6
CatalogType6 A
>A B
(B C
)C D
;D E
private 
List 
< 
CatalogBrand 
> 
catalogBrands ,
=- .
new/ 2
List3 7
<7 8
CatalogBrand8 D
>D E
(E F
)F G
;G H
private 
Edit 
EditComponent 
{  
get! $
;$ %
set& )
;) *
}+ ,
private 
Delete 
DeleteComponent "
{# $
get% (
;( )
set* -
;- .
}/ 0
private 
Details 
DetailsComponent $
{% &
get' *
;* +
set, /
;/ 0
}1 2
private 
Create 
CreateComponent "
{# $
get% (
;( )
set* -
;- .
}/ 0
	protected 
override 
async 
Task !
OnAfterRenderAsync" 4
(4 5
bool5 9
firstRender: E
)E F
{ 
if 

( 
firstRender 
) 
{   	
catalogItems!! 
=!! 
await!!  
CatalogItemService!!! 3
.!!3 4
List!!4 8
(!!8 9
)!!9 :
;!!: ;
catalogTypes"" 
="" 
await""  
CatalogTypeService""! 3
.""3 4
List""4 8
(""8 9
)""9 :
;"": ;
catalogBrands## 
=## 
await## !
CatalogBrandService##" 5
.##5 6
List##6 :
(##: ;
)##; <
;##< =
CallRequestRefresh%% 
(%% 
)%%  
;%%  !
}&& 	
await(( 
base(( 
.(( 
OnAfterRenderAsync(( %
(((% &
firstRender((& 1
)((1 2
;((2 3
})) 
private++ 
async++ 
void++ 
DetailsClick++ #
(++# $
int++$ '
id++( *
)++* +
{,, 
await-- 
DetailsComponent-- 
.-- 
Open-- #
(--# $
id--$ &
)--& '
;--' (
}.. 
private00 
async00 
Task00 
CreateClick00 "
(00" #
)00# $
{11 
await22 
CreateComponent22 
.22 
Open22 "
(22" #
)22# $
;22$ %
}33 
private55 
async55 
Task55 
	EditClick55  
(55  !
int55! $
id55% '
)55' (
{66 
await77 
EditComponent77 
.77 
Open77  
(77  !
id77! #
)77# $
;77$ %
}88 
private:: 
async:: 
Task:: 
DeleteClick:: "
(::" #
int::# &
id::' )
)::) *
{;; 
await<< 
DeleteComponent<< 
.<< 
Open<< "
(<<" #
id<<# %
)<<% &
;<<& '
}== 
private?? 
async?? 
Task?? 
ReloadCatalogItems?? )
(??) *
)??* +
{@@ 
catalogItemsAA 
=AA 
awaitAA 
CatalogItemServiceAA /
.AA/ 0
ListAA0 4
(AA4 5
)AA5 6
;AA6 7
StateHasChangedBB 
(BB 
)BB 
;BB 
}CC 
}DD ≤
`/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/JavaScript/Route.cs
	namespace 	
BlazorAdmin
 
. 

JavaScript  
;  !
public 
class 
Route 
{ 
private 
readonly 

IJSRuntime 

_jsRuntime  *
;* +
public

 

Route

 
(

 

IJSRuntime

 
	jsRuntime

 %
)

% &
{ 

_jsRuntime 
= 
	jsRuntime 
; 
} 
public 

async 
Task 
RouteOutside "
(" #
string# )
path* .
). /
{ 
await 

_jsRuntime 
. 
InvokeAsync $
<$ %
string% +
>+ ,
(, -
JSInteropConstants- ?
.? @
RouteOutside@ L
,L M
pathN R
)R S
;S T
} 
} Ó
m/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/JavaScript/JSInteropConstants.cs
	namespace 	
BlazorAdmin
 
. 

JavaScript  
;  !
public 
static 
class 
JSInteropConstants &
{ 
public 

static 
string 
DeleteCookie %
=>& (
$str) 7
;7 8
public 

static 
string 
	GetCookie "
=># %
$str& 1
;1 2
public 

static 
string 
RouteOutside %
=>& (
$str) 7
;7 8
public 

static 
string 
HideBodyOverflow )
=>* ,
$str- ?
;? @
public		 

static		 
string		 
ShowBodyOverflow		 )
=>		* ,
$str		- ?
;		? @
}

 ≈
^/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/JavaScript/Css.cs
	namespace 	
BlazorAdmin
 
. 

JavaScript  
;  !
public 
class 
Css 
{ 
private 
readonly 

IJSRuntime 

_jsRuntime  *
;* +
public

 

Css

 
(

 

IJSRuntime

 
	jsRuntime

 #
)

# $
{ 

_jsRuntime 
= 
	jsRuntime 
; 
} 
public 

async 
Task 
ShowBodyOverflow &
(& '
)' (
{ 
await 

_jsRuntime 
. 
InvokeAsync $
<$ %
string% +
>+ ,
(, -
JSInteropConstants- ?
.? @
ShowBodyOverflow@ P
)P Q
;Q R
} 
public 

async 
Task 
< 
string 
> 
HideBodyOverflow .
(. /
)/ 0
{ 
return 
await 

_jsRuntime 
.  
InvokeAsync  +
<+ ,
string, 2
>2 3
(3 4
JSInteropConstants4 F
.F G
HideBodyOverflowG W
)W X
;X Y
} 
} …
b/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/JavaScript/Cookies.cs
	namespace 	
BlazorAdmin
 
. 

JavaScript  
;  !
public 
class 
Cookies 
{ 
private 
readonly 

IJSRuntime 

_jsRuntime  *
;* +
public

 

Cookies

 
(

 

IJSRuntime

 
	jsRuntime

 '
)

' (
{ 

_jsRuntime 
= 
	jsRuntime 
; 
} 
public 

async 
Task 
DeleteCookie "
(" #
string# )
name* .
). /
{ 
await 

_jsRuntime 
. 
InvokeAsync $
<$ %
string% +
>+ ,
(, -
JSInteropConstants- ?
.? @
DeleteCookie@ L
,L M
nameN R
)R S
;S T
} 
public 

async 
Task 
< 
string 
> 
	GetCookie '
(' (
string( .
name/ 3
)3 4
{ 
return 
await 

_jsRuntime 
.  
InvokeAsync  +
<+ ,
string, 2
>2 3
(3 4
JSInteropConstants4 F
.F G
	GetCookieG P
,P Q
nameR V
)V W
;W X
} 
} »#
f/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Helpers/ToastComponent.cs
	namespace 	
BlazorAdmin
 
. 
Helpers 
; 
public 
class 
ToastComponent 
: 
ComponentBase +
,+ ,
IDisposable- 8
{ 
[		 
Inject		 
]		 
ToastService

 
ToastService

 
{ 
get 
; 
set 
; 
} 
	protected 
string 
Heading 
{ 
get 
; 
set 
; 
} 
	protected 
string 
Message 
{ 
get 
; 
set 
; 
} 
	protected 
bool 
	IsVisible 
{ 
get 
; 
set 
; 
} 
	protected 
string 
BackgroundCssClass '
{ 
get   
;   
set!! 
;!! 
}"" 
	protected## 
string## 
IconCssClass## !
{$$ 
get%% 
;%% 
set&& 
;&& 
}'' 
	protected(( 
override(( 
void(( 
OnInitialized(( )
((() *
)((* +
{)) 
ToastService** 
.** 
OnShow** 
+=** 
	ShowToast** (
;**( )
ToastService++ 
.++ 
OnHide++ 
+=++ 
	HideToast++ (
;++( )
},, 
private-- 
void-- 
	ShowToast-- 
(-- 
string-- !
message--" )
,--) *

ToastLevel--+ 5
level--6 ;
)--; <
{.. 
BuildToastSettings// 
(// 
level//  
,//  !
message//" )
)//) *
;//* +
	IsVisible00 
=00 
true00 
;00 
StateHasChanged11 
(11 
)11 
;11 
}22 
private33 
void33 
	HideToast33 
(33 
)33 
{44 
	IsVisible55 
=55 
false55 
;55 
StateHasChanged66 
(66 
)66 
;66 
}77 
private88 
void88 
BuildToastSettings88 #
(88# $

ToastLevel88$ .
level88/ 4
,884 5
string886 <
message88= D
)88D E
{99 
switch:: 
(:: 
level:: 
):: 
{;; 	
case<< 

ToastLevel<< 
.<< 
Info<<  
:<<  !
BackgroundCssClass== "
===# $
$str==% .
;==. /
IconCssClass>> 
=>> 
$str>> %
;>>% &
Heading?? 
=?? 
$str??  
;??  !
break@@ 
;@@ 
caseAA 

ToastLevelAA 
.AA 
SuccessAA #
:AA# $
BackgroundCssClassBB "
=BB# $
$strBB% 1
;BB1 2
IconCssClassCC 
=CC 
$strCC &
;CC& '
HeadingDD 
=DD 
$strDD #
;DD# $
breakEE 
;EE 
caseFF 

ToastLevelFF 
.FF 
WarningFF #
:FF# $
BackgroundCssClassGG "
=GG# $
$strGG% 1
;GG1 2
IconCssClassHH 
=HH 
$strHH ,
;HH, -
HeadingII 
=II 
$strII #
;II# $
breakJJ 
;JJ 
caseKK 

ToastLevelKK 
.KK 
ErrorKK !
:KK! "
BackgroundCssClassLL "
=LL# $
$strLL% 0
;LL0 1
IconCssClassMM 
=MM 
$strMM &
;MM& '
HeadingNN 
=NN 
$strNN !
;NN! "
breakOO 
;OO 
}PP 	
MessageQQ 
=QQ 
messageQQ 
;QQ 
}RR 
publicSS 

voidSS 
DisposeSS 
(SS 
)SS 
{TT 
ToastServiceUU 
.UU 
OnShowUU 
-=UU 
	ShowToastUU (
;UU( )
}VV 
}WW ¯

h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Helpers/RefreshBroadcast.cs
	namespace 	
BlazorAdmin
 
. 
Helpers 
; 
internal 
sealed	 
class 
RefreshBroadcast &
{ 
private 
static 
readonly 
Lazy  
<  !
RefreshBroadcast! 1
>1 2
Lazy 
= 
new		 
Lazy		 
<		 
RefreshBroadcast		 %
>		% &
(

 
(

 
)

 
=>

 
new

 
RefreshBroadcast

 +
(

+ ,
)

, -
)

- .
;

. /
public 

static 
RefreshBroadcast "
Instance# +
=>, .
Lazy/ 3
.3 4
Value4 9
;9 :
private 
RefreshBroadcast 
( 
) 
{ 
} 
public 

event 
Action 
RefreshRequested (
;( )
public 

void 
CallRequestRefresh "
(" #
)# $
{ 
RefreshRequested 
? 
. 
Invoke  
(  !
)! "
;" #
} 
} “

m/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Helpers/BlazorLayoutComponent.cs
	namespace 	
BlazorAdmin
 
. 
Helpers 
; 
public 
class !
BlazorLayoutComponent "
:# $
LayoutComponentBase% 8
{ 
private 
readonly 
RefreshBroadcast %
_refresh& .
=/ 0
RefreshBroadcast1 A
.A B
InstanceB J
;J K
	protected		 
override		 
void		 
OnInitialized		 )
(		) *
)		* +
{

 
_refresh 
. 
RefreshRequested !
+=" $
	DoRefresh% .
;. /
base 
. 
OnInitialized 
( 
) 
; 
} 
public 

void 
CallRequestRefresh "
(" #
)# $
{ 
_refresh 
. 
CallRequestRefresh #
(# $
)$ %
;% &
} 
private 
void 
	DoRefresh 
( 
) 
{ 
StateHasChanged 
( 
) 
; 
} 
} ¿

g/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/Helpers/BlazorComponent.cs
	namespace 	
BlazorAdmin
 
. 
Helpers 
; 
public 
class 
BlazorComponent 
: 
ComponentBase ,
{ 
private 
readonly 
RefreshBroadcast %
_refresh& .
=/ 0
RefreshBroadcast1 A
.A B
InstanceB J
;J K
	protected		 
override		 
void		 
OnInitialized		 )
(		) *
)		* +
{

 
_refresh 
. 
RefreshRequested !
+=" $
	DoRefresh% .
;. /
base 
. 
OnInitialized 
( 
) 
; 
} 
public 

void 
CallRequestRefresh "
(" #
)# $
{ 
_refresh 
. 
CallRequestRefresh #
(# $
)$ %
;% &
} 
private 
void 
	DoRefresh 
( 
) 
{ 
StateHasChanged 
( 
) 
; 
} 
} ¥/
g/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/BlazorAdmin/CustomAuthStateProvider.cs
	namespace 	
BlazorAdmin
 
; 
public 
class #
CustomAuthStateProvider $
:% &'
AuthenticationStateProvider' B
{ 
private 
static 
readonly 
TimeSpan $$
UserCacheRefreshInterval% =
=> ?
TimeSpan@ H
.H I
FromSecondsI T
(T U
$numU W
)W X
;X Y
private 
readonly 

HttpClient 
_httpClient  +
;+ ,
private 
readonly 
ILogger 
< #
CustomAuthStateProvider 4
>4 5
_logger6 =
;= >
private 
DateTimeOffset 
_userLastCheck )
=* +
DateTimeOffset, :
.: ;
FromUnixTimeSeconds; N
(N O
$numO P
)P Q
;Q R
private 
ClaimsPrincipal 
_cachedUser '
=( )
new* -
ClaimsPrincipal. =
(= >
new> A
ClaimsIdentityB P
(P Q
)Q R
)R S
;S T
public 
#
CustomAuthStateProvider "
(" #

HttpClient# -

httpClient. 8
,8 9
ILogger 
< #
CustomAuthStateProvider '
>' (
logger) /
)/ 0
{ 
_httpClient 
= 

httpClient  
;  !
_logger 
= 
logger 
; 
} 
public 

override 
async 
Task 
< 
AuthenticationState 2
>2 3'
GetAuthenticationStateAsync4 O
(O P
)P Q
{   
return!! 
new!! 
AuthenticationState!! &
(!!& '
await!!' ,
GetUser!!- 4
(!!4 5
useCache!!5 =
:!!= >
true!!? C
)!!C D
)!!D E
;!!E F
}"" 
private$$ 
async$$ 
	ValueTask$$ 
<$$ 
ClaimsPrincipal$$ +
>$$+ ,
GetUser$$- 4
($$4 5
bool$$5 9
useCache$$: B
=$$C D
false$$E J
)$$J K
{%% 
var&& 
now&& 
=&& 
DateTimeOffset&&  
.&&  !
Now&&! $
;&&$ %
if'' 

('' 
useCache'' 
&&'' 
now'' 
<'' 
_userLastCheck'' ,
+''- .$
UserCacheRefreshInterval''/ G
)''G H
{(( 	
return)) 
_cachedUser)) 
;)) 
}** 	
_cachedUser,, 
=,, 
await,, 
	FetchUser,, %
(,,% &
),,& '
;,,' (
_userLastCheck-- 
=-- 
now-- 
;-- 
return// 
_cachedUser// 
;// 
}00 
private22 
async22 
Task22 
<22 
ClaimsPrincipal22 &
>22& '
	FetchUser22( 1
(221 2
)222 3
{33 
UserInfo44 
user44 
=44 
null44 
;44 
try66 
{77 	
_logger88 
.88 
LogInformation88 "
(88" #
$str88# H
)88H I
;88I J
user99 
=99 
await99 
_httpClient99 $
.99$ %
GetFromJsonAsync99% 5
<995 6
UserInfo996 >
>99> ?
(99? @
$str99@ F
)99F G
;99G H
}:: 	
catch;; 
(;; 
	Exception;; 
exc;; 
);; 
{<< 	
_logger== 
.== 

LogWarning== 
(== 
exc== "
,==" #
$str==$ ;
)==; <
;==< =
}>> 	
if@@ 

(@@ 
user@@ 
==@@ 
null@@ 
||@@ 
!@@ 
user@@ !
.@@! "
IsAuthenticated@@" 1
)@@1 2
{AA 	
returnBB 
newBB 
ClaimsPrincipalBB &
(BB& '
newBB' *
ClaimsIdentityBB+ 9
(BB9 :
)BB: ;
)BB; <
;BB< =
}CC 	
varEE 
identityEE 
=EE 
newEE 
ClaimsIdentityEE )
(EE) *
nameofFF 
(FF #
CustomAuthStateProviderFF *
)FF* +
,FF+ ,
userGG 
.GG 
NameClaimTypeGG 
,GG 
userHH 
.HH 
RoleClaimTypeHH 
)HH 
;HH  
ifJJ 

(JJ 
userJJ 
.JJ 
ClaimsJJ 
!=JJ 
nullJJ 
)JJ  
{KK 	
foreachLL 
(LL 
varLL 
claimLL 
inLL !
userLL" &
.LL& '
ClaimsLL' -
)LL- .
{MM 
identityNN 
.NN 
AddClaimNN !
(NN! "
newNN" %
ClaimNN& +
(NN+ ,
claimNN, 1
.NN1 2
TypeNN2 6
,NN6 7
claimNN8 =
.NN= >
ValueNN> C
)NNC D
)NND E
;NNE F
}OO 
}PP 	
_httpClientRR 
.RR !
DefaultRequestHeadersRR )
.RR) *
AuthorizationRR* 7
=RR8 9
newRR: =%
AuthenticationHeaderValueRR> W
(RRW X
$strRRX `
,RR` a
userRRb f
.RRf g
TokenRRg l
)RRl m
;RRm n
returnTT 
newTT 
ClaimsPrincipalTT "
(TT" #
identityTT# +
)TT+ ,
;TT, -
}UU 
}VV 