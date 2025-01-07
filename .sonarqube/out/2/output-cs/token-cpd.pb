™	
y/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Specifications/OrderWithItemsByIdSpec.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
;; <
public 
class "
OrderWithItemsByIdSpec #
:$ %
Specification& 3
<3 4
Order4 9
>9 :
{ 
public 
"
OrderWithItemsByIdSpec !
(! "
int" %
orderId& -
)- .
{		 
Query

 
. 
Where 
( 
order 
=> 
order !
.! "
Id" $
==% '
orderId( /
)/ 0
. 
Include 
( 
o 
=> 
o 
. 

OrderItems &
)& '
. 
ThenInclude 
( 
i 
=> 
i 
.  
ItemOrdered  +
)+ ,
;, -
} 
} Ä	
‡/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Specifications/CustomerOrdersWithItemsSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
;; <
public 
class 0
$CustomerOrdersWithItemsSpecification 1
:2 3
Specification4 A
<A B
OrderB G
>G H
{ 
public 
0
$CustomerOrdersWithItemsSpecification /
(/ 0
string0 6
buyerId7 >
)> ?
{		 
Query

 
.

 
Where

 
(

 
o

 
=>

 
o

 
.

 
BuyerId

 "
==

# %
buyerId

& -
)

- .
. 
Include 
( 
o 
=> 
o 
. 

OrderItems &
)& '
. 
ThenInclude 
( 
i 
=> !
i" #
.# $
ItemOrdered$ /
)/ 0
;0 1
} 
} Œ
~/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Specifications/CustomerOrdersSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
;; <
public 
class '
CustomerOrdersSpecification (
:) *
Specification+ 8
<8 9
Order9 >
>> ?
{ 
public 
'
CustomerOrdersSpecification &
(& '
string' -
buyerId. 5
)5 6
{		 
Query

 
.

 
Where

 
(

 
o

 
=>

 
o

 
.

 
BuyerId

 "
==

# %
buyerId

& -
)

- .
. 
Include 
( 
o 
=> 
o 
. 

OrderItems &
)& '
;' (
} 
} Ê
|/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Specifications/CatalogItemsSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
;; <
public 
class %
CatalogItemsSpecification &
:' (
Specification) 6
<6 7
CatalogItem7 B
>B C
{		 
public

 
%
CatalogItemsSpecification

 $
(

$ %
params

% +
int

, /
[

/ 0
]

0 1
ids

2 5
)

5 6
{ 
Query 
. 
Where 
( 
c 
=> 
ids 
. 
Contains %
(% &
c& '
.' (
Id( *
)* +
)+ ,
;, -
} 
} ‘
/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Specifications/CatalogItemNameSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
;; <
public 
class (
CatalogItemNameSpecification )
:* +
Specification, 9
<9 :
CatalogItem: E
>E F
{ 
public 
(
CatalogItemNameSpecification '
(' (
string( .
catalogItemName/ >
)> ?
{		 
Query

 
.

 
Where

 
(

 
item

 
=>

 
catalogItemName

 +
==

, .
item

/ 3
.

3 4
Name

4 8
)

8 9
;

9 :
} 
} ¨

}/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Specifications/CatalogFilterSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
;; <
public 
class &
CatalogFilterSpecification '
:( )
Specification* 7
<7 8
CatalogItem8 C
>C D
{ 
public 
&
CatalogFilterSpecification %
(% &
int& )
?) *
brandId+ 2
,2 3
int4 7
?7 8
typeId9 ?
)? @
{		 
Query

 
.

 
Where

 
(

 
i

 
=>

 
(

 
!

 
brandId

 "
.

" #
HasValue

# +
||

, .
i

/ 0
.

0 1
CatalogBrandId

1 ?
==

@ B
brandId

C J
)

J K
&&

L N
( 
! 
typeId 
. 
HasValue 
||  
i! "
." #
CatalogTypeId# 0
==1 3
typeId4 :
): ;
); <
;< =
} 
} ï
†/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Specifications/CatalogFilterPaginatedSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
;; <
public 
class /
#CatalogFilterPaginatedSpecification 0
:1 2
Specification3 @
<@ A
CatalogItemA L
>L M
{ 
public 
/
#CatalogFilterPaginatedSpecification .
(. /
int/ 2
skip3 7
,7 8
int9 <
take= A
,A B
intC F
?F G
brandIdH O
,O P
intQ T
?T U
typeIdV \
)\ ]
:		 	
base		
 
(		 
)		 
{

 
if 

( 
take 
== 
$num 
) 
{ 	
take 
= 
int 
. 
MaxValue 
;  
} 	
Query 
. 
Where 
( 
i 
=> 
( 
! 
brandId !
.! "
HasValue" *
||+ -
i. /
./ 0
CatalogBrandId0 >
==? A
brandIdB I
)I J
&&K M
( 
! 
typeId 
. 
HasValue 
||  
i! "
." #
CatalogTypeId# 0
==1 3
typeId4 :
): ;
); <
. 
Skip 
( 
skip 
) 
. 
Take 
( 
take !
)! "
;" #
} 
} §
/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Specifications/BasketWithItemsSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
;; <
public 
sealed 
class (
BasketWithItemsSpecification 0
:1 2
Specification3 @
<@ A
BasketA G
>G H
{ 
public 
(
BasketWithItemsSpecification '
(' (
int( +
basketId, 4
)4 5
{		 
Query

 
. 
Where 
( 
b 
=> 
b 
. 
Id 
== 
basketId  (
)( )
. 
Include 
( 
b 
=> 
b 
. 
Items !
)! "
;" #
} 
public 
(
BasketWithItemsSpecification '
(' (
string( .
buyerId/ 6
)6 7
{ 
Query 
. 
Where 
( 
b 
=> 
b 
. 
BuyerId !
==" $
buyerId% ,
), -
. 
Include 
( 
b 
=> 
b 
. 
Items !
)! "
;" #
} 
} “	
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Services/UriComposer.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Services- 5
;5 6
public 
class 
UriComposer 
: 
IUriComposer '
{ 
private 
readonly 
CatalogSettings $
_catalogSettings% 5
;5 6
public		 

UriComposer		 
(		 
CatalogSettings		 &
catalogSettings		' 6
)		6 7
=>		8 :
_catalogSettings		; K
=		L M
catalogSettings		N ]
;		] ^
public 

string 
ComposePicUri 
(  
string  &
uriTemplate' 2
)2 3
{ 
return 
uriTemplate 
. 
Replace "
(" #
$str# F
,F G
_catalogSettingsH X
.X Y
CatalogBaseUrlY g
)g h
;h i
} 
} µ+
i/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Services/OrderService.cs
	namespace

 	
	Microsoft


 
.

 
eShopWeb

 
.

 
ApplicationCore

 ,
.

, -
Services

- 5
;

5 6
public 
class 
OrderService 
: 
IOrderService )
{ 
private 
readonly 
IRepository  
<  !
Order! &
>& '
_orderRepository( 8
;8 9
private 
readonly 
IUriComposer !
_uriComposer" .
;. /
private 
readonly 
IRepository  
<  !
Basket! '
>' (
_basketRepository) :
;: ;
private 
readonly 
IRepository  
<  !
CatalogItem! ,
>, -
_itemRepository. =
;= >
public 

OrderService 
( 
IRepository #
<# $
Basket$ *
>* +
basketRepository, <
,< =
IRepository 
< 
CatalogItem 
>  
itemRepository! /
,/ 0
IRepository 
< 
Order 
> 
orderRepository *
,* +
IUriComposer 
uriComposer  
)  !
{ 
_orderRepository 
= 
orderRepository *
;* +
_uriComposer 
= 
uriComposer "
;" #
_basketRepository 
= 
basketRepository ,
;, -
_itemRepository 
= 
itemRepository (
;( )
} 
public 

async 
Task 
CreateOrderAsync &
(& '
int' *
basketId+ 3
,3 4
Address5 <
shippingAddress= L
)L M
{ 
var   

basketSpec   
=   
new   (
BasketWithItemsSpecification   9
(  9 :
basketId  : B
)  B C
;  C D
var!! 
basket!! 
=!! 
await!! 
_basketRepository!! ,
.!!, -
FirstOrDefaultAsync!!- @
(!!@ A

basketSpec!!A K
)!!K L
;!!L M
Guard## 
.## 
Against## 
.## 
Null## 
(## 
basket## !
,##! "
nameof### )
(##) *
basket##* 0
)##0 1
)##1 2
;##2 3
Guard$$ 
.$$ 
Against$$ 
.$$ !
EmptyBasketOnCheckout$$ +
($$+ ,
basket$$, 2
.$$2 3
Items$$3 8
)$$8 9
;$$9 :
var&& %
catalogItemsSpecification&& %
=&&& '
new&&( +%
CatalogItemsSpecification&&, E
(&&E F
basket&&F L
.&&L M
Items&&M R
.&&R S
Select&&S Y
(&&Y Z
item&&Z ^
=>&&_ a
item&&b f
.&&f g
CatalogItemId&&g t
)&&t u
.&&u v
ToArray&&v }
(&&} ~
)&&~ 
)	&& €
;
&&€ 
var'' 
catalogItems'' 
='' 
await''  
_itemRepository''! 0
.''0 1
	ListAsync''1 :
('': ;%
catalogItemsSpecification''; T
)''T U
;''U V
var)) 
items)) 
=)) 
basket)) 
.)) 
Items))  
.))  !
Select))! '
())' (

basketItem))( 2
=>))3 5
{** 	
var++ 
catalogItem++ 
=++ 
catalogItems++ *
.++* +
First+++ 0
(++0 1
c++1 2
=>++3 5
c++6 7
.++7 8
Id++8 :
==++; =

basketItem++> H
.++H I
CatalogItemId++I V
)++V W
;++W X
var,, 
itemOrdered,, 
=,, 
new,, !
CatalogItemOrdered,," 4
(,,4 5
catalogItem,,5 @
.,,@ A
Id,,A C
,,,C D
catalogItem,,E P
.,,P Q
Name,,Q U
,,,U V
_uriComposer,,W c
.,,c d
ComposePicUri,,d q
(,,q r
catalogItem,,r }
.,,} ~

PictureUri	,,~ ˆ
)
,,ˆ ‰
)
,,‰ Š
;
,,Š ‹
var-- 
	orderItem-- 
=-- 
new-- 
	OrderItem--  )
(--) *
itemOrdered--* 5
,--5 6

basketItem--7 A
.--A B
	UnitPrice--B K
,--K L

basketItem--M W
.--W X
Quantity--X `
)--` a
;--a b
return.. 
	orderItem.. 
;.. 
}// 	
)//	 

.//
 
ToList// 
(// 
)// 
;// 
var11 
order11 
=11 
new11 
Order11 
(11 
basket11 $
.11$ %
BuyerId11% ,
,11, -
shippingAddress11. =
,11= >
items11? D
)11D E
;11E F
await33 
_orderRepository33 
.33 
AddAsync33 '
(33' (
order33( -
)33- .
;33. /
}44 
}55 €D
j/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Services/BasketService.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 
ApplicationCore		 ,
.		, -
Services		- 5
;		5 6
public 
class 
BasketService 
: 
IBasketService +
{ 
private 
readonly 
IRepository  
<  !
Basket! '
>' (
_basketRepository) :
;: ;
private 
readonly 

IAppLogger 
<  
BasketService  -
>- .
_logger/ 6
;6 7
public 

BasketService 
( 
IRepository $
<$ %
Basket% +
>+ ,
basketRepository- =
,= >

IAppLogger 
< 
BasketService  
>  !
logger" (
)( )
{ 
_basketRepository 
= 
basketRepository ,
;, -
_logger 
= 
logger 
; 
} 
public 

async 
Task 
< 
Basket 
> 
AddItemToBasket -
(- .
string. 4
username5 =
,= >
int? B
catalogItemIdC P
,P Q
decimalR Y
priceZ _
,_ `
inta d
quantitye m
=n o
$nump q
)q r
{ 
var 

basketSpec 
= 
new (
BasketWithItemsSpecification 9
(9 :
username: B
)B C
;C D
var 
basket 
= 
await 
_basketRepository ,
., -
FirstOrDefaultAsync- @
(@ A

basketSpecA K
)K L
;L M
if 

( 
basket 
== 
null 
) 
{ 	
basket 
= 
new 
Basket 
(  
username  (
)( )
;) *
await 
_basketRepository #
.# $
AddAsync$ ,
(, -
basket- 3
)3 4
;4 5
}   	
basket"" 
."" 
AddItem"" 
("" 
catalogItemId"" $
,""$ %
price""& +
,""+ ,
quantity""- 5
)""5 6
;""6 7
await$$ 
_basketRepository$$ 
.$$  
UpdateAsync$$  +
($$+ ,
basket$$, 2
)$$2 3
;$$3 4
return%% 
basket%% 
;%% 
}&& 
public(( 

async(( 
Task(( 
DeleteBasketAsync(( '
(((' (
int((( +
basketId((, 4
)((4 5
{)) 
var** 
basket** 
=** 
await** 
_basketRepository** ,
.**, -
GetByIdAsync**- 9
(**9 :
basketId**: B
)**B C
;**C D
Guard++ 
.++ 
Against++ 
.++ 
Null++ 
(++ 
basket++ !
,++! "
nameof++# )
(++) *
basket++* 0
)++0 1
)++1 2
;++2 3
await,, 
_basketRepository,, 
.,,  
DeleteAsync,,  +
(,,+ ,
basket,,, 2
),,2 3
;,,3 4
}-- 
public// 

async// 
Task// 
<// 
Result// 
<// 
Basket// #
>//# $
>//$ %
SetQuantities//& 3
(//3 4
int//4 7
basketId//8 @
,//@ A

Dictionary//B L
<//L M
string//M S
,//S T
int//U X
>//X Y

quantities//Z d
)//d e
{00 
var11 

basketSpec11 
=11 
new11 (
BasketWithItemsSpecification11 9
(119 :
basketId11: B
)11B C
;11C D
var22 
basket22 
=22 
await22 
_basketRepository22 ,
.22, -
FirstOrDefaultAsync22- @
(22@ A

basketSpec22A K
)22K L
;22L M
if33 

(33 
basket33 
==33 
null33 
)33 
return33 "
Result33# )
<33) *
Basket33* 0
>330 1
.331 2
NotFound332 :
(33: ;
)33; <
;33< =
foreach55 
(55 
var55 
item55 
in55 
basket55 #
.55# $
Items55$ )
)55) *
{66 	
if77 
(77 

quantities77 
.77 
TryGetValue77 &
(77& '
item77' +
.77+ ,
Id77, .
.77. /
ToString77/ 7
(777 8
)778 9
,779 :
out77; >
var77? B
quantity77C K
)77K L
)77L M
{88 
if99 
(99 
_logger99 
!=99 
null99 #
)99# $
_logger99% ,
.99, -
LogInformation99- ;
(99; <
$"99< >
$str99> [
{99[ \
item99\ `
.99` a
Id99a c
}99c d
$str99d h
{99h i
quantity99i q
}99q r
$str99r s
"99s t
)99t u
;99u v
item:: 
.:: 
SetQuantity::  
(::  !
quantity::! )
)::) *
;::* +
};; 
}<< 	
basket== 
.== 
RemoveEmptyItems== 
(==  
)==  !
;==! "
await>> 
_basketRepository>> 
.>>  
UpdateAsync>>  +
(>>+ ,
basket>>, 2
)>>2 3
;>>3 4
return?? 
basket?? 
;?? 
}@@ 
publicBB 

asyncBB 
TaskBB 
TransferBasketAsyncBB )
(BB) *
stringBB* 0
anonymousIdBB1 <
,BB< =
stringBB> D
userNameBBE M
)BBM N
{CC 
varDD 
anonymousBasketSpecDD 
=DD  !
newDD" %(
BasketWithItemsSpecificationDD& B
(DDB C
anonymousIdDDC N
)DDN O
;DDO P
varEE 
anonymousBasketEE 
=EE 
awaitEE #
_basketRepositoryEE$ 5
.EE5 6
FirstOrDefaultAsyncEE6 I
(EEI J
anonymousBasketSpecEEJ ]
)EE] ^
;EE^ _
ifFF 

(FF 
anonymousBasketFF 
==FF 
nullFF #
)FF# $
returnFF% +
;FF+ ,
varGG 
userBasketSpecGG 
=GG 
newGG  (
BasketWithItemsSpecificationGG! =
(GG= >
userNameGG> F
)GGF G
;GGG H
varHH 

userBasketHH 
=HH 
awaitHH 
_basketRepositoryHH 0
.HH0 1
FirstOrDefaultAsyncHH1 D
(HHD E
userBasketSpecHHE S
)HHS T
;HHT U
ifII 

(II 

userBasketII 
==II 
nullII 
)II 
{JJ 	

userBasketKK 
=KK 
newKK 
BasketKK #
(KK# $
userNameKK$ ,
)KK, -
;KK- .
awaitLL 
_basketRepositoryLL #
.LL# $
AddAsyncLL$ ,
(LL, -

userBasketLL- 7
)LL7 8
;LL8 9
}MM 	
foreachNN 
(NN 
varNN 
itemNN 
inNN 
anonymousBasketNN ,
.NN, -
ItemsNN- 2
)NN2 3
{OO 	

userBasketPP 
.PP 
AddItemPP 
(PP 
itemPP #
.PP# $
CatalogItemIdPP$ 1
,PP1 2
itemPP3 7
.PP7 8
	UnitPricePP8 A
,PPA B
itemPPC G
.PPG H
QuantityPPH P
)PPP Q
;PPQ R
}QQ 	
awaitRR 
_basketRepositoryRR 
.RR  
UpdateAsyncRR  +
(RR+ ,

userBasketRR, 6
)RR6 7
;RR7 8
awaitSS 
_basketRepositorySS 
.SS  
DeleteAsyncSS  +
(SS+ ,
anonymousBasketSS, ;
)SS; <
;SS< =
}TT 
}UU †
k/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/IUriComposer.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 
IUriComposer 
{ 
string 

ComposePicUri 
( 
string 
uriTemplate  +
)+ ,
;, -
} Á
r/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/ITokenClaimsService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 
ITokenClaimsService $
{ 
Task 
< 	
string	 
> 
GetTokenAsync 
( 
string %
userName& .
). /
;/ 0
} ð
j/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/IRepository.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 
IRepository 
< 
T 
> 
:  !
IRepositoryBase" 1
<1 2
T2 3
>3 4
where5 :
T; <
:= >
class? D
,D E
IAggregateRootF T
{ 
} ü
n/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/IReadRepository.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 
IReadRepository  
<  !
T! "
>" #
:$ %
IReadRepositoryBase& 9
<9 :
T: ;
>; <
where= B
TC D
:E F
classG L
,L M
IAggregateRootN \
{ 
} Ä
l/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/IOrderService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 
IOrderService 
{ 
Task 
CreateOrderAsync	 
( 
int 
basketId &
,& '
Address( /
shippingAddress0 ?
)? @
;@ A
}		 ï
k/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/IEmailSender.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 
IEmailSender 
{ 
Task 
SendEmailAsync	 
( 
string 
email $
,$ %
string& ,
subject- 4
,4 5
string6 <
message= D
)D E
;E F
} Ã
m/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/IBasketService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 
IBasketService 
{		 
Task

 
TransferBasketAsync

	 
(

 
string

 #
anonymousId

$ /
,

/ 0
string

1 7
userName

8 @
)

@ A
;

A B
Task 
< 	
Basket	 
> 
AddItemToBasket  
(  !
string! '
username( 0
,0 1
int2 5
catalogItemId6 C
,C D
decimalE L
priceM R
,R S
intT W
quantityX `
=a b
$numc d
)d e
;e f
Task 
< 	
Result	 
< 
Basket 
> 
> 
SetQuantities &
(& '
int' *
basketId+ 3
,3 4

Dictionary5 ?
<? @
string@ F
,F G
intH K
>K L

quantitiesM W
)W X
;X Y
Task 
DeleteBasketAsync	 
( 
int 
basketId '
)' (
;( )
} Æ
r/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/IBasketQueryService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 
IBasketQueryService $
{		 
Task

 
<

 	
int

	 
>

 !
CountTotalBasketItems

 #
(

# $
string

$ *
username

+ 3
)

3 4
;

4 5
} ø
i/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/IAppLogger.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 

IAppLogger 
< 
T 
> 
{ 
void		 
LogInformation			 
(		 
string		 
message		 &
,		& '
params		( .
object		/ 5
[		5 6
]		6 7
args		8 <
)		< =
;		= >
void

 

LogWarning

	 
(

 
string

 
message

 "
,

" #
params

$ *
object

+ 1
[

1 2
]

2 3
args

4 8
)

8 9
;

9 :
} ƒ
m/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Interfaces/IAggregateRoot.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
;7 8
public 
	interface 
IAggregateRoot 
{ 
} ï
m/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Extensions/JsonExtensions.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
; 
public 
static 
class 
JsonExtensions "
{ 
private 
static 
readonly !
JsonSerializerOptions 1
_jsonOptions2 >
=? @
newA D!
JsonSerializerOptionsE Z
{ '
PropertyNameCaseInsensitive		 #
=		$ %
true		& *
}

 
;

 
public 

static 
T 
? 
FromJson 
< 
T 
>  
(  !
this! %
string& ,
json- 1
)1 2
=>3 5
JsonSerializer 
. 
Deserialize "
<" #
T# $
>$ %
(% &
json& *
,* +
_jsonOptions, 8
)8 9
;9 :
public 

static 
string 
ToJson 
<  
T  !
>! "
(" #
this# '
T( )
obj* -
)- .
=>/ 1
JsonSerializer 
. 
	Serialize  
<  !
T! "
>" #
(# $
obj$ '
,' (
_jsonOptions) 5
)5 6
;6 7
} ­
n/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Extensions/GuardExtensions.cs
	namespace 	
Ardalis
 
. 
GuardClauses 
; 
public 
static 
class 
BasketGuards  
{		 
public

 

static

 
void

 !
EmptyBasketOnCheckout

 ,
(

, -
this

- 1
IGuardClause

2 >
guardClause

? J
,

J K
IReadOnlyCollection

L _
<

_ `

BasketItem

` j
>

j k
basketItems

l w
)

w x
{ 
if 

( 
! 
basketItems 
. 
Any 
( 
) 
) 
throw 
new *
EmptyBasketOnCheckoutException 4
(4 5
)5 6
;6 7
} 
} ê
}/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Exceptions/EmptyBasketOnCheckoutException.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Exceptions- 7
;7 8
public 
class *
EmptyBasketOnCheckoutException +
:, -
	Exception. 7
{ 
public 
*
EmptyBasketOnCheckoutException )
() *
)* +
: 	
base
 
( 
$" 
$str 7
"7 8
)8 9
{		 
}

 
	protected *
EmptyBasketOnCheckoutException ,
(, -
System- 3
.3 4
Runtime4 ;
.; <
Serialization< I
.I J
SerializationInfoJ [
info\ `
,` a
Systemb h
.h i
Runtimei p
.p q
Serializationq ~
.~ 
StreamingContext	 
context
 —
)
— ˜
:
™ š
base
› Ÿ
(
Ÿ  
info
  ¤
,
¤ ¥
context
¦ ­
)
­ ®
{ 
} 
public 
*
EmptyBasketOnCheckoutException )
() *
string* 0
message1 8
)8 9
:: ;
base< @
(@ A
messageA H
)H I
{ 
} 
public 
*
EmptyBasketOnCheckoutException )
() *
string* 0
message1 8
,8 9
	Exception: C
innerExceptionD R
)R S
:T U
baseV Z
(Z [
message[ b
,b c
innerExceptiond r
)r s
{ 
} 
} ˜
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Exceptions/DuplicateException.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Exceptions- 7
;7 8
public 
class 
DuplicateException 
:  !
	Exception" +
{ 
public 

DuplicateException 
( 
string $
message% ,
), -
:. /
base0 4
(4 5
message5 <
)< =
{ 
}

 
} õ
v/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Exceptions/BasketNotFoundException.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Exceptions- 7
;7 8
public 
class #
BasketNotFoundException $
:% &
	Exception' 0
{ 
public 
#
BasketNotFoundException "
(" #
int# &
basketId' /
)/ 0
:1 2
base3 7
(7 8
$"8 :
$str: R
{R S
basketIdS [
}[ \
"\ ]
)] ^
{ 
}		 
}

 Ä
u/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/OrderAggregate/OrderItem.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
OrderAggregate6 D
;D E
public 
class 
	OrderItem 
: 

BaseEntity #
{ 
public 

CatalogItemOrdered 
ItemOrdered )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
public 

decimal 
	UnitPrice 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 

int 
Units 
{ 
get 
; 
private #
set$ '
;' (
}) *
private

 
	OrderItem

 
(

 
)

 
{

 
}

 
public 

	OrderItem 
( 
CatalogItemOrdered '
itemOrdered( 3
,3 4
decimal5 <
	unitPrice= F
,F G
intH K
unitsL Q
)Q R
{ 
ItemOrdered 
= 
itemOrdered !
;! "
	UnitPrice 
= 
	unitPrice 
; 
Units 
= 
units 
; 
} 
} Í
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/OrderAggregate/Order.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
OrderAggregate6 D
;D E
public 
class 
Order 
: 

BaseEntity 
,  
IAggregateRoot! /
{		 
private 
Order 
( 
) 
{ 
} 
public 

Order 
( 
string 
buyerId 
,  
Address! (
shipToAddress) 6
,6 7
List8 <
<< =
	OrderItem= F
>F G
itemsH M
)M N
{ 
Guard 
. 
Against 
. 
NullOrEmpty !
(! "
buyerId" )
,) *
nameof+ 1
(1 2
buyerId2 9
)9 :
): ;
;; <
BuyerId 
= 
buyerId 
; 
ShipToAddress 
= 
shipToAddress %
;% &
_orderItems 
= 
items 
; 
} 
public 

string 
BuyerId 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public 

DateTimeOffset 
	OrderDate #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
=: ;
DateTimeOffset< J
.J K
NowK N
;N O
public 

Address 
ShipToAddress  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
private 
readonly 
List 
< 
	OrderItem #
># $
_orderItems% 0
=1 2
new3 6
List7 ;
<; <
	OrderItem< E
>E F
(F G
)G H
;H I
public$$ 

IReadOnlyCollection$$ 
<$$ 
	OrderItem$$ (
>$$( )

OrderItems$$* 4
=>$$5 7
_orderItems$$8 C
.$$C D

AsReadOnly$$D N
($$N O
)$$O P
;$$P Q
public&& 

decimal&& 
Total&& 
(&& 
)&& 
{'' 
var(( 
total(( 
=(( 
$num(( 
;(( 
foreach)) 
()) 
var)) 
item)) 
in)) 
_orderItems)) (
)))( )
{** 	
total++ 
+=++ 
item++ 
.++ 
	UnitPrice++ #
*++$ %
item++& *
.++* +
Units+++ 0
;++0 1
},, 	
return-- 
total-- 
;-- 
}.. 
}// ¯
~/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/OrderAggregate/CatalogItemOrdered.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
OrderAggregate6 D
;D E
public		 
class		 
CatalogItemOrdered		 
{

 
public 

CatalogItemOrdered 
( 
int !
catalogItemId" /
,/ 0
string1 7
productName8 C
,C D
stringE K

pictureUriL V
)V W
{ 
Guard 
. 
Against 
. 

OutOfRange  
(  !
catalogItemId! .
,. /
nameof0 6
(6 7
catalogItemId7 D
)D E
,E F
$numG H
,H I
intJ M
.M N
MaxValueN V
)V W
;W X
Guard 
. 
Against 
. 
NullOrEmpty !
(! "
productName" -
,- .
nameof/ 5
(5 6
productName6 A
)A B
)B C
;C D
Guard 
. 
Against 
. 
NullOrEmpty !
(! "

pictureUri" ,
,, -
nameof. 4
(4 5

pictureUri5 ?
)? @
)@ A
;A B
CatalogItemId 
= 
catalogItemId %
;% &
ProductName 
= 
productName !
;! "

PictureUri 
= 

pictureUri 
;  
} 
private 
CatalogItemOrdered 
( 
)  
{! "
}" #
public 

int 
CatalogItemId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 

string 
ProductName 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 

string 

PictureUri 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
} ¹
s/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/OrderAggregate/Address.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
OrderAggregate6 D
;D E
public 
class 
Address 
{ 
public 

string 
Street 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
public 

string 
City 
{ 
get 
; 
private %
set& )
;) *
}+ ,
public		 

string		 
State		 
{		 
get		 
;		 
private		 &
set		' *
;		* +
}		, -
public 

string 
Country 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public 

string 
ZipCode 
{ 
get 
;  
private! (
set) ,
;, -
}. /
private 
Address 
( 
) 
{ 
} 
public 

Address 
( 
string 
street  
,  !
string" (
city) -
,- .
string/ 5
state6 ;
,; <
string= C
countryD K
,K L
stringM S
zipcodeT [
)[ \
{ 
Street 
= 
street 
; 
City 
= 
city 
; 
State 
= 
state 
; 
Country 
= 
country 
; 
ZipCode 
= 
zipcode 
; 
} 
} Ã
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/CatalogType.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
;5 6
public 
class 
CatalogType 
: 

BaseEntity %
,% &
IAggregateRoot' 5
{ 
public 

string 
Type 
{ 
get 
; 
private %
set& )
;) *
}+ ,
public 

CatalogType 
( 
string 
type "
)" #
{		 
Type

 
=

 
type

 
;

 
} 
} õ7
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/CatalogItem.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
;5 6
public 
class 
CatalogItem 
: 

BaseEntity %
,% &
IAggregateRoot' 5
{ 
public		 

string		 
Name		 
{		 
get		 
;		 
private		 %
set		& )
;		) *
}		+ ,
public

 

string

 
Description

 
{

 
get

  #
;

# $
private

% ,
set

- 0
;

0 1
}

2 3
public 

decimal 
Price 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
public 

string 

PictureUri 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 

int 
CatalogTypeId 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 

CatalogType 
? 
CatalogType #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 

int 
CatalogBrandId 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 

CatalogBrand 
? 
CatalogBrand %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
public 

CatalogItem 
( 
int 
catalogTypeId (
,( )
int 
catalogBrandId 
, 
string 
description 
, 
string 
name 
, 
decimal 
price 
, 
string 

pictureUri 
) 
{ 
CatalogTypeId 
= 
catalogTypeId %
;% &
CatalogBrandId 
= 
catalogBrandId '
;' (
Description 
= 
description !
;! "
Name 
= 
name 
; 
Price 
= 
price 
; 

PictureUri 
= 

pictureUri 
;  
} 
public!! 

void!! 
UpdateDetails!! 
(!! 
CatalogItemDetails!! 0
details!!1 8
)!!8 9
{"" 
Guard## 
.## 
Against## 
.## 
NullOrEmpty## !
(##! "
details##" )
.##) *
Name##* .
,##. /
nameof##0 6
(##6 7
details##7 >
.##> ?
Name##? C
)##C D
)##D E
;##E F
Guard$$ 
.$$ 
Against$$ 
.$$ 
NullOrEmpty$$ !
($$! "
details$$" )
.$$) *
Description$$* 5
,$$5 6
nameof$$7 =
($$= >
details$$> E
.$$E F
Description$$F Q
)$$Q R
)$$R S
;$$S T
Guard%% 
.%% 
Against%% 
.%% 
NegativeOrZero%% $
(%%$ %
details%%% ,
.%%, -
Price%%- 2
,%%2 3
nameof%%4 :
(%%: ;
details%%; B
.%%B C
Price%%C H
)%%H I
)%%I J
;%%J K
Name'' 
='' 
details'' 
.'' 
Name'' 
;'' 
Description(( 
=(( 
details(( 
.(( 
Description(( )
;(() *
Price)) 
=)) 
details)) 
.)) 
Price)) 
;)) 
}** 
public,, 

void,, 
UpdateBrand,, 
(,, 
int,, 
catalogBrandId,,  .
),,. /
{-- 
Guard.. 
... 
Against.. 
... 
Zero.. 
(.. 
catalogBrandId.. )
,..) *
nameof..+ 1
(..1 2
catalogBrandId..2 @
)..@ A
)..A B
;..B C
CatalogBrandId// 
=// 
catalogBrandId// '
;//' (
}00 
public22 

void22 

UpdateType22 
(22 
int22 
catalogTypeId22 ,
)22, -
{33 
Guard44 
.44 
Against44 
.44 
Zero44 
(44 
catalogTypeId44 (
,44( )
nameof44* 0
(440 1
catalogTypeId441 >
)44> ?
)44? @
;44@ A
CatalogTypeId55 
=55 
catalogTypeId55 %
;55% &
}66 
public88 

void88 
UpdatePictureUri88  
(88  !
string88! '
pictureName88( 3
)883 4
{99 
if:: 

(:: 
string:: 
.:: 
IsNullOrEmpty::  
(::  !
pictureName::! ,
)::, -
)::- .
{;; 	

PictureUri<< 
=<< 
string<< 
.<<  
Empty<<  %
;<<% &
return== 
;== 
}>> 	

PictureUri?? 
=?? 
$"?? 
$str?? )
{??) *
pictureName??* 5
}??5 6
$str??6 7
{??7 8
new??8 ;
DateTime??< D
(??D E
)??E F
.??F G
Ticks??G L
}??L M
"??M N
;??N O
}@@ 
publicBB 

readonlyBB 
recordBB 
structBB !
CatalogItemDetailsBB" 4
{CC 
publicDD 
stringDD 
?DD 
NameDD 
{DD 
getDD !
;DD! "
}DD# $
publicEE 
stringEE 
?EE 
DescriptionEE "
{EE# $
getEE% (
;EE( )
}EE* +
publicFF 
decimalFF 
PriceFF 
{FF 
getFF "
;FF" #
}FF$ %
publicHH 
CatalogItemDetailsHH !
(HH! "
stringHH" (
?HH( )
nameHH* .
,HH. /
stringHH0 6
?HH6 7
descriptionHH8 C
,HHC D
decimalHHE L
priceHHM R
)HHR S
{II 	
NameJJ 
=JJ 
nameJJ 
;JJ 
DescriptionKK 
=KK 
descriptionKK %
;KK% &
PriceLL 
=LL 
priceLL 
;LL 
}MM 	
}NN 
}OO Ê
i/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/CatalogBrand.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
;5 6
public 
class 
CatalogBrand 
: 

BaseEntity &
,& '
IAggregateRoot( 6
{ 
public 

string 
Brand 
{ 
get 
; 
private &
set' *
;* +
}, -
public 

CatalogBrand 
( 
string 
brand $
)$ %
{		 
Brand

 
=

 
brand

 
;

 
} 
} 
y/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/BuyerAggregate/PaymentMethod.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
BuyerAggregate6 D
;D E
public 
class 
PaymentMethod 
: 

BaseEntity '
{ 
public 

string 
? 
Alias 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
public 

string 
? 
CardId 
{ 
get 
;  
private! (
set) ,
;, -
}. /
public 

string 
? 
Last4 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
} ·
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/BuyerAggregate/Buyer.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
BuyerAggregate6 D
;D E
public 
class 
Buyer 
: 

BaseEntity 
,  
IAggregateRoot! /
{ 
public		 

string		 
IdentityGuid		 
{		  
get		! $
;		$ %
private		& -
set		. 1
;		1 2
}		3 4
private 
List 
< 
PaymentMethod 
> 
_paymentMethods  /
=0 1
new2 5
List6 :
<: ;
PaymentMethod; H
>H I
(I J
)J K
;K L
public 

IEnumerable 
< 
PaymentMethod $
>$ %
PaymentMethods& 4
=>5 7
_paymentMethods8 G
.G H

AsReadOnlyH R
(R S
)S T
;T U
private 
Buyer 
( 
) 
{ 
} 
public 

Buyer 
( 
string 
identity  
)  !
:" #
this$ (
(( )
)) *
{ 
Guard 
. 
Against 
. 
NullOrEmpty !
(! "
identity" *
,* +
nameof, 2
(2 3
identity3 ;
); <
)< =
;= >
IdentityGuid 
= 
identity 
;  
} 
} ¬
w/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/BasketAggregate/BasketItem.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
BasketAggregate6 E
;E F
public 
class 

BasketItem 
: 

BaseEntity $
{ 
public 

decimal 
	UnitPrice 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public		 

int		 
Quantity		 
{		 
get		 
;		 
private		 &
set		' *
;		* +
}		, -
public

 

int

 
CatalogItemId

 
{

 
get

 "
;

" #
private

$ +
set

, /
;

/ 0
}

1 2
public 

int 
BasketId 
{ 
get 
; 
private &
set' *
;* +
}, -
public 


BasketItem 
( 
int 
catalogItemId '
,' (
int) ,
quantity- 5
,5 6
decimal7 >
	unitPrice? H
)H I
{ 
CatalogItemId 
= 
catalogItemId %
;% &
	UnitPrice 
= 
	unitPrice 
; 
SetQuantity 
( 
quantity 
) 
; 
} 
public 

void 
AddQuantity 
( 
int 
quantity  (
)( )
{ 
Guard 
. 
Against 
. 

OutOfRange  
(  !
quantity! )
,) *
nameof+ 1
(1 2
quantity2 :
): ;
,; <
$num= >
,> ?
int@ C
.C D
MaxValueD L
)L M
;M N
Quantity 
+= 
quantity 
; 
} 
public 

void 
SetQuantity 
( 
int 
quantity  (
)( )
{ 
Guard 
. 
Against 
. 

OutOfRange  
(  !
quantity! )
,) *
nameof+ 1
(1 2
quantity2 :
): ;
,; <
$num= >
,> ?
int@ C
.C D
MaxValueD L
)L M
;M N
Quantity 
= 
quantity 
; 
}   
}!! ’
s/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/BasketAggregate/Basket.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
BasketAggregate6 E
;E F
public 
class 
Basket 
: 

BaseEntity  
,  !
IAggregateRoot" 0
{		 
public

 

string

 
BuyerId

 
{

 
get

 
;

  
private

! (
set

) ,
;

, -
}

. /
private 
readonly 
List 
< 

BasketItem $
>$ %
_items& ,
=- .
new/ 2
List3 7
<7 8

BasketItem8 B
>B C
(C D
)D E
;E F
public 

IReadOnlyCollection 
< 

BasketItem )
>) *
Items+ 0
=>1 3
_items4 :
.: ;

AsReadOnly; E
(E F
)F G
;G H
public 

int 

TotalItems 
=> 
_items #
.# $
Sum$ '
(' (
i( )
=>* ,
i- .
.. /
Quantity/ 7
)7 8
;8 9
public 

Basket 
( 
string 
buyerId  
)  !
{ 
BuyerId 
= 
buyerId 
; 
} 
public 

void 
AddItem 
( 
int 
catalogItemId )
,) *
decimal+ 2
	unitPrice3 <
,< =
int> A
quantityB J
=K L
$numM N
)N O
{ 
if 

( 
! 
Items 
. 
Any 
( 
i 
=> 
i 
. 
CatalogItemId +
==, .
catalogItemId/ <
)< =
)= >
{ 	
_items 
. 
Add 
( 
new 

BasketItem %
(% &
catalogItemId& 3
,3 4
quantity5 =
,= >
	unitPrice? H
)H I
)I J
;J K
return 
; 
} 	
var 
existingItem 
= 
Items  
.  !
First! &
(& '
i' (
=>) +
i, -
.- .
CatalogItemId. ;
==< >
catalogItemId? L
)L M
;M N
existingItem 
. 
AddQuantity  
(  !
quantity! )
)) *
;* +
} 
public!! 

void!! 
RemoveEmptyItems!!  
(!!  !
)!!! "
{"" 
_items## 
.## 
	RemoveAll## 
(## 
i## 
=>## 
i## 
.##  
Quantity##  (
==##) +
$num##, -
)##- .
;##. /
}$$ 
public&& 

void&& 
SetNewBuyerId&& 
(&& 
string&& $
buyerId&&% ,
)&&, -
{'' 
BuyerId(( 
=(( 
buyerId(( 
;(( 
})) 
}** Æ
g/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Entities/BaseEntity.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
;5 6
public 
abstract 
class 

BaseEntity  
{ 
public 

virtual 
int 
Id 
{ 
get 
;  
	protected! *
set+ .
;. /
}0 1
} œ
t/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/Constants/AuthorizationConstants.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
	Constants- 6
;6 7
public 
class "
AuthorizationConstants #
{ 
public 

const 
string 
AUTH_KEY  
=! "
$str# Q
;Q R
public 

const 
string 
DEFAULT_PASSWORD (
=) *
$str+ 7
;7 8
public 

const 
string 
JWT_SECRET_KEY &
=' (
$str) Y
;Y Z
} Ò
c/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/ApplicationCore/CatalogSettings.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
; 
public 
class 
CatalogSettings 
{ 
public 

string 
? 
CatalogBaseUrl !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 