�
c/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Views/Manage/ManageNavPages.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Views! &
.& '
Manage' -
;- .
public 
static 
class 
ManageNavPages "
{ 
public		 

static		 
string		 
ActivePageKey		 &
=>		' )
$str		* 6
;		6 7
public 

static 
string 
Index 
=> !
$str" )
;) *
public 

static 
string 
ChangePassword '
=>( *
$str+ ;
;; <
public 

static 
string 
ExternalLogins '
=>( *
$str+ ;
;; <
public 

static 
string #
TwoFactorAuthentication 0
=>1 3
$str4 M
;M N
public 

static 
string 
IndexNavClass &
(& '
ViewContext' 2
viewContext3 >
)> ?
=>@ B
PageNavClassC O
(O P
viewContextP [
,[ \
Index] b
)b c
;c d
public 

static 
string "
ChangePasswordNavClass /
(/ 0
ViewContext0 ;
viewContext< G
)G H
=>I K
PageNavClassL X
(X Y
viewContextY d
,d e
ChangePasswordf t
)t u
;u v
public 

static 
string "
ExternalLoginsNavClass /
(/ 0
ViewContext0 ;
viewContext< G
)G H
=>I K
PageNavClassL X
(X Y
viewContextY d
,d e
ExternalLoginsf t
)t u
;u v
public 

static 
string +
TwoFactorAuthenticationNavClass 8
(8 9
ViewContext9 D
viewContextE P
)P Q
=>R T
PageNavClassU a
(a b
viewContextb m
,m n$
TwoFactorAuthentication	o �
)
� �
;
� �
public 

static 
string 
PageNavClass %
(% &
ViewContext& 1
viewContext2 =
,= >
string? E
pageF J
)J K
{ 
var 

activePage 
= 
viewContext $
.$ %
ViewData% -
[- .
$str. :
]: ;
as< >
string? E
;E F
return 
string 
. 
Equals 
( 

activePage '
,' (
page) -
,- .
StringComparison/ ?
.? @
OrdinalIgnoreCase@ Q
)Q R
?S T
$strU ]
:^ _
string` f
.f g
Emptyg l
;l m
} 
public!! 

static!! 
void!! 
AddActivePage!! $
(!!$ %
this!!% )
ViewDataDictionary!!* <
viewData!!= E
,!!E F
string!!G M

activePage!!N X
)!!X Y
=>!!Z \
viewData!!] e
[!!e f
ActivePageKey!!f s
]!!s t
=!!u v

activePage	!!w �
;
!!� �
}"" �

j/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/PaginationInfoViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
;+ ,
public 
class #
PaginationInfoViewModel $
{ 
public 

int 

TotalItems 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 
ItemsPerPage 
{ 
get !
;! "
set# &
;& '
}( )
public 

int 

ActualPage 
{ 
get 
;  
set! $
;$ %
}& '
public 

int 

TotalPages 
{ 
get 
;  
set! $
;$ %
}& '
public		 

string		 
?		 
Previous		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 

string

 
?

 
Next

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
} �	
a/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/OrderViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
;+ ,
public 
class 
OrderViewModel 
{ 
private 
const 
string 
DEFAULT_STATUS '
=( )
$str* 3
;3 4
public		 

int		 
OrderNumber		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 

DateTimeOffset

 
	OrderDate

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 

decimal 
Total 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
Status 
=> 
DEFAULT_STATUS *
;* +
public 

Address 
? 
ShippingAddress #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} �

e/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/OrderItemViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
;+ ,
public 
class 
OrderItemViewModel 
{ 
public 

int 
	ProductId 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
? 
ProductName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

decimal 
	UnitPrice 
{ 
get "
;" #
set$ '
;' (
}) *
public 

decimal 
Discount 
=> 
$num  
;  !
public		 

int		 
Units		 
{		 
get		 
;		 
set		 
;		  
}		! "
public

 

string

 
?

 

PictureUrl

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
} �
g/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/OrderDetailViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
;+ ,
public 
class  
OrderDetailViewModel !
:" #
OrderViewModel$ 2
{ 
public 

List 
< 
OrderItemViewModel "
>" #

OrderItems$ .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
new? B
(B C
)C D
;D E
} �
z/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Manage/TwoFactorAuthenticationViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
;2 3
public 
class ,
 TwoFactorAuthenticationViewModel -
{ 
public 

bool 
HasAuthenticator  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

int 
RecoveryCodesLeft  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

bool 
Is2faEnabled 
{ 
get "
;" #
set$ '
;' (
}) *
} �
t/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Manage/ShowRecoveryCodesViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
;2 3
public 
class &
ShowRecoveryCodesViewModel '
{ 
public 

string 
[ 
] 
? 
RecoveryCodes "
{# $
get% (
;( )
set* -
;- .
}/ 0
} �
n/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Manage/SetPasswordViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
;2 3
public 
class  
SetPasswordViewModel !
{ 
[ 
Required 
] 
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& d
,d e
MinimumLengthf s
=t u
$numv w
)w x
]x y
[		 
DataType		 
(		 
DataType		 
.		 
Password		 
)		  
]		  !
[

 
Display

 
(

 
Name

 
=

 
$str

 "
)

" #
]

# $
public 

string 
? 
NewPassword 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 
DataType 
( 
DataType 
. 
Password 
)  
]  !
[ 
Display 
( 
Name 
= 
$str *
)* +
]+ ,
[ 
Compare 
( 
$str 
, 
ErrorMessage (
=) *
$str+ e
)e f
]f g
public 

string 
? 
ConfirmPassword "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
? 
StatusMessage  
{! "
get# &
;& '
set( +
;+ ,
}- .
} �
n/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Manage/RemoveLoginViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
;2 3
public 
class  
RemoveLoginViewModel !
{ 
[ 
Required 
] 
public 

string 
LoginProvider 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
[		 
Required		 
]		 
public

 

string

 
ProviderKey
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
# $
set

% (
;

( )
}

* +
=

, -
string

. 4
.

4 5
Empty

5 :
;

: ;
} �
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Manage/IndexViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
;2 3
public 
class 
IndexViewModel 
{ 
public 

string 
? 
Username 
{ 
get !
;! "
set# &
;& '
}( )
public		 

bool		 
IsEmailConfirmed		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
[ 
Required 
] 
[ 
EmailAddress 
] 
public 

string 
? 
Email 
{ 
get 
; 
set  #
;# $
}% &
[ 
Phone 

]
 
[ 
Display 
( 
Name 
= 
$str "
)" #
]# $
public 

string 
? 
PhoneNumber 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
? 
StatusMessage  
{! "
get# &
;& '
set( +
;+ ,
}- .
} �	
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Manage/ExternalLoginsViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
;2 3
public 
class #
ExternalLoginsViewModel $
{ 
public		 

IList		 
<		 
UserLoginInfo		 
>		 
?		  
CurrentLogins		! .
{		/ 0
get		1 4
;		4 5
set		6 9
;		9 :
}		; <
public

 

IList

 
<

  
AuthenticationScheme

 %
>

% &
?

& '
OtherLogins

( 3
{

4 5
get

6 9
;

9 :
set

; >
;

> ?
}

@ A
public 

bool 
ShowRemoveButton  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
? 
StatusMessage  
{! "
get# &
;& '
set( +
;+ ,
}- .
} �
v/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Manage/EnableAuthenticatorViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
;2 3
public 
class (
EnableAuthenticatorViewModel )
{ 
[		 
Required		 
]		 
[

 
StringLength

 
(

 
$num

 
,

 
ErrorMessage

 !
=

" #
$str

$ b
,

b c
MinimumLength

d q
=

r s
$num

t u
)

u v
]

v w
[ 
DataType 
( 
DataType 
. 
Text 
) 
] 
[ 
Display 
( 
Name 
= 
$str '
)' (
]( )
public 

string 
? 
Code 
{ 
get 
; 
set "
;" #
}$ %
[ 
	BindNever 
] 
public 

string 
? 
	SharedKey 
{ 
get "
;" #
set$ '
;' (
}) *
[ 
	BindNever 
] 
public 

string 
? 
AuthenticatorUri #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} �
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Manage/ChangePasswordViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
;2 3
public 
class #
ChangePasswordViewModel $
{ 
[ 
Required 
] 
[ 
DataType 
( 
DataType 
. 
Password 
)  
]  !
[		 
Display		 
(		 
Name		 
=		 
$str		 &
)		& '
]		' (
public

 

string

 
?

 
OldPassword

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 
Required 
] 
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& d
,d e
MinimumLengthf s
=t u
$numv w
)w x
]x y
[ 
DataType 
( 
DataType 
. 
Password 
)  
]  !
[ 
Display 
( 
Name 
= 
$str "
)" #
]# $
public 

string 
? 
NewPassword 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 
DataType 
( 
DataType 
. 
Password 
)  
]  !
[ 
Display 
( 
Name 
= 
$str *
)* +
]+ ,
[ 
Compare 
( 
$str 
, 
ErrorMessage (
=) *
$str+ e
)e f
]f g
public 

string 
? 
ConfirmPassword "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
? 
StatusMessage  
{! "
get# &
;& '
set( +
;+ ,
}- .
} �
e/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/File/FileViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
File, 0
;0 1
public 
class 
FileViewModel 
{ 
public 

string 
? 
FileName 
{ 
get !
;! "
set# &
;& '
}( )
public 

string 
? 
Url 
{ 
get 
; 
set !
;! "
}# $
public 

string 
? 

DataBase64 
{ 
get  #
;# $
set% (
;( )
}* +
} �
g/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/CatalogItemViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
;+ ,
public 
class  
CatalogItemViewModel !
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
string 
? 
Name 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 

PictureUri 
{ 
get  #
;# $
set% (
;( )
}* +
public 

decimal 
Price 
{ 
get 
; 
set  #
;# $
}% &
}		 �
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/CatalogIndexViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
;+ ,
public 
class !
CatalogIndexViewModel "
{ 
public 

List 
<  
CatalogItemViewModel $
>$ %
CatalogItems& 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
newC F
ListG K
<K L 
CatalogItemViewModelL `
>` a
(a b
)b c
;c d
public 

List 
< 
SelectListItem 
> 
?  
Brands! '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
new8 ;
List< @
<@ A
SelectListItemA O
>O P
(P Q
)Q R
;R S
public		 

List		 
<		 
SelectListItem		 
>		 
?		  
Types		! &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
=		5 6
new		7 :
List		; ?
<		? @
SelectListItem		@ N
>		N O
(		O P
)		P Q
;		Q R
public

 

int

 
?

 
BrandFilterApplied

 "
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
/ 0
public 

int 
? 
TypesFilterApplied "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
#
PaginationInfoViewModel "
?" #
PaginationInfo$ 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} �
k/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/BasketComponentViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
;+ ,
public 
class $
BasketComponentViewModel %
{ 
public 

int 

ItemsCount 
{ 
get 
;  
set! $
;$ %
}& '
} �
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Account/ResetPasswordViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Account, 3
;3 4
public 
class "
ResetPasswordViewModel #
{ 
[ 
Required 
] 
[ 
EmailAddress 
] 
public		 

string		 
?		 
Email		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
[ 
Required 
] 
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& d
,d e
MinimumLengthf s
=t u
$numv w
)w x
]x y
[ 
DataType 
( 
DataType 
. 
Password 
)  
]  !
public 

string 
? 
Password 
{ 
get !
;! "
set# &
;& '
}( )
[ 
DataType 
( 
DataType 
. 
Password 
)  
]  !
[ 
Display 
( 
Name 
= 
$str &
)& '
]' (
[ 
Compare 
( 
$str 
, 
ErrorMessage %
=& '
$str( ^
)^ _
]_ `
public 

string 
? 
ConfirmPassword "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 

string 
? 
Code 
{ 
get 
; 
set "
;" #
}$ %
} �
l/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Account/RegisterViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Account, 3
;3 4
public 
class 
RegisterViewModel 
{ 
[ 
Required 
] 
[ 
EmailAddress 
] 
[		 
Display		 
(		 
Name		 
=		 
$str		 
)		 
]		 
public

 

string

 
?

 
Email

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
[ 
Required 
] 
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& U
,U V
MinimumLengthW d
=e f
$numg h
)h i
]i j
[ 
DataType 
( 
DataType 
. 
Password 
)  
]  !
[ 
Display 
( 
Name 
= 
$str 
) 
]  
public 

string 
? 
Password 
{ 
get !
;! "
set# &
;& '
}( )
[ 
DataType 
( 
DataType 
. 
Password 
)  
]  !
[ 
Display 
( 
Name 
= 
$str &
)& '
]' (
[ 
Compare 
( 
$str 
, 
ErrorMessage %
=& '
$str( ^
)^ _
]_ `
public 

string 
? 
ConfirmPassword "
{# $
get% (
;( )
set* -
;- .
}/ 0
} �
p/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Account/LoginWith2faViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Account, 3
;3 4
public 
class !
LoginWith2faViewModel "
{ 
[ 
Required 
] 
[ 
StringLength 
( 
$num 
, 
ErrorMessage !
=" #
$str$ b
,b c
MinimumLengthd q
=r s
$numt u
)u v
]v w
[		 
DataType		 
(		 
DataType		 
.		 
Text		 
)		 
]		 
[

 
Display

 
(

 
Name

 
=

 
$str

 (
)

( )
]

) *
public 

string 
? 
TwoFactorCode  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 
Display 
( 
Name 
= 
$str +
)+ ,
], -
public 

bool 
RememberMachine 
{  !
get" %
;% &
set' *
;* +
}, -
public 

bool 

RememberMe 
{ 
get  
;  !
set" %
;% &
}' (
} �

i/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/ViewModels/Account/LoginViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Account, 3
;3 4
public 
class 
LoginViewModel 
{ 
[ 
Required 
] 
[ 
EmailAddress 
] 
public		 

string		 
?		 
Email		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
[ 
Required 
] 
[ 
DataType 
( 
DataType 
. 
Password 
)  
]  !
public 

string 
? 
Password 
{ 
get !
;! "
set# &
;& '
}( )
[ 
Display 
( 
Name 
= 
$str "
)" #
]# $
public 

bool 

RememberMe 
{ 
get  
;  !
set" %
;% &
}' (
} �
c/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/SlugifyParameterTransformer.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
;  !
public 
class '
SlugifyParameterTransformer (
:) *)
IOutboundParameterTransformer+ H
{ 
public 

string 
? 
TransformOutbound $
($ %
object% +
?+ ,
value- 2
)2 3
{		 
if

 

(

 
value

 
==

 
null

 
)

 
{

 
return

 #
null

$ (
;

( )
}

* +
string 
? 
str 
= 
value 
. 
ToString $
($ %
)% &
;& '
if 

( 
string 
. 
IsNullOrEmpty  
(  !
str! $
)$ %
)% &
{' (
return) /
null0 4
;4 5
}6 7
return 
Regex 
. 
Replace 
( 
str  
,  !
$str" 2
,2 3
$str4 ;
); <
.< =
ToLower= D
(D E
)E F
;F G
} 
} �V
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Services/CatalogViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
;) *
public 
class #
CatalogViewModelService $
:% &$
ICatalogViewModelService' ?
{ 
private 
readonly 
ILogger 
< #
CatalogViewModelService 4
>4 5
_logger6 =
;= >
private 
readonly 
IRepository  
<  !
CatalogItem! ,
>, -
_itemRepository. =
;= >
private 
readonly 
IRepository  
<  !
CatalogBrand! -
>- .
_brandRepository/ ?
;? @
private 
readonly 
IRepository  
<  !
CatalogType! ,
>, -
_typeRepository. =
;= >
private 
readonly 
IUriComposer !
_uriComposer" .
;. /
public 
#
CatalogViewModelService "
(" #
ILoggerFactory 
loggerFactory $
,$ %
IRepository 
< 
CatalogItem 
>  
itemRepository! /
,/ 0
IRepository 
< 
CatalogBrand  
>  !
brandRepository" 1
,1 2
IRepository 
< 
CatalogType 
>  
typeRepository! /
,/ 0
IUriComposer 
uriComposer  
)  !
{   
_logger!! 
=!! 
loggerFactory!! 
.!!  
CreateLogger!!  ,
<!!, -#
CatalogViewModelService!!- D
>!!D E
(!!E F
)!!F G
;!!G H
_itemRepository"" 
="" 
itemRepository"" (
;""( )
_brandRepository## 
=## 
brandRepository## *
;##* +
_typeRepository$$ 
=$$ 
typeRepository$$ (
;$$( )
_uriComposer%% 
=%% 
uriComposer%% "
;%%" #
}&& 
public(( 

async(( 
Task(( 
<(( !
CatalogIndexViewModel(( +
>((+ ,
GetCatalogItems((- <
(((< =
int((= @
	pageIndex((A J
,((J K
int((L O
	itemsPage((P Y
,((Y Z
int(([ ^
?((^ _
brandId((` g
,((g h
int((i l
?((l m
typeId((n t
)((t u
{)) 
_logger** 
.** 
LogInformation** 
(** 
$str** 8
)**8 9
;**9 :
var,, 
filterSpecification,, 
=,,  !
new,," %&
CatalogFilterSpecification,,& @
(,,@ A
brandId,,A H
,,,H I
typeId,,J P
),,P Q
;,,Q R
var-- (
filterPaginatedSpecification-- (
=--) *
new.. /
#CatalogFilterPaginatedSpecification.. 3
(..3 4
	itemsPage..4 =
*..> ?
	pageIndex..@ I
,..I J
	itemsPage..K T
,..T U
brandId..V ]
,..] ^
typeId.._ e
)..e f
;..f g
var11 
itemsOnPage11 
=11 
await11 
_itemRepository11  /
.11/ 0
	ListAsync110 9
(119 :(
filterPaginatedSpecification11: V
)11V W
;11W X
var22 

totalItems22 
=22 
await22 
_itemRepository22 .
.22. /

CountAsync22/ 9
(229 :
filterSpecification22: M
)22M N
;22N O
var44 
vm44 
=44 
new44 !
CatalogIndexViewModel44 *
(44* +
)44+ ,
{55 	
CatalogItems66 
=66 
itemsOnPage66 &
.66& '
Select66' -
(66- .
i66. /
=>660 2
new663 6 
CatalogItemViewModel667 K
(66K L
)66L M
{77 
Id88 
=88 
i88 
.88 
Id88 
,88 
Name99 
=99 
i99 
.99 
Name99 
,99 

PictureUri:: 
=:: 
_uriComposer:: )
.::) *
ComposePicUri::* 7
(::7 8
i::8 9
.::9 :

PictureUri::: D
)::D E
,::E F
Price;; 
=;; 
i;; 
.;; 
Price;; 
}<< 
)<< 
.<< 
ToList<< 
(<< 
)<< 
,<< 
Brands== 
=== 
(== 
await== 
	GetBrands== %
(==% &
)==& '
)==' (
.==( )
ToList==) /
(==/ 0
)==0 1
,==1 2
Types>> 
=>> 
(>> 
await>> 
GetTypes>> #
(>># $
)>>$ %
)>>% &
.>>& '
ToList>>' -
(>>- .
)>>. /
,>>/ 0
BrandFilterApplied?? 
=??  
brandId??! (
????) +
$num??, -
,??- .
TypesFilterApplied@@ 
=@@  
typeId@@! '
??@@( *
$num@@+ ,
,@@, -
PaginationInfoAA 
=AA 
newAA  #
PaginationInfoViewModelAA! 8
(AA8 9
)AA9 :
{BB 

ActualPageCC 
=CC 
	pageIndexCC &
,CC& '
ItemsPerPageDD 
=DD 
itemsOnPageDD *
.DD* +
CountDD+ 0
,DD0 1

TotalItemsEE 
=EE 

totalItemsEE '
,EE' (

TotalPagesFF 
=FF 
intFF  
.FF  !
ParseFF! &
(FF& '
MathFF' +
.FF+ ,
CeilingFF, 3
(FF3 4
(FF4 5
(FF5 6
decimalFF6 =
)FF= >

totalItemsFF> H
/FFI J
	itemsPageFFK T
)FFT U
)FFU V
.FFV W
ToStringFFW _
(FF_ `
)FF` a
)FFa b
}GG 
}HH 	
;HH	 

vmJJ 

.JJ
 
PaginationInfoJJ 
.JJ 
NextJJ 
=JJ  
(JJ! "
vmJJ" $
.JJ$ %
PaginationInfoJJ% 3
.JJ3 4

ActualPageJJ4 >
==JJ? A
vmJJB D
.JJD E
PaginationInfoJJE S
.JJS T

TotalPagesJJT ^
-JJ_ `
$numJJa b
)JJb c
?JJd e
$strJJf s
:JJt u
$strJJv x
;JJx y
vmKK 

.KK
 
PaginationInfoKK 
.KK 
PreviousKK "
=KK# $
(KK% &
vmKK& (
.KK( )
PaginationInfoKK) 7
.KK7 8

ActualPageKK8 B
==KKC E
$numKKF G
)KKG H
?KKI J
$strKKK X
:KKY Z
$strKK[ ]
;KK] ^
returnMM 
vmMM 
;MM 
}NN 
publicPP 

asyncPP 
TaskPP 
<PP 
IEnumerablePP !
<PP! "
SelectListItemPP" 0
>PP0 1
>PP1 2
	GetBrandsPP3 <
(PP< =
)PP= >
{QQ 
_loggerRR 
.RR 
LogInformationRR 
(RR 
$strRR 2
)RR2 3
;RR3 4
varSS 
brandsSS 
=SS 
awaitSS 
_brandRepositorySS +
.SS+ ,
	ListAsyncSS, 5
(SS5 6
)SS6 7
;SS7 8
varUU 
itemsUU 
=UU 
brandsUU 
.VV 
SelectVV 
(VV 
brandVV 
=>VV 
newVV  
SelectListItemVV! /
(VV/ 0
)VV0 1
{VV2 3
ValueVV4 9
=VV: ;
brandVV< A
.VVA B
IdVVB D
.VVD E
ToStringVVE M
(VVM N
)VVN O
,VVO P
TextVVQ U
=VVV W
brandVVX ]
.VV] ^
BrandVV^ c
}VVd e
)VVe f
.WW 
OrderByWW 
(WW 
bWW 
=>WW 
bWW 
.WW 
TextWW  
)WW  !
.XX 
ToListXX 
(XX 
)XX 
;XX 
varZZ 
allItemZZ 
=ZZ 
newZZ 
SelectListItemZZ (
(ZZ( )
)ZZ) *
{ZZ+ ,
ValueZZ- 2
=ZZ3 4
nullZZ5 9
,ZZ9 :
TextZZ; ?
=ZZ@ A
$strZZB G
,ZZG H
SelectedZZI Q
=ZZR S
trueZZT X
}ZZY Z
;ZZZ [
items[[ 
.[[ 
Insert[[ 
([[ 
$num[[ 
,[[ 
allItem[[ 
)[[  
;[[  !
return]] 
items]] 
;]] 
}^^ 
public`` 

async`` 
Task`` 
<`` 
IEnumerable`` !
<``! "
SelectListItem``" 0
>``0 1
>``1 2
GetTypes``3 ;
(``; <
)``< =
{aa 
_loggerbb 
.bb 
LogInformationbb 
(bb 
$strbb 1
)bb1 2
;bb2 3
varcc 
typescc 
=cc 
awaitcc 
_typeRepositorycc )
.cc) *
	ListAsynccc* 3
(cc3 4
)cc4 5
;cc5 6
varee 
itemsee 
=ee 
typesee 
.ff 
Selectff 
(ff 
typeff 
=>ff 
newff 
SelectListItemff  .
(ff. /
)ff/ 0
{ff1 2
Valueff3 8
=ff9 :
typeff; ?
.ff? @
Idff@ B
.ffB C
ToStringffC K
(ffK L
)ffL M
,ffM N
TextffO S
=ffT U
typeffV Z
.ffZ [
Typeff[ _
}ff` a
)ffa b
.gg 
OrderBygg 
(gg 
tgg 
=>gg 
tgg 
.gg 
Textgg  
)gg  !
.hh 
ToListhh 
(hh 
)hh 
;hh 
varjj 
allItemjj 
=jj 
newjj 
SelectListItemjj (
(jj( )
)jj) *
{jj+ ,
Valuejj- 2
=jj3 4
nulljj5 9
,jj9 :
Textjj; ?
=jj@ A
$strjjB G
,jjG H
SelectedjjI Q
=jjR S
truejjT X
}jjY Z
;jjZ [
itemskk 
.kk 
Insertkk 
(kk 
$numkk 
,kk 
allItemkk 
)kk  
;kk  !
returnmm 
itemsmm 
;mm 
}nn 
}oo �
l/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Services/CatalogItemViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
;) *
public		 
class		 '
CatalogItemViewModelService		 (
:		) *(
ICatalogItemViewModelService		+ G
{

 
private 
readonly 
IRepository  
<  !
CatalogItem! ,
>, -"
_catalogItemRepository. D
;D E
public 
'
CatalogItemViewModelService &
(& '
IRepository' 2
<2 3
CatalogItem3 >
>> ?!
catalogItemRepository@ U
)U V
{ "
_catalogItemRepository 
=  !
catalogItemRepository! 6
;6 7
} 
public 

async 
Task 
UpdateCatalogItem '
(' ( 
CatalogItemViewModel( <
	viewModel= F
)F G
{ 
var 
existingCatalogItem 
=  !
await" '"
_catalogItemRepository( >
.> ?
GetByIdAsync? K
(K L
	viewModelL U
.U V
IdV X
)X Y
;Y Z
Guard 
. 
Against 
. 
Null 
( 
existingCatalogItem .
,. /
nameof0 6
(6 7
existingCatalogItem7 J
)J K
)K L
;L M
CatalogItem 
. 
CatalogItemDetails &
details' .
=/ 0
new1 4
(4 5
	viewModel5 >
.> ?
Name? C
,C D
existingCatalogItemE X
.X Y
DescriptionY d
,d e
	viewModelf o
.o p
Pricep u
)u v
;v w
existingCatalogItem 
. 
UpdateDetails )
() *
details* 1
)1 2
;2 3
await "
_catalogItemRepository $
.$ %
UpdateAsync% 0
(0 1
existingCatalogItem1 D
)D E
;E F
} 
} �=
g/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Services/BasketViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
;) *
public

 
class

 "
BasketViewModelService

 #
:

$ %#
IBasketViewModelService

& =
{ 
private 
readonly 
IRepository  
<  !
Basket! '
>' (
_basketRepository) :
;: ;
private 
readonly 
IUriComposer !
_uriComposer" .
;. /
private 
readonly 
IBasketQueryService (
_basketQueryService) <
;< =
private 
readonly 
IRepository  
<  !
CatalogItem! ,
>, -
_itemRepository. =
;= >
public 
"
BasketViewModelService !
(! "
IRepository" -
<- .
Basket. 4
>4 5
basketRepository6 F
,F G
IRepository 
< 
CatalogItem 
>  
itemRepository! /
,/ 0
IUriComposer 
uriComposer  
,  !
IBasketQueryService 
basketQueryService .
). /
{ 
_basketRepository 
= 
basketRepository ,
;, -
_uriComposer 
= 
uriComposer "
;" #
_basketQueryService 
= 
basketQueryService 0
;0 1
_itemRepository 
= 
itemRepository (
;( )
} 
public 

async 
Task 
< 
BasketViewModel %
>% &$
GetOrCreateBasketForUser' ?
(? @
string@ F
userNameG O
)O P
{ 
var 

basketSpec 
= 
new (
BasketWithItemsSpecification 9
(9 :
userName: B
)B C
;C D
var 
basket 
= 
( 
await 
_basketRepository -
.- .
FirstOrDefaultAsync. A
(A B

basketSpecB L
)L M
)M N
;N O
if!! 

(!! 
basket!! 
==!! 
null!! 
)!! 
{"" 	
return## 
await## 
CreateBasketForUser## ,
(##, -
userName##- 5
)##5 6
;##6 7
}$$ 	
var%% 
	viewModel%% 
=%% 
await%% 
Map%% !
(%%! "
basket%%" (
)%%( )
;%%) *
return&& 
	viewModel&& 
;&& 
}'' 
private)) 
async)) 
Task)) 
<)) 
BasketViewModel)) &
>))& '
CreateBasketForUser))( ;
()); <
string))< B
userId))C I
)))I J
{** 
var++ 
basket++ 
=++ 
new++ 
Basket++ 
(++  
userId++  &
)++& '
;++' (
await,, 
_basketRepository,, 
.,,  
AddAsync,,  (
(,,( )
basket,,) /
),,/ 0
;,,0 1
return.. 
new.. 
BasketViewModel.. "
(.." #
)..# $
{// 	
BuyerId00 
=00 
basket00 
.00 
BuyerId00 $
,00$ %
Id11 
=11 
basket11 
.11 
Id11 
,11 
}22 	
;22	 

}33 
private55 
async55 
Task55 
<55 
List55 
<55 
BasketItemViewModel55 /
>55/ 0
>550 1
GetBasketItems552 @
(55@ A
IReadOnlyCollection55A T
<55T U

BasketItem55U _
>55_ `
basketItems55a l
)55l m
{66 
var77 %
catalogItemsSpecification77 %
=77& '
new77( +%
CatalogItemsSpecification77, E
(77E F
basketItems77F Q
.77Q R
Select77R X
(77X Y
b77Y Z
=>77[ ]
b77^ _
.77_ `
CatalogItemId77` m
)77m n
.77n o
ToArray77o v
(77v w
)77w x
)77x y
;77y z
var88 
catalogItems88 
=88 
await88  
_itemRepository88! 0
.880 1
	ListAsync881 :
(88: ;%
catalogItemsSpecification88; T
)88T U
;88U V
var:: 
items:: 
=:: 
basketItems:: 
.::  
Select::  &
(::& '

basketItem::' 1
=>::2 4
{;; 	
var<< 
catalogItem<< 
=<< 
catalogItems<< *
.<<* +
First<<+ 0
(<<0 1
c<<1 2
=><<3 5
c<<6 7
.<<7 8
Id<<8 :
==<<; =

basketItem<<> H
.<<H I
CatalogItemId<<I V
)<<V W
;<<W X
var>> 
basketItemViewModel>> #
=>>$ %
new>>& )
BasketItemViewModel>>* =
{?? 
Id@@ 
=@@ 

basketItem@@ 
.@@  
Id@@  "
,@@" #
	UnitPriceAA 
=AA 

basketItemAA &
.AA& '
	UnitPriceAA' 0
,AA0 1
QuantityBB 
=BB 

basketItemBB %
.BB% &
QuantityBB& .
,BB. /
CatalogItemIdCC 
=CC 

basketItemCC  *
.CC* +
CatalogItemIdCC+ 8
,CC8 9

PictureUrlDD 
=DD 
_uriComposerDD )
.DD) *
ComposePicUriDD* 7
(DD7 8
catalogItemDD8 C
.DDC D

PictureUriDDD N
)DDN O
,DDO P
ProductNameEE 
=EE 
catalogItemEE )
.EE) *
NameEE* .
}FF 
;FF 
returnGG 
basketItemViewModelGG &
;GG& '
}HH 	
)HH	 

.HH
 
ToListHH 
(HH 
)HH 
;HH 
returnJJ 
itemsJJ 
;JJ 
}KK 
publicMM 

asyncMM 
TaskMM 
<MM 
BasketViewModelMM %
>MM% &
MapMM' *
(MM* +
BasketMM+ 1
basketMM2 8
)MM8 9
{NN 
returnOO 
newOO 
BasketViewModelOO "
(OO" #
)OO# $
{PP 	
BuyerIdQQ 
=QQ 
basketQQ 
.QQ 
BuyerIdQQ $
,QQ$ %
IdRR 
=RR 
basketRR 
.RR 
IdRR 
,RR 
ItemsSS 
=SS 
awaitSS 
GetBasketItemsSS (
(SS( )
basketSS) /
.SS/ 0
ItemsSS0 5
)SS5 6
}TT 	
;TT	 

}UU 
publicWW 

asyncWW 
TaskWW 
<WW 
intWW 
>WW !
CountTotalBasketItemsWW 0
(WW0 1
stringWW1 7
usernameWW8 @
)WW@ A
{XX 
varYY 
counterYY 
=YY 
awaitYY 
_basketQueryServiceYY /
.YY/ 0!
CountTotalBasketItemsYY0 E
(YYE F
usernameYYF N
)YYN O
;YYO P
return[[ 
counter[[ 
;[[ 
}\\ 
}]] �&
n/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Services/CachedCatalogViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
;) *
public

 
class

 )
CachedCatalogViewModelService

 *
:

+ ,$
ICatalogViewModelService

- E
{ 
private 
readonly 
IMemoryCache !
_cache" (
;( )
private 
readonly #
CatalogViewModelService ,$
_catalogViewModelService- E
;E F
public 
)
CachedCatalogViewModelService (
(( )
IMemoryCache) 5
cache6 ;
,; <#
CatalogViewModelService #
catalogViewModelService  7
)7 8
{ 
_cache 
= 
cache 
; $
_catalogViewModelService  
=! "#
catalogViewModelService# :
;: ;
} 
public 

async 
Task 
< 
IEnumerable !
<! "
SelectListItem" 0
>0 1
>1 2
	GetBrands3 <
(< =
)= >
{ 
return 
( 
await 
_cache 
. 
GetOrCreateAsync -
(- .
CacheHelpers. :
.: ;"
GenerateBrandsCacheKey; Q
(Q R
)R S
,S T
asyncU Z
entry[ `
=>a c
{ 
entry 
. 
SlidingExpiration +
=, -
CacheHelpers. :
.: ; 
DefaultCacheDuration; O
;O P
return 
await  $
_catalogViewModelService! 9
.9 :
	GetBrands: C
(C D
)D E
;E F
} 
) 
) 
?? 
new 
List 
<  
SelectListItem  .
>. /
(/ 0
)0 1
;1 2
} 
public 

async 
Task 
< !
CatalogIndexViewModel +
>+ ,
GetCatalogItems- <
(< =
int= @
	pageIndexA J
,J K
intL O
	itemsPageP Y
,Y Z
int[ ^
?^ _
brandId` g
,g h
inti l
?l m
typeIdn t
)t u
{   
var!! 
cacheKey!! 
=!! 
CacheHelpers!! #
.!!# $'
GenerateCatalogItemCacheKey!!$ ?
(!!? @
	pageIndex!!@ I
,!!I J
	Constants!!K T
.!!T U
ITEMS_PER_PAGE!!U c
,!!c d
brandId!!e l
,!!l m
typeId!!n t
)!!t u
;!!u v
return## 
(## 
await## 
_cache## 
.## 
GetOrCreateAsync## -
(##- .
cacheKey##. 6
,##6 7
async##8 =
entry##> C
=>##D F
{$$ 	
entry%% 
.%% 
SlidingExpiration%% #
=%%$ %
CacheHelpers%%& 2
.%%2 3 
DefaultCacheDuration%%3 G
;%%G H
return&& 
await&& $
_catalogViewModelService&& 1
.&&1 2
GetCatalogItems&&2 A
(&&A B
	pageIndex&&B K
,&&K L
	itemsPage&&M V
,&&V W
brandId&&X _
,&&_ `
typeId&&a g
)&&g h
;&&h i
}'' 	
)''	 

)''
 
??'' 
new'' !
CatalogIndexViewModel'' (
(''( )
)'') *
;''* +
}(( 
public** 

async** 
Task** 
<** 
IEnumerable** !
<**! "
SelectListItem**" 0
>**0 1
>**1 2
GetTypes**3 ;
(**; <
)**< =
{++ 
return,, 
(,, 
await,, 
_cache,, 
.,, 
GetOrCreateAsync,, -
(,,- .
CacheHelpers,,. :
.,,: ;!
GenerateTypesCacheKey,,; P
(,,P Q
),,Q R
,,,R S
async,,T Y
entry,,Z _
=>,,` b
{-- 	
entry.. 
... 
SlidingExpiration.. #
=..$ %
CacheHelpers..& 2
...2 3 
DefaultCacheDuration..3 G
;..G H
return// 
await// $
_catalogViewModelService// 1
.//1 2
GetTypes//2 :
(//: ;
)//; <
;//< =
}00 	
)00	 

)00
 
??00 
new00 
List00 
<00 
SelectListItem00 &
>00& '
(00' (
)00( )
;00) *
}11 
}22 ��
O/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Logging 
. 

AddConsole 
( 
) 
; 
if 
( 
builder 
. 
Environment 
. 
IsDevelopment %
(% &
)& '
||( *
builder+ 2
.2 3
Environment3 >
.> ?
EnvironmentName? N
==O Q
$strR Z
)Z [
{[ \
	Microsoft 
. 
eShopWeb 
. 
Infrastructure %
.% &
Dependencies& 2
.2 3
ConfigureServices3 D
(D E
builderE L
.L M
ConfigurationM Z
,Z [
builder\ c
.c d
Servicesd l
)l m
;m n
} 
else 
{ 
var 

credential 
= 
new "
ChainedTokenCredential /
(/ 0
new0 3'
AzureDeveloperCliCredential4 O
(O P
)P Q
,Q R
newS V"
DefaultAzureCredentialW m
(m n
)n o
)o p
;p q
builder   
.   
Configuration   
.   
AddAzureKeyVault   *
(  * +
new  + .
Uri  / 2
(  2 3
builder  3 :
.  : ;
Configuration  ; H
[  H I
$str  I c
]  c d
??  e g
$str  h j
)  j k
,  k l

credential  m w
)  w x
;  x y
builder!! 
.!! 
Services!! 
.!! 
AddDbContext!! !
<!!! "
CatalogContext!!" 0
>!!0 1
(!!1 2
c!!2 3
=>!!4 6
{"" 
var## 
connectionString## 
=## 
builder## &
.##& '
Configuration##' 4
[##4 5
builder##5 <
.##< =
Configuration##= J
[##J K
$str##K t
]##t u
??##v x
$str##y {
]##{ |
;##| }
c$$ 	
.$$	 

UseSqlServer$$
 
($$ 
connectionString$$ '
,$$' (

sqlOptions$$) 3
=>$$4 6

sqlOptions$$7 A
.$$A B 
EnableRetryOnFailure$$B V
($$V W
)$$W X
)$$X Y
;$$Y Z
}%% 
)%% 
;%% 
builder&& 
.&& 
Services&& 
.&& 
AddDbContext&& !
<&&! " 
AppIdentityDbContext&&" 6
>&&6 7
(&&7 8
options&&8 ?
=>&&@ B
{'' 
var(( 
connectionString(( 
=(( 
builder(( &
.((& '
Configuration((' 4
[((4 5
builder((5 <
.((< =
Configuration((= J
[((J K
$str((K u
]((u v
??((w y
$str((z |
]((| }
;((} ~
options)) 
.)) 
UseSqlServer)) 
()) 
connectionString)) -
,))- .

sqlOptions))/ 9
=>)): <

sqlOptions))= G
.))G H 
EnableRetryOnFailure))H \
())\ ]
)))] ^
)))^ _
;))_ `
}** 
)** 
;** 
}++ 
builder-- 
.-- 
Services-- 
.-- 
AddCookieSettings-- "
(--" #
)--# $
;--$ %
builder// 
.// 
Services// 
.// 
AddAuthentication// "
(//" #(
CookieAuthenticationDefaults//# ?
.//? @ 
AuthenticationScheme//@ T
)//T U
.00 
	AddCookie00 
(00 
options00 
=>00 
{11 
options22 
.22 
Cookie22 
.22 
HttpOnly22 
=22  !
true22" &
;22& '
options33 
.33 
Cookie33 
.33 
SecurePolicy33 #
=33$ %
CookieSecurePolicy33& 8
.338 9
Always339 ?
;33? @
options44 
.44 
Cookie44 
.44 
SameSite44 
=44  !
SameSiteMode44" .
.44. /
Lax44/ 2
;442 3
}55 
)55 
;55 
builder77 
.77 
Services77 
.77 
AddIdentity77 
<77 
ApplicationUser77 ,
,77, -
IdentityRole77. :
>77: ;
(77; <
)77< =
.88 
AddDefaultUI88 
(88 
)88 
.99 $
AddEntityFrameworkStores99 $
<99$ % 
AppIdentityDbContext99% 9
>999 :
(99: ;
)99; <
.:: $
AddDefaultTokenProviders:: 4
(::4 5
)::5 6
;::6 7
builder<< 
.<< 
Services<< 
.<< 
	AddScoped<< 
<<< 
ITokenClaimsService<< .
,<<. /%
IdentityTokenClaimService<<0 I
><<I J
(<<J K
)<<K L
;<<L M
builder== 
.== 
Configuration== 
.== #
AddEnvironmentVariables== -
(==- .
)==. /
;==/ 0
builder>> 
.>> 
Services>> 
.>> 
AddCoreServices>>  
(>>  !
builder>>! (
.>>( )
Configuration>>) 6
)>>6 7
;>>7 8
builder?? 
.?? 
Services?? 
.?? 
AddWebServices?? 
(??  
builder??  '
.??' (
Configuration??( 5
)??5 6
;??6 7
builderBB 
.BB 
ServicesBB 
.BB 
AddMemoryCacheBB 
(BB  
)BB  !
;BB! "
builderCC 
.CC 
ServicesCC 
.CC 

AddRoutingCC 
(CC 
optionsCC #
=>CC$ &
{DD 
optionsGG 
.GG 
ConstraintMapGG 
[GG 
$strGG #
]GG# $
=GG% &
typeofGG' -
(GG- .'
SlugifyParameterTransformerGG. I
)GGI J
;GGJ K
}HH 
)HH 
;HH 
builderJJ 
.JJ 
ServicesJJ 
.JJ 
AddMvcJJ 
(JJ 
optionsJJ 
=>JJ  "
{KK 
optionsLL 
.LL 
ConventionsLL 
.LL 
AddLL 
(LL 
newLL +
RouteTokenTransformerConventionLL  ?
(LL? @
newMM '
SlugifyParameterTransformerMM ,
(MM, -
)MM- .
)MM. /
)MM/ 0
;MM0 1
}OO 
)OO 
;OO 
builderPP 
.PP 
ServicesPP 
.PP #
AddControllersWithViewsPP (
(PP( )
)PP) *
;PP* +
builderQQ 
.QQ 
ServicesQQ 
.QQ 
AddRazorPagesQQ 
(QQ 
optionsQQ &
=>QQ' )
{RR 
optionsSS 
.SS 
ConventionsSS 
.SS 
AuthorizePageSS %
(SS% &
$strSS& 8
)SS8 9
;SS9 :
}TT 
)TT 
;TT 
builderUU 
.UU 
ServicesUU 
.UU "
AddHttpContextAccessorUU '
(UU' (
)UU( )
;UU) *
builderVV 
.VV 
ServicesVV 
.WW 
AddHealthChecksWW 
(WW 
)WW 
.XX 
AddCheckXX 
<XX 
ApiHealthCheckXX 
>XX 
(XX 
$strXX 0
,XX0 1
tagsXX2 6
:XX6 7
newXX8 ;
[XX; <
]XX< =
{XX> ?
$strXX@ P
}XXQ R
)XXR S
.YY 
AddCheckYY 
<YY 
HomePageHealthCheckYY !
>YY! "
(YY" #
$strYY# ;
,YY; <
tagsYY= A
:YYA B
newYYC F
[YYF G
]YYG H
{YYI J
$strYYK `
}YYa b
)YYb c
;YYc d
builderZZ 
.ZZ 
ServicesZZ 
.ZZ 
	ConfigureZZ 
<ZZ 
ServiceConfigZZ (
>ZZ( )
(ZZ) *
configZZ* 0
=>ZZ1 3
{[[ 
config\\ 

.\\
 
Services\\ 
=\\ 
new\\ 
List\\ 
<\\ 
ServiceDescriptor\\ 0
>\\0 1
(\\1 2
builder\\2 9
.\\9 :
Services\\: B
)\\B C
;\\C D
config]] 

.]]
 
Path]] 
=]] 
$str]]  
;]]  !
}^^ 
)^^ 
;^^ 
varaa 
configSectionaa 
=aa 
builderaa 
.aa 
Configurationaa )
.aa) *
GetRequiredSectionaa* <
(aa< = 
BaseUrlConfigurationaa= Q
.aaQ R
CONFIG_NAMEaaR ]
)aa] ^
;aa^ _
builderbb 
.bb 
Servicesbb 
.bb 
	Configurebb 
<bb  
BaseUrlConfigurationbb /
>bb/ 0
(bb0 1
configSectionbb1 >
)bb> ?
;bb? @
varcc 
baseUrlConfigcc 
=cc 
configSectioncc !
.cc! "
Getcc" %
<cc% & 
BaseUrlConfigurationcc& :
>cc: ;
(cc; <
)cc< =
;cc= >
builderff 
.ff 
Servicesff 
.ff 
	AddScopedff 
<ff 

HttpClientff %
>ff% &
(ff& '
sff' (
=>ff) +
newff, /

HttpClientff0 :
{gg 
BaseAddresshh 
=hh 
newhh 
Urihh 
(hh 
baseUrlConfighh '
!hh' (
.hh( )
WebBasehh) 0
)hh0 1
}ii 
)ii 
;ii 
builderll 
.ll 
Servicesll 
.ll #
AddBlazoredLocalStoragell (
(ll( )
)ll) *
;ll* +
buildermm 
.mm 
Servicesmm 
.mm 
AddServerSideBlazormm $
(mm$ %
)mm% &
;mm& '
buildernn 
.nn 
Servicesnn 
.nn 
	AddScopednn 
<nn 
ToastServicenn '
>nn' (
(nn( )
)nn) *
;nn* +
builderoo 
.oo 
Servicesoo 
.oo 
	AddScopedoo 
<oo 
HttpServiceoo &
>oo& '
(oo' (
)oo( )
;oo) *
builderpp 
.pp 
Servicespp 
.pp 
AddBlazorServicespp "
(pp" #
)pp# $
;pp$ %
builderrr 
.rr 
Servicesrr 
.rr 3
'AddDatabaseDeveloperPageExceptionFilterrr 8
(rr8 9
)rr9 :
;rr: ;
vartt 
apptt 
=tt 	
buildertt
 
.tt 
Buildtt 
(tt 
)tt 
;tt 
appvv 
.vv 
Loggervv 

.vv
 
LogInformationvv 
(vv 
$strvv *
)vv* +
;vv+ ,
appxx 
.xx 
Loggerxx 

.xx
 
LogInformationxx 
(xx 
$strxx /
)xx/ 0
;xx0 1
usingzz 
(zz 
varzz 

scopezz 
=zz 
appzz 
.zz 
Serviceszz 
.zz  
CreateScopezz  +
(zz+ ,
)zz, -
)zz- .
{{{ 
var|| 
scopedProvider|| 
=|| 
scope|| 
.|| 
ServiceProvider|| .
;||. /
try}} 
{~~ 
var 
catalogContext 
= 
scopedProvider +
.+ ,
GetRequiredService, >
<> ?
CatalogContext? M
>M N
(N O
)O P
;P Q
await
��  
CatalogContextSeed
��  
.
��  !
	SeedAsync
��! *
(
��* +
catalogContext
��+ 9
,
��9 :
app
��; >
.
��> ?
Logger
��? E
)
��E F
;
��F G
var
�� 
userManager
�� 
=
�� 
scopedProvider
�� (
.
��( ) 
GetRequiredService
��) ;
<
��; <
UserManager
��< G
<
��G H
ApplicationUser
��H W
>
��W X
>
��X Y
(
��Y Z
)
��Z [
;
��[ \
var
�� 
roleManager
�� 
=
�� 
scopedProvider
�� (
.
��( ) 
GetRequiredService
��) ;
<
��; <
RoleManager
��< G
<
��G H
IdentityRole
��H T
>
��T U
>
��U V
(
��V W
)
��W X
;
��X Y
var
�� 
identityContext
�� 
=
�� 
scopedProvider
�� ,
.
��, - 
GetRequiredService
��- ?
<
��? @"
AppIdentityDbContext
��@ T
>
��T U
(
��U V
)
��V W
;
��W X
await
�� &
AppIdentityDbContextSeed
�� &
.
��& '
	SeedAsync
��' 0
(
��0 1
identityContext
��1 @
,
��@ A
userManager
��B M
,
��M N
roleManager
��O Z
)
��Z [
;
��[ \
}
�� 
catch
�� 	
(
��
 
	Exception
�� 
ex
�� 
)
�� 
{
�� 
app
�� 
.
�� 
Logger
�� 
.
�� 
LogError
�� 
(
�� 
ex
�� 
,
�� 
$str
��  C
)
��C D
;
��D E
}
�� 
}�� 
var�� 
catalogBaseUrl
�� 
=
�� 
builder
�� 
.
�� 
Configuration
�� *
.
��* +
GetValue
��+ 3
(
��3 4
typeof
��4 :
(
��: ;
string
��; A
)
��A B
,
��B C
$str
��D T
)
��T U
as
��V X
string
��Y _
;
��_ `
if�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� 
(
�� 
catalogBaseUrl
�� (
)
��( )
)
��) *
{�� 
app
�� 
.
�� 
Use
�� 
(
�� 
(
�� 
context
�� 
,
�� 
next
�� 
)
�� 
=>
�� 
{
�� 
context
�� 
.
�� 
Request
�� 
.
�� 
PathBase
��  
=
��! "
new
��# &

PathString
��' 1
(
��1 2
catalogBaseUrl
��2 @
)
��@ A
;
��A B
return
�� 
next
�� 
(
�� 
)
�� 
;
�� 
}
�� 
)
�� 
;
�� 
}�� 
app�� 
.
�� 
UseHealthChecks
�� 
(
�� 
$str
�� 
,
�� 
new
��  
HealthCheckOptions
�� 
{
�� 
ResponseWriter
�� 
=
�� 
async
�� 
(
��  
context
��  '
,
��' (
report
��) /
)
��/ 0
=>
��1 3
{
�� 	
var
�� 
result
�� 
=
�� 
new
�� 
{
�� 
status
�� 
=
�� 
report
�� 
.
��  
Status
��  &
.
��& '
ToString
��' /
(
��/ 0
)
��0 1
,
��1 2
errors
�� 
=
�� 
report
�� 
.
��  
Entries
��  '
.
��' (
Select
��( .
(
��. /
e
��/ 0
=>
��1 3
new
��4 7
{
�� 
key
�� 
=
�� 
e
�� 
.
�� 
Key
�� 
,
��  
value
�� 
=
�� 
Enum
��  
.
��  !
GetName
��! (
(
��( )
typeof
��) /
(
��/ 0
HealthStatus
��0 <
)
��< =
,
��= >
e
��? @
.
��@ A
Value
��A F
.
��F G
Status
��G M
)
��M N
}
�� 
)
�� 
}
�� 
.
�� 
ToJson
�� 
(
�� 
)
�� 
;
�� 
context
�� 
.
�� 
Response
�� 
.
�� 
ContentType
�� (
=
��) *
MediaTypeNames
��+ 9
.
��9 :
Application
��: E
.
��E F
Json
��F J
;
��J K
await
�� 
context
�� 
.
�� 
Response
�� "
.
��" #

WriteAsync
��# -
(
��- .
result
��. 4
)
��4 5
;
��5 6
}
�� 	
}
�� 
)
�� 
;
�� 
if�� 
(
�� 
app
�� 
.
�� 
Environment
�� 
.
�� 
IsDevelopment
�� !
(
��! "
)
��" #
||
��$ &
app
��' *
.
��* +
Environment
��+ 6
.
��6 7
EnvironmentName
��7 F
==
��G I
$str
��J R
)
��R S
{�� 
app
�� 
.
�� 
Logger
�� 
.
�� 
LogInformation
�� 
(
�� 
$str
�� @
)
��@ A
;
��A B
app
�� 
.
�� '
UseDeveloperExceptionPage
�� !
(
��! "
)
��" #
;
��# $
app
�� 
.
�� *
UseShowAllServicesMiddleware
�� $
(
��$ %
)
��% &
;
��& '
app
�� 
.
�� #
UseMigrationsEndPoint
�� 
(
�� 
)
�� 
;
��  
app
�� 
.
�� %
UseWebAssemblyDebugging
�� 
(
��  
)
��  !
;
��! "
}�� 
else�� 
{�� 
app
�� 
.
�� 
Logger
�� 
.
�� 
LogInformation
�� 
(
�� 
$str
�� D
)
��D E
;
��E F
app
�� 
.
�� !
UseExceptionHandler
�� 
(
�� 
$str
�� $
)
��$ %
;
��% &
app
�� 
.
�� 
UseHsts
�� 
(
�� 
)
�� 
;
�� 
}�� 
app�� 
.
�� !
UseHttpsRedirection
�� 
(
�� 
)
�� 
;
�� 
app�� 
.
�� %
UseBlazorFrameworkFiles
�� 
(
�� 
)
�� 
;
�� 
app�� 
.
�� 
UseStaticFiles
�� 
(
�� 
)
�� 
;
�� 
app�� 
.
�� 

UseRouting
�� 
(
�� 
)
�� 
;
�� 
app�� 
.
�� 
UseCookiePolicy
�� 
(
�� 
)
�� 
;
�� 
app�� 
.
�� 
UseAuthentication
�� 
(
�� 
)
�� 
;
�� 
app�� 
.
�� 
UseAuthorization
�� 
(
�� 
)
�� 
;
�� 
app�� 
.
��  
MapControllerRoute
�� 
(
�� 
$str
��  
,
��  !
$str
��" Z
)
��Z [
;
��[ \
app�� 
.
�� 
MapRazorPages
�� 
(
�� 
)
�� 
;
�� 
app�� 
.
�� 
MapHealthChecks
�� 
(
�� 
$str
�� ,
,
��, -
new
��. 1 
HealthCheckOptions
��2 D
{
��E F
	Predicate
��G P
=
��Q R
check
��S X
=>
��Y [
check
��\ a
.
��a b
Tags
��b f
.
��f g
Contains
��g o
(
��o p
$str��p �
)��� �
}��� �
)��� �
;��� �
app�� 
.
�� 
MapHealthChecks
�� 
(
�� 
$str
�� &
,
��& '
new
��( + 
HealthCheckOptions
��, >
{
��? @
	Predicate
��A J
=
��K L
check
��M R
=>
��S U
check
��V [
.
��[ \
Tags
��\ `
.
��` a
Contains
��a i
(
��i j
$str
��j z
)
��z {
}
��| }
)
��} ~
;
��~ 
app�� 
.
�� 
MapFallbackToFile
�� 
(
�� 
$str
�� "
)
��" #
;
��# $
app�� 
.
�� 
Logger
�� 

.
��
 
LogInformation
�� 
(
�� 
$str
�� %
)
��% &
;
��& '
app�� 
.
�� 
Run
�� 
(
�� 
)
�� 	
;
��	 
�"
v/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Shared/Components/BasketComponent/Basket.cs
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
 
Web

  
.

  !
Pages

! &
.

& '
Shared

' -
.

- .

Components

. 8
.

8 9
BasketComponent

9 H
;

H I
public 
class 
Basket 
: 
ViewComponent #
{ 
private 
readonly #
IBasketViewModelService ,
_basketService- ;
;; <
private 
readonly 
SignInManager "
<" #
ApplicationUser# 2
>2 3
_signInManager4 B
;B C
public 

Basket 
( #
IBasketViewModelService )
basketService* 7
,7 8
SignInManager !
<! "
ApplicationUser" 1
>1 2
signInManager3 @
)@ A
{ 
_basketService 
= 
basketService &
;& '
_signInManager 
= 
signInManager &
;& '
} 
public 

async 
Task 
<  
IViewComponentResult *
>* +
InvokeAsync, 7
(7 8
)8 9
{ 
var 
vm 
= 
new $
BasketComponentViewModel -
{ 	

ItemsCount 
= 
await !
CountTotalBasketItems 4
(4 5
)5 6
} 	
;	 

return 
View 
( 
vm 
) 
; 
} 
private!! 
async!! 
Task!! 
<!! 
int!! 
>!! !
CountTotalBasketItems!! 1
(!!1 2
)!!2 3
{"" 
if## 

(## 
_signInManager## 
.## 

IsSignedIn## %
(##% &
HttpContext##& 1
.##1 2
User##2 6
)##6 7
)##7 8
{$$ 	
Guard%% 
.%% 
Against%% 
.%% 
Null%% 
(%% 
User%% #
?%%# $
.%%$ %
Identity%%% -
?%%- .
.%%. /
Name%%/ 3
,%%3 4
nameof%%5 ;
(%%; <
User%%< @
.%%@ A
Identity%%A I
.%%I J
Name%%J N
)%%N O
)%%O P
;%%P Q
return&& 
await&& 
_basketService&& '
.&&' (!
CountTotalBasketItems&&( =
(&&= >
User&&> B
.&&B C
Identity&&C K
.&&K L
Name&&L P
)&&P Q
;&&Q R
}'' 	
string)) 
?)) 
anonymousId)) 
=)) %
GetAnnonymousIdFromCookie)) 7
())7 8
)))8 9
;))9 :
if** 

(** 
anonymousId** 
==** 
null** 
)**  
return++ 
$num++ 
;++ 
return-- 
await-- 
_basketService-- #
.--# $!
CountTotalBasketItems--$ 9
(--9 :
anonymousId--: E
)--E F
;--F G
}.. 
private00 
string00 
?00 %
GetAnnonymousIdFromCookie00 -
(00- .
)00. /
{11 
if22 

(22 
Request22 
.22 
Cookies22 
.22 
ContainsKey22 '
(22' (
	Constants22( 1
.221 2
BASKET_COOKIENAME222 C
)22C D
)22D E
{33 	
var44 
id44 
=44 
Request44 
.44 
Cookies44 $
[44$ %
	Constants44% .
.44. /
BASKET_COOKIENAME44/ @
]44@ A
;44A B
if66 
(66 
Guid66 
.66 
TryParse66 
(66 
id66  
,66  !
out66" %
var66& )
_66* +
)66+ ,
)66, -
{77 
return88 
id88 
;88 
}99 
}:: 	
return;; 
null;; 
;;; 
}<< 
}== �
\/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Privacy.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Pages! &
;& '
public 
class 
PrivacyModel 
: 
	PageModel %
{ 
public 

void 
OnGet 
( 
) 
{ 
}		 
}

 �
Z/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Index.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Pages! &
;& '
public 
class 

IndexModel 
: 
	PageModel #
{ 
private		 
readonly		 $
ICatalogViewModelService		 -$
_catalogViewModelService		. F
;		F G
public 


IndexModel 
( $
ICatalogViewModelService .#
catalogViewModelService/ F
)F G
{ $
_catalogViewModelService  
=! "#
catalogViewModelService# :
;: ;
} 
public 

required !
CatalogIndexViewModel )
CatalogModel* 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
newG J!
CatalogIndexViewModelK `
(` a
)a b
;b c
public 

async 
Task 
OnGet 
( !
CatalogIndexViewModel 1
catalogModel2 >
,> ?
int@ C
?C D
pageIdE K
)K L
{ 
CatalogModel 
= 
await $
_catalogViewModelService 5
.5 6
GetCatalogItems6 E
(E F
pageIdF L
??M O
$numP Q
,Q R
	ConstantsS \
.\ ]
ITEMS_PER_PAGE] k
,k l
catalogModelm y
.y z
BrandFilterApplied	z �
,
� �
catalogModel
� �
.
� � 
TypesFilterApplied
� �
)
� �
;
� �
} 
} �
Z/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Error.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Pages! &
;& '
[ 
ResponseCache 
( 
Duration 
= 
$num 
, 
Location %
=& '!
ResponseCacheLocation( =
.= >
None> B
,B C
NoStoreD K
=L M
trueN R
)R S
]S T
public 
class 

ErrorModel 
: 
	PageModel #
{		 
public

 

string

 
?

 
	RequestId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 

bool 
ShowRequestId 
=>  
!! "
string" (
.( )
IsNullOrEmpty) 6
(6 7
	RequestId7 @
)@ A
;A B
public 

void 
OnGet 
( 
) 
{ 
	RequestId 
= 
Activity 
. 
Current $
?$ %
.% &
Id& (
??) +
HttpContext, 7
.7 8
TraceIdentifier8 G
;G H
} 
} �
c/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Basket/Success.cshtml.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 
Web		  
.		  !
Pages		! &
.		& '
Basket		' -
;		- .
[ 
	Authorize 

]
 
public 
class 
SuccessModel 
: 
	PageModel %
{ 
public 

void 
OnGet 
( 
) 
{ 
} 
} �J
a/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Basket/Index.cshtml.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 
Web		  
.		  !
Pages		! &
.		& '
Basket		' -
;		- .
public 
class 

IndexModel 
: 
	PageModel #
{ 
private 
readonly 
IBasketService #
_basketService$ 2
;2 3
private 
readonly #
IBasketViewModelService ,#
_basketViewModelService- D
;D E
private 
readonly 
IRepository  
<  !
CatalogItem! ,
>, -
_itemRepository. =
;= >
public 


IndexModel 
( 
IBasketService $
basketService% 2
,2 3#
IBasketViewModelService "
basketViewModelService  6
,6 7
IRepository 
< 
CatalogItem 
>  
itemRepository! /
)/ 0
{ 
_basketService 
= 
basketService &
;& '#
_basketViewModelService 
=  !"
basketViewModelService" 8
;8 9
_itemRepository 
= 
itemRepository (
;( )
} 
public 

BasketViewModel 
BasketModel &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
new7 :
BasketViewModel; J
(J K
)K L
;L M
public 

async 
Task 
OnGet 
( 
) 
{ 
BasketModel 
= 
await #
_basketViewModelService 3
.3 4$
GetOrCreateBasketForUser4 L
(L M+
GetOrSetBasketCookieAndUserNameM l
(l m
)m n
)n o
;o p
} 
public!! 

async!! 
Task!! 
<!! 
IActionResult!! #
>!!# $
OnPost!!% +
(!!+ , 
CatalogItemViewModel!!, @
productDetails!!A O
)!!O P
{"" 
if## 

(## 
productDetails## 
?## 
.## 
Id## 
==## !
null##" &
)##& '
{$$ 	
return%% 
RedirectToPage%% !
(%%! "
$str%%" *
)%%* +
;%%+ ,
}&& 	
var(( 
item(( 
=(( 
await(( 
_itemRepository(( (
.((( )
GetByIdAsync(() 5
(((5 6
productDetails((6 D
.((D E
Id((E G
)((G H
;((H I
if)) 

()) 
item)) 
==)) 
null)) 
))) 
{** 	
return++ 
RedirectToPage++ !
(++! "
$str++" *
)++* +
;+++ ,
},, 	
var.. 
username.. 
=.. +
GetOrSetBasketCookieAndUserName.. 6
(..6 7
)..7 8
;..8 9
var// 
basket// 
=// 
await// 
_basketService// )
.//) *
AddItemToBasket//* 9
(//9 :
username//: B
,//B C
productDetails00 
.00 
Id00 
,00 
item00 #
.00# $
Price00$ )
)00) *
;00* +
BasketModel22 
=22 
await22 #
_basketViewModelService22 3
.223 4
Map224 7
(227 8
basket228 >
)22> ?
;22? @
return44 
RedirectToPage44 
(44 
)44 
;44  
}55 
public77 

async77 
Task77 
OnPostUpdate77 "
(77" #
IEnumerable77# .
<77. /
BasketItemViewModel77/ B
>77B C
items77D I
)77I J
{88 
if99 

(99 
!99 

ModelState99 
.99 
IsValid99 
)99  
{:: 	
return;; 
;;; 
}<< 	
var>> 

basketView>> 
=>> 
await>> #
_basketViewModelService>> 6
.>>6 7$
GetOrCreateBasketForUser>>7 O
(>>O P+
GetOrSetBasketCookieAndUserName>>P o
(>>o p
)>>p q
)>>q r
;>>r s
var?? 
updateModel?? 
=?? 
items?? 
.??  
ToDictionary??  ,
(??, -
b??- .
=>??/ 1
b??2 3
.??3 4
Id??4 6
.??6 7
ToString??7 ?
(??? @
)??@ A
,??A B
b??C D
=>??E G
b??H I
.??I J
Quantity??J R
)??R S
;??S T
var@@ 
basket@@ 
=@@ 
await@@ 
_basketService@@ )
.@@) *
SetQuantities@@* 7
(@@7 8

basketView@@8 B
.@@B C
Id@@C E
,@@E F
updateModel@@G R
)@@R S
;@@S T
BasketModelAA 
=AA 
awaitAA #
_basketViewModelServiceAA 3
.AA3 4
MapAA4 7
(AA7 8
basketAA8 >
)AA> ?
;AA? @
}BB 
privateDD 
stringDD +
GetOrSetBasketCookieAndUserNameDD 2
(DD2 3
)DD3 4
{EE 
GuardFF 
.FF 
AgainstFF 
.FF 
NullFF 
(FF 
RequestFF "
.FF" #
HttpContextFF# .
.FF. /
UserFF/ 3
.FF3 4
IdentityFF4 <
,FF< =
nameofFF> D
(FFD E
RequestFFE L
.FFL M
HttpContextFFM X
.FFX Y
UserFFY ]
.FF] ^
IdentityFF^ f
)FFf g
)FFg h
;FFh i
stringGG 
?GG 
userNameGG 
=GG 
nullGG 
;GG  
ifII 

(II 
RequestII 
.II 
HttpContextII 
.II  
UserII  $
.II$ %
IdentityII% -
.II- .
IsAuthenticatedII. =
)II= >
{JJ 	
GuardKK 
.KK 
AgainstKK 
.KK 
NullKK 
(KK 
RequestKK &
.KK& '
HttpContextKK' 2
.KK2 3
UserKK3 7
.KK7 8
IdentityKK8 @
.KK@ A
NameKKA E
,KKE F
nameofKKG M
(KKM N
RequestKKN U
.KKU V
HttpContextKKV a
.KKa b
UserKKb f
.KKf g
IdentityKKg o
.KKo p
NameKKp t
)KKt u
)KKu v
;KKv w
returnLL 
RequestLL 
.LL 
HttpContextLL &
.LL& '
UserLL' +
.LL+ ,
IdentityLL, 4
.LL4 5
NameLL5 9
!LL9 :
;LL: ;
}MM 	
ifOO 

(OO 
RequestOO 
.OO 
CookiesOO 
.OO 
ContainsKeyOO '
(OO' (
	ConstantsOO( 1
.OO1 2
BASKET_COOKIENAMEOO2 C
)OOC D
)OOD E
{PP 	
userNameQQ 
=QQ 
RequestQQ 
.QQ 
CookiesQQ &
[QQ& '
	ConstantsQQ' 0
.QQ0 1
BASKET_COOKIENAMEQQ1 B
]QQB C
;QQC D
ifSS 
(SS 
!SS 
RequestSS 
.SS 
HttpContextSS $
.SS$ %
UserSS% )
.SS) *
IdentitySS* 2
.SS2 3
IsAuthenticatedSS3 B
)SSB C
{TT 
ifUU 
(UU 
!UU 
GuidUU 
.UU 
TryParseUU "
(UU" #
userNameUU# +
,UU+ ,
outUU- 0
varUU1 4
_UU5 6
)UU6 7
)UU7 8
{VV 
userNameWW 
=WW 
nullWW #
;WW# $
}XX 
}YY 
}ZZ 	
if[[ 

([[ 
userName[[ 
!=[[ 
null[[ 
)[[ 
return[[ $
userName[[% -
;[[- .
userName]] 
=]] 
Guid]] 
.]] 
NewGuid]] 
(]]  
)]]  !
.]]! "
ToString]]" *
(]]* +
)]]+ ,
;]], -
var^^ 
cookieOptions^^ 
=^^ 
new^^ 
CookieOptions^^  -
{^^. /
IsEssential^^0 ;
=^^< =
true^^> B
}^^C D
;^^D E
cookieOptions__ 
.__ 
Expires__ 
=__ 
DateTime__  (
.__( )
Today__) .
.__. /
AddYears__/ 7
(__7 8
$num__8 :
)__: ;
;__; <
Response`` 
.`` 
Cookies`` 
.`` 
Append`` 
(``  
	Constants``  )
.``) *
BASKET_COOKIENAME``* ;
,``; <
userName``= E
,``E F
cookieOptions``G T
)``T U
;``U V
returnbb 
userNamebb 
;bb 
}cc 
}dd �A
d/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Basket/Checkout.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Pages! &
.& '
Basket' -
;- .
[ 
	Authorize 

]
 
public 
class 
CheckoutModel 
: 
	PageModel &
{ 
private 
readonly 
IBasketService #
_basketService$ 2
;2 3
private 
readonly 
SignInManager "
<" #
ApplicationUser# 2
>2 3
_signInManager4 B
;B C
private 
readonly 
IOrderService "
_orderService# 0
;0 1
private 
string 
? 
	_username 
= 
null  $
;$ %
private 
readonly #
IBasketViewModelService ,#
_basketViewModelService- D
;D E
private 
readonly 

IAppLogger 
<  
CheckoutModel  -
>- .
_logger/ 6
;6 7
public 

CheckoutModel 
( 
IBasketService '
basketService( 5
,5 6#
IBasketViewModelService "
basketViewModelService  6
,6 7
SignInManager 
< 
ApplicationUser %
>% &
signInManager' 4
,4 5
IOrderService 
orderService "
," #

IAppLogger 
< 
CheckoutModel  
>  !
logger" (
)( )
{ 
_basketService 
= 
basketService &
;& '
_signInManager 
= 
signInManager &
;& '
_orderService   
=   
orderService   $
;  $ %#
_basketViewModelService!! 
=!!  !"
basketViewModelService!!" 8
;!!8 9
_logger"" 
="" 
logger"" 
;"" 
}## 
public%% 

BasketViewModel%% 
BasketModel%% &
{%%' (
get%%) ,
;%%, -
set%%. 1
;%%1 2
}%%3 4
=%%5 6
new%%7 :
BasketViewModel%%; J
(%%J K
)%%K L
;%%L M
public'' 

async'' 
Task'' 
OnGet'' 
('' 
)'' 
{(( 
await)) 
SetBasketModelAsync)) !
())! "
)))" #
;))# $
}** 
public,, 

async,, 
Task,, 
<,, 
IActionResult,, #
>,,# $
OnPost,,% +
(,,+ ,
IEnumerable,,, 7
<,,7 8
BasketItemViewModel,,8 K
>,,K L
items,,M R
),,R S
{-- 
try.. 
{// 	
await00 
SetBasketModelAsync00 %
(00% &
)00& '
;00' (
if22 
(22 
!22 

ModelState22 
.22 
IsValid22 #
)22# $
{33 
return44 

BadRequest44 !
(44! "
)44" #
;44# $
}55 
var77 
updateModel77 
=77 
items77 #
.77# $
ToDictionary77$ 0
(770 1
b771 2
=>773 5
b776 7
.777 8
Id778 :
.77: ;
ToString77; C
(77C D
)77D E
,77E F
b77G H
=>77I K
b77L M
.77M N
Quantity77N V
)77V W
;77W X
await88 
_basketService88  
.88  !
SetQuantities88! .
(88. /
BasketModel88/ :
.88: ;
Id88; =
,88= >
updateModel88? J
)88J K
;88K L
await99 
_orderService99 
.99  
CreateOrderAsync99  0
(990 1
BasketModel991 <
.99< =
Id99= ?
,99? @
new99A D
Address99E L
(99L M
$str99M [
,99[ \
$str99] c
,99c d
$str99e i
,99i j
$str99k z
,99z {
$str	99| �
)
99� �
)
99� �
;
99� �
await:: 
_basketService::  
.::  !
DeleteBasketAsync::! 2
(::2 3
BasketModel::3 >
.::> ?
Id::? A
)::A B
;::B C
};; 	
catch<< 
(<< *
EmptyBasketOnCheckoutException<< -*
emptyBasketOnCheckoutException<<. L
)<<L M
{== 	
_logger?? 
.?? 

LogWarning?? 
(?? *
emptyBasketOnCheckoutException?? =
.??= >
Message??> E
)??E F
;??F G
return@@ 
RedirectToPage@@ !
(@@! "
$str@@" 1
)@@1 2
;@@2 3
}AA 	
returnCC 
RedirectToPageCC 
(CC 
$strCC '
)CC' (
;CC( )
}DD 
privateFF 
asyncFF 
TaskFF 
SetBasketModelAsyncFF *
(FF* +
)FF+ ,
{GG 
GuardHH 
.HH 
AgainstHH 
.HH 
NullHH 
(HH 
UserHH 
?HH  
.HH  !
IdentityHH! )
?HH) *
.HH* +
NameHH+ /
,HH/ 0
nameofHH1 7
(HH7 8
UserHH8 <
.HH< =
IdentityHH= E
.HHE F
NameHHF J
)HHJ K
)HHK L
;HHL M
ifII 

(II 
_signInManagerII 
.II 

IsSignedInII %
(II% &
HttpContextII& 1
.II1 2
UserII2 6
)II6 7
)II7 8
{JJ 	
BasketModelKK 
=KK 
awaitKK #
_basketViewModelServiceKK  7
.KK7 8$
GetOrCreateBasketForUserKK8 P
(KKP Q
UserKKQ U
.KKU V
IdentityKKV ^
.KK^ _
NameKK_ c
)KKc d
;KKd e
}LL 	
elseMM 
{NN 	+
GetOrSetBasketCookieAndUserNameOO +
(OO+ ,
)OO, -
;OO- .
BasketModelPP 
=PP 
awaitPP #
_basketViewModelServicePP  7
.PP7 8$
GetOrCreateBasketForUserPP8 P
(PPP Q
	_usernamePPQ Z
!PPZ [
)PP[ \
;PP\ ]
}QQ 	
}RR 
privateTT 
voidTT +
GetOrSetBasketCookieAndUserNameTT 0
(TT0 1
)TT1 2
{UU 
ifVV 

(VV 
RequestVV 
.VV 
CookiesVV 
.VV 
ContainsKeyVV '
(VV' (
	ConstantsVV( 1
.VV1 2
BASKET_COOKIENAMEVV2 C
)VVC D
)VVD E
{WW 	
	_usernameXX 
=XX 
RequestXX 
.XX  
CookiesXX  '
[XX' (
	ConstantsXX( 1
.XX1 2
BASKET_COOKIENAMEXX2 C
]XXC D
;XXD E
}YY 	
ifZZ 

(ZZ 
	_usernameZZ 
!=ZZ 
nullZZ 
)ZZ 
returnZZ %
;ZZ% &
	_username\\ 
=\\ 
Guid\\ 
.\\ 
NewGuid\\  
(\\  !
)\\! "
.\\" #
ToString\\# +
(\\+ ,
)\\, -
;\\- .
var]] 
cookieOptions]] 
=]] 
new]] 
CookieOptions]]  -
(]]- .
)]]. /
;]]/ 0
cookieOptions^^ 
.^^ 
Expires^^ 
=^^ 
DateTime^^  (
.^^( )
Today^^) .
.^^. /
AddYears^^/ 7
(^^7 8
$num^^8 :
)^^: ;
;^^; <
Response__ 
.__ 
Cookies__ 
.__ 
Append__ 
(__  
	Constants__  )
.__) *
BASKET_COOKIENAME__* ;
,__; <
	_username__= F
,__F G
cookieOptions__H U
)__U V
;__V W
}`` 
}aa �
d/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Basket/BasketViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Pages! &
.& '
Basket' -
;- .
public 
class 
BasketViewModel 
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

List 
< 
BasketItemViewModel #
># $
Items% *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
new; >
List? C
<C D
BasketItemViewModelD W
>W X
(X Y
)Y Z
;Z [
public 

string 
? 
BuyerId 
{ 
get  
;  !
set" %
;% &
}' (
public		 

decimal		 
Total		 
(		 
)		 
{

 
return 
Math 
. 
Round 
( 
Items 
.  
Sum  #
(# $
x$ %
=>& (
x) *
.* +
	UnitPrice+ 4
*5 6
x7 8
.8 9
Quantity9 A
)A B
,B C
$numD E
)E F
;F G
} 
} �
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Basket/BasketItemViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Pages! &
.& '
Basket' -
;- .
public 
class 
BasketItemViewModel  
{ 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
public 

int 
CatalogItemId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 

string		 
?		 
ProductName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 

decimal

 
	UnitPrice

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 

decimal 
OldUnitPrice 
{  !
get" %
;% &
set' *
;* +
}, -
[ 
Range 

(
 
$num 
, 
int 
. 
MaxValue 
, 
ErrorMessage (
=) *
$str+ K
)K L
]L M
public 

int 
Quantity 
{ 
get 
; 
set "
;" #
}$ %
public 

string 
? 

PictureUrl 
{ 
get  #
;# $
set% (
;( )
}* +
} �
`/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Admin/Index.cshtml.cs
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
 
Web

  
.

  !
Pages

! &
.

& '
Admin

' ,
;

, -
[ 
	Authorize 

(
 
Roles 
= 
BlazorShared 
.  
Authorization  -
.- .
	Constants. 7
.7 8
Roles8 =
.= >
ADMINISTRATORS> L
)L M
]M N
public 
class 

IndexModel 
: 
	PageModel #
{ 
public 


IndexModel 
( 
) 
{ 
} 
} �
j/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Pages/Admin/EditCatalogItem.cshtml.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 
Web		  
.		  !
Pages		! &
.		& '
Admin		' ,
;		, -
[ 
	Authorize 

(
 
Roles 
= 
BlazorShared 
.  
Authorization  -
.- .
	Constants. 7
.7 8
Roles8 =
.= >
ADMINISTRATORS> L
)L M
]M N
public 
class  
EditCatalogItemModel !
:" #
	PageModel$ -
{ 
private 
readonly (
ICatalogItemViewModelService 1(
_catalogItemViewModelService2 N
;N O
public 
 
EditCatalogItemModel 
(  (
ICatalogItemViewModelService  <'
catalogItemViewModelService= X
)X Y
{ (
_catalogItemViewModelService $
=% &'
catalogItemViewModelService' B
;B C
} 
[ 
BindProperty 
] 
public 
 
CatalogItemViewModel 
CatalogModel  ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
new= @ 
CatalogItemViewModelA U
(U V
)V W
;W X
public 

void 
OnGet 
(  
CatalogItemViewModel *
catalogModel+ 7
)7 8
{ 
CatalogModel 
= 
catalogModel #
;# $
} 
public 

async 
Task 
< 
IActionResult #
># $
OnPostAsync% 0
(0 1
)1 2
{ 
if 

( 

ModelState 
. 
IsValid 
) 
{   	
await!! (
_catalogItemViewModelService!! .
.!!. /
UpdateCatalogItem!!/ @
(!!@ A
CatalogModel!!A M
)!!M N
;!!N O
}"" 	
return$$ 
RedirectToPage$$ 
($$ 
$str$$ ,
)$$, -
;$$- .
}%% 
}&& �	
k/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Interfaces/ICatalogViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
;) *
public 
	interface $
ICatalogViewModelService )
{		 
Task

 
<

 	!
CatalogIndexViewModel

	 
>

 
GetCatalogItems

  /
(

/ 0
int

0 3
	pageIndex

4 =
,

= >
int

? B
	itemsPage

C L
,

L M
int

N Q
?

Q R
brandId

S Z
,

Z [
int

\ _
?

_ `
typeId

a g
)

g h
;

h i
Task 
< 	
IEnumerable	 
< 
SelectListItem #
># $
>$ %
	GetBrands& /
(/ 0
)0 1
;1 2
Task 
< 	
IEnumerable	 
< 
SelectListItem #
># $
>$ %
GetTypes& .
(. /
)/ 0
;0 1
} �
o/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Interfaces/ICatalogItemViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

Interfaces! +
;+ ,
public 
	interface (
ICatalogItemViewModelService -
{ 
Task 
UpdateCatalogItem	 
(  
CatalogItemViewModel /
	viewModel0 9
)9 :
;: ;
}		 �
j/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Interfaces/IBasketViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

Interfaces! +
;+ ,
public 
	interface #
IBasketViewModelService (
{ 
Task 
< 	
BasketViewModel	 
> $
GetOrCreateBasketForUser 2
(2 3
string3 9
userName: B
)B C
;C D
Task		 
<		 	
int			 
>		 !
CountTotalBasketItems		 #
(		# $
string		$ *
username		+ 3
)		3 4
;		4 5
Task

 
<

 	
BasketViewModel

	 
>

 
Map

 
(

 
Basket

 $
basket

% +
)

+ ,
;

, -
} �
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/HealthChecks/HomePageHealthCheck.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
HealthChecks! -
;- .
public		 
class		 
HomePageHealthCheck		  
:		! "
IHealthCheck		# /
{

 
private 
readonly  
IHttpContextAccessor ) 
_httpContextAccessor* >
;> ?
public 

HomePageHealthCheck 
(  
IHttpContextAccessor 3
httpContextAccessor4 G
)G H
{  
_httpContextAccessor 
= 
httpContextAccessor 2
;2 3
} 
public 

async 
Task 
< 
HealthCheckResult '
>' (
CheckHealthAsync) 9
(9 :
HealthCheckContext 
context "
," #
CancellationToken 
cancellationToken +
=, -
default. 5
(5 6
CancellationToken6 G
)G H
)H I
{ 
var 
request 
=  
_httpContextAccessor *
.* +
HttpContext+ 6
?6 7
.7 8
Request8 ?
;? @
string 
myUrl 
= 
request 
? 
.  
Scheme  &
+' (
$str) .
+/ 0
request1 8
?8 9
.9 :
Host: >
.> ?
ToString? G
(G H
)H I
;I J
var 
client 
= 
new 

HttpClient #
(# $
)$ %
;% &
var 
response 
= 
await 
client #
.# $
GetAsync$ ,
(, -
myUrl- 2
)2 3
;3 4
var 
pageContents 
= 
await  
response! )
.) *
Content* 1
.1 2
ReadAsStringAsync2 C
(C D
)D E
;E F
if 

( 
pageContents 
. 
Contains !
(! "
$str" =
)= >
)> ?
{ 	
return 
HealthCheckResult $
.$ %
Healthy% ,
(, -
$str- T
)T U
;U V
} 	
return!! 
HealthCheckResult!!  
.!!  !
	Unhealthy!!! *
(!!* +
$str!!+ U
)!!U V
;!!V W
}"" 
}## �
c/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/HealthChecks/ApiHealthCheck.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
HealthChecks! -
;- .
public

 
class

 
ApiHealthCheck

 
:

 
IHealthCheck

 *
{ 
private 
readonly  
BaseUrlConfiguration )!
_baseUrlConfiguration* ?
;? @
public 

ApiHealthCheck 
( 
IOptions "
<" # 
BaseUrlConfiguration# 7
>7 8 
baseUrlConfiguration9 M
)M N
{ !
_baseUrlConfiguration 
=  
baseUrlConfiguration  4
.4 5
Value5 :
;: ;
} 
public 

async 
Task 
< 
HealthCheckResult '
>' (
CheckHealthAsync) 9
(9 :
HealthCheckContext 
context "
," #
CancellationToken 
cancellationToken +
=, -
default. 5
(5 6
CancellationToken6 G
)G H
)H I
{ 
string 
myUrl 
= !
_baseUrlConfiguration ,
., -
ApiBase- 4
+5 6
$str7 F
;F G
var 
client 
= 
new 

HttpClient #
(# $
)$ %
;% &
var 
response 
= 
await 
client #
.# $
GetAsync$ ,
(, -
myUrl- 2
)2 3
;3 4
var 
pageContents 
= 
await  
response! )
.) *
Content* 1
.1 2
ReadAsStringAsync2 C
(C D
)D E
;E F
if 

( 
pageContents 
. 
Contains !
(! "
$str" =
)= >
)> ?
{ 	
return 
HealthCheckResult $
.$ %
Healthy% ,
(, -
$str- T
)T U
;U V
} 	
return   
HealthCheckResult    
.    !
	Unhealthy  ! *
(  * +
$str  + U
)  U V
;  V W
}!! 
}"" �
t/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Features/OrderDetails/GetOrderDetailsHandler.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Features! )
.) *
OrderDetails* 6
;6 7
public		 
class		 "
GetOrderDetailsHandler		 #
:		$ %
IRequestHandler		& 5
<		5 6
GetOrderDetails		6 E
,		E F 
OrderDetailViewModel		G [
?		[ \
>		\ ]
{

 
private 
readonly 
IReadRepository $
<$ %
Order% *
>* +
_orderRepository, <
;< =
public 
"
GetOrderDetailsHandler !
(! "
IReadRepository" 1
<1 2
Order2 7
>7 8
orderRepository9 H
)H I
{ 
_orderRepository 
= 
orderRepository *
;* +
} 
public 

async 
Task 
<  
OrderDetailViewModel *
?* +
>+ ,
Handle- 3
(3 4
GetOrderDetails4 C
requestD K
,K L
CancellationToken 
cancellationToken +
)+ ,
{ 
var 
spec 
= 
new "
OrderWithItemsByIdSpec -
(- .
request. 5
.5 6
OrderId6 =
)= >
;> ?
var 
order 
= 
await 
_orderRepository *
.* +
FirstOrDefaultAsync+ >
(> ?
spec? C
,C D
cancellationTokenE V
)V W
;W X
if 

( 
order 
== 
null 
) 
{ 	
return 
null 
; 
} 	
return 
new  
OrderDetailViewModel '
{ 	
	OrderDate 
= 
order 
. 
	OrderDate '
,' (

OrderItems   
=   
order   
.   

OrderItems   )
.  ) *
Select  * 0
(  0 1
oi  1 3
=>  4 6
new  7 :
OrderItemViewModel  ; M
{!! 

PictureUrl"" 
="" 
oi"" 
.""  
ItemOrdered""  +
.""+ ,

PictureUri"", 6
,""6 7
	ProductId## 
=## 
oi## 
.## 
ItemOrdered## *
.##* +
CatalogItemId##+ 8
,##8 9
ProductName$$ 
=$$ 
oi$$  
.$$  !
ItemOrdered$$! ,
.$$, -
ProductName$$- 8
,$$8 9
	UnitPrice%% 
=%% 
oi%% 
.%% 
	UnitPrice%% (
,%%( )
Units&& 
=&& 
oi&& 
.&& 
Units&&  
}'' 
)'' 
.'' 
ToList'' 
('' 
)'' 
,'' 
OrderNumber(( 
=(( 
order(( 
.((  
Id((  "
,((" #
ShippingAddress)) 
=)) 
order)) #
.))# $
ShipToAddress))$ 1
,))1 2
Total** 
=** 
order** 
.** 
Total** 
(**  
)**  !
}++ 	
;++	 

},, 
}-- �	
m/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Features/OrderDetails/GetOrderDetails.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Features! )
.) *
OrderDetails* 6
;6 7
public 
class 
GetOrderDetails 
: 
IRequest '
<' ( 
OrderDetailViewModel( <
>< =
{ 
public 

string 
UserName 
{ 
get  
;  !
set" %
;% &
}' (
public		 

int		 
OrderId		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public 

GetOrderDetails 
( 
string !
userName" *
,* +
int, /
orderId0 7
)7 8
{ 
UserName 
= 
userName 
; 
OrderId 
= 
orderId 
; 
} 
} �
l/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Features/MyOrders/GetMyOrdersHandler.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Features! )
.) *
MyOrders* 2
;2 3
public		 
class		 
GetMyOrdersHandler		 
:		  !
IRequestHandler		" 1
<		1 2
GetMyOrders		2 =
,		= >
IEnumerable		? J
<		J K
OrderViewModel		K Y
>		Y Z
>		Z [
{

 
private 
readonly 
IReadRepository $
<$ %
Order% *
>* +
_orderRepository, <
;< =
public 

GetMyOrdersHandler 
( 
IReadRepository -
<- .
Order. 3
>3 4
orderRepository5 D
)D E
{ 
_orderRepository 
= 
orderRepository *
;* +
} 
public 

async 
Task 
< 
IEnumerable !
<! "
OrderViewModel" 0
>0 1
>1 2
Handle3 9
(9 :
GetMyOrders: E
requestF M
,M N
CancellationToken 
cancellationToken +
)+ ,
{ 
var 
specification 
= 
new '
CustomerOrdersSpecification  ;
(; <
request< C
.C D
UserNameD L
)L M
;M N
var 
orders 
= 
await 
_orderRepository +
.+ ,
	ListAsync, 5
(5 6
specification6 C
,C D
cancellationTokenE V
)V W
;W X
return 
orders 
. 
Select 
( 
o 
=> !
new" %
OrderViewModel& 4
{ 	
	OrderDate 
= 
o 
. 
	OrderDate #
,# $
OrderNumber 
= 
o 
. 
Id 
, 
ShippingAddress 
= 
o 
.  
ShipToAddress  -
,- .
Total 
= 
o 
. 
Total 
( 
) 
} 	
)	 

;
 
} 
}   �
e/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Features/MyOrders/GetMyOrders.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Features! )
.) *
MyOrders* 2
;2 3
public 
class 
GetMyOrders 
: 
IRequest #
<# $
IEnumerable$ /
</ 0
OrderViewModel0 >
>> ?
>? @
{ 
public 

string 
UserName 
{ 
get  
;  !
set" %
;% &
}' (
public

 

GetMyOrders

 
(

 
string

 
userName

 &
)

& '
{ 
UserName 
= 
userName 
; 
} 
} �	
f/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Extensions/UrlHelperExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
;" #
public 
static 
class 
UrlHelperExtensions '
{ 
public 

static 
string 
? !
EmailConfirmationLink /
(/ 0
this0 4

IUrlHelper5 ?
	urlHelper@ I
,I J
stringK Q
userIdR X
,X Y
stringZ `
codea e
,e f
stringg m
schemen t
)t u
{ 
return 
	urlHelper 
. 
Action 
(  
action 
: 
$str 
, 

controller		 
:		 
$str		 &
,		& '
values

 
:

 
new

 
{

 
userId

  
,

  !
code

" &
}

' (
,

( )
protocol 
: 
scheme 
) 
; 
} 
} �	
h/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Extensions/EmailSenderExtensions.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
;) *
public 
static 
class !
EmailSenderExtensions )
{ 
public		 

static		 
Task		 &
SendEmailConfirmationAsync		 1
(		1 2
this		2 6
IEmailSender		7 C
emailSender		D O
,		O P
string		Q W
email		X ]
,		] ^
string		_ e
link		f j
)		j k
{

 
return 
emailSender 
. 
SendEmailAsync )
() *
email* /
,/ 0
$str1 E
,E F
$" 
$str J
{J K
HtmlEncoderK V
.V W
DefaultW ^
.^ _
Encode_ e
(e f
linkf j
)j k
}k l
$strl v
"v w
)w x
;x y
} 
} �
_/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Extensions/CacheHelpers.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

Extensions! +
;+ ,
public 
static 
class 
CacheHelpers  
{ 
public 

static 
readonly 
TimeSpan # 
DefaultCacheDuration$ 8
=9 :
TimeSpan; C
.C D
FromSecondsD O
(O P
$numP R
)R S
;S T
private 
static 
readonly 
string "
_itemsKeyTemplate# 4
=5 6
$str7 N
;N O
public

 

static

 
string

 '
GenerateCatalogItemCacheKey

 4
(

4 5
int

5 8
	pageIndex

9 B
,

B C
int

D G
	itemsPage

H Q
,

Q R
int

S V
?

V W
brandId

X _
,

_ `
int

a d
?

d e
typeId

f l
)

l m
{ 
return 
string 
. 
Format 
( 
_itemsKeyTemplate .
,. /
	pageIndex0 9
,9 :
	itemsPage; D
,D E
brandIdF M
,M N
typeIdO U
)U V
;V W
} 
public 

static 
string "
GenerateBrandsCacheKey /
(/ 0
)0 1
{ 
return 
$str 
; 
} 
public 

static 
string !
GenerateTypesCacheKey .
(. /
)/ 0
{ 
return 
$str 
; 
} 
} �E
b/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Controllers/UserController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
;, -
[ 
Route 
( 
$str 
) 
] 
[ 
ApiController 
] 
public 
class 
UserController 
: 
ControllerBase ,
{ 
private 
readonly 
ITokenClaimsService (
_tokenClaimsService) <
;< =
private 
readonly 
SignInManager "
<" #
ApplicationUser# 2
>2 3
_signInManager4 B
;B C
private 
readonly 
ILogger 
< 
UserController +
>+ ,
_logger- 4
;4 5
private 
readonly 
IMemoryCache !
_cache" (
;( )
public 

UserController 
( 
ITokenClaimsService -
tokenClaimsService. @
,@ A
SignInManager '
<' (
ApplicationUser( 7
>7 8
signInManager9 F
,F G
ILogger !
<! "
UserController" 0
>0 1
logger2 8
,8 9
IMemoryCache &
cache' ,
), -
{ 
_tokenClaimsService 
= 
tokenClaimsService 0
;0 1
_signInManager 
= 
signInManager &
;& '
_logger 
= 
logger 
; 
_cache   
=   
cache   
;   
}!! 
[## 
HttpGet## 
]## 
[$$ 
	Authorize$$ 
]$$ 
[%% 
AllowAnonymous%% 
]%% 
public&& 

async&& 
Task&& 
<&& 
IActionResult&& #
>&&# $
GetCurrentUser&&% 3
(&&3 4
)&&4 5
=>&&6 8
Ok'' 

(''
 
await'' 
CreateUserInfo'' 
(''  
User''  $
)''$ %
)''% &
;''& '
[)) 
Route)) 

())
 
$str)) 
))) 
])) 
[** 
HttpPost** 
]** 
[++ 
	Authorize++ 
]++ 
[,, 
AllowAnonymous,, 
],, 
public-- 

async-- 
Task-- 
<-- 
IActionResult-- #
>--# $
Logout--% +
(--+ ,
)--, -
{.. 
await// 
_signInManager// 
.// 
SignOutAsync// )
(//) *
)//* +
;//+ ,
await00 
HttpContext00 
.00 
SignOutAsync00 &
(00& '(
CookieAuthenticationDefaults00' C
.00C D 
AuthenticationScheme00D X
)00X Y
;00Y Z
var11 
userId11 
=11 
_signInManager11 #
.11# $
Context11$ +
.11+ ,
User11, 0
.110 1
Claims111 7
.117 8
First118 =
(11= >
c11> ?
=>11@ B
c11C D
.11D E
Type11E I
==11J L

ClaimTypes11M W
.11W X
Name11X \
)11\ ]
;11] ^
var22 
identityKey22 
=22 
_signInManager22 (
.22( )
Context22) 0
.220 1
Request221 8
.228 9
Cookies229 @
[22@ A#
ConfigureCookieSettings22A X
.22X Y 
IdentifierCookieName22Y m
]22m n
;22n o
_cache33 
.33 
Set33 
(33 
$"33 
{33 
userId33 
.33 
Value33 "
}33" #
$str33# $
{33$ %
identityKey33% 0
}330 1
"331 2
,332 3
identityKey334 ?
,33? @
new33A D#
MemoryCacheEntryOptions33E \
{44 	
AbsoluteExpiration55 
=55  
DateTime55! )
.55) *
Now55* -
.55- .

AddMinutes55. 8
(558 9#
ConfigureCookieSettings559 P
.55P Q!
ValidityMinutesPeriod55Q f
)55f g
}66 	
)66	 

;66
 
_logger88 
.88 
LogInformation88 
(88 
$str88 1
)881 2
;882 3
return99 
Ok99 
(99 
)99 
;99 
}:: 
private<< 
async<< 
Task<< 
<<< 
UserInfo<< 
><<  
CreateUserInfo<<! /
(<</ 0
ClaimsPrincipal<<0 ?
claimsPrincipal<<@ O
)<<O P
{== 
if>> 

(>> 
claimsPrincipal>> 
.>> 
Identity>> $
==>>% '
null>>( ,
||>>- /
claimsPrincipal>>0 ?
.>>? @
Identity>>@ H
.>>H I
Name>>I M
==>>N P
null>>Q U
||>>V X
!>>Y Z
claimsPrincipal>>Z i
.>>i j
Identity>>j r
.>>r s
IsAuthenticated	>>s �
)
>>� �
{?? 	
return@@ 
UserInfo@@ 
.@@ 
	Anonymous@@ %
;@@% &
}AA 	
varCC 
userInfoCC 
=CC 
newCC 
UserInfoCC #
{DD 	
IsAuthenticatedEE 
=EE 
trueEE "
}FF 	
;FF	 

ifHH 

(HH 
claimsPrincipalHH 
.HH 
IdentityHH $
isHH% '
ClaimsIdentityHH( 6
claimsIdentityHH7 E
)HHE F
{II 	
userInfoJJ 
.JJ 
NameClaimTypeJJ "
=JJ# $
claimsIdentityJJ% 3
.JJ3 4
NameClaimTypeJJ4 A
;JJA B
userInfoKK 
.KK 
RoleClaimTypeKK "
=KK# $
claimsIdentityKK% 3
.KK3 4
RoleClaimTypeKK4 A
;KKA B
}LL 	
elseMM 
{NN 	
userInfoOO 
.OO 
NameClaimTypeOO "
=OO# $
$strOO% +
;OO+ ,
userInfoPP 
.PP 
RoleClaimTypePP "
=PP# $
$strPP% +
;PP+ ,
}QQ 	
ifSS 

(SS 
claimsPrincipalSS 
.SS 
ClaimsSS "
.SS" #
AnySS# &
(SS& '
)SS' (
)SS( )
{TT 	
varUU 
claimsUU 
=UU 
newUU 
ListUU !
<UU! "

ClaimValueUU" ,
>UU, -
(UU- .
)UU. /
;UU/ 0
varVV 

nameClaimsVV 
=VV 
claimsPrincipalVV ,
.VV, -
FindAllVV- 4
(VV4 5
userInfoVV5 =
.VV= >
NameClaimTypeVV> K
)VVK L
;VVL M
foreachWW 
(WW 
varWW 
claimWW 
inWW !

nameClaimsWW" ,
)WW, -
{XX 
claimsYY 
.YY 
AddYY 
(YY 
newYY 

ClaimValueYY )
(YY) *
userInfoYY* 2
.YY2 3
NameClaimTypeYY3 @
,YY@ A
claimYYB G
.YYG H
ValueYYH M
)YYM N
)YYN O
;YYO P
}ZZ 
foreach\\ 
(\\ 
var\\ 
claim\\ 
in\\ !
claimsPrincipal\\" 1
.\\1 2
Claims\\2 8
.\\8 9
Except\\9 ?
(\\? @

nameClaims\\@ J
)\\J K
)\\K L
{]] 
claims^^ 
.^^ 
Add^^ 
(^^ 
new^^ 

ClaimValue^^ )
(^^) *
claim^^* /
.^^/ 0
Type^^0 4
,^^4 5
claim^^6 ;
.^^; <
Value^^< A
)^^A B
)^^B C
;^^C D
}__ 
userInfoaa 
.aa 
Claimsaa 
=aa 
claimsaa $
;aa$ %
}bb 	
vardd 
tokendd 
=dd 
awaitdd 
_tokenClaimsServicedd -
.dd- .
GetTokenAsyncdd. ;
(dd; <
claimsPrincipaldd< K
.ddK L
IdentityddL T
.ddT U
NameddU Y
)ddY Z
;ddZ [
userInfoee 
.ee 
Tokenee 
=ee 
tokenee 
;ee 
returngg 
userInfogg 
;gg 
}hh 
}ii �
c/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Controllers/OrderController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
;, -
[

 
ApiExplorerSettings

 
(

 
	IgnoreApi

 
=

  
true

! %
)

% &
]

& '
[ 
	Authorize 

]
 
[ 
Route 
( 
$str 
) 
]  
public 
class 
OrderController 
: 

Controller )
{ 
private 
readonly 
	IMediator 
	_mediator (
;( )
public 

OrderController 
( 
	IMediator $
mediator% -
)- .
{ 
	_mediator 
= 
mediator 
; 
} 
[ 
HttpGet 
] 
public 

async 
Task 
< 
IActionResult #
># $
MyOrders% -
(- .
). /
{ 
Guard 
. 
Against 
. 
Null 
( 
User 
?  
.  !
Identity! )
?) *
.* +
Name+ /
,/ 0
nameof1 7
(7 8
User8 <
.< =
Identity= E
.E F
NameF J
)J K
)K L
;L M
var 
	viewModel 
= 
await 
	_mediator '
.' (
Send( ,
(, -
new- 0
GetMyOrders1 <
(< =
User= A
.A B
IdentityB J
.J K
NameK O
)O P
)P Q
;Q R
return 
View 
( 
	viewModel 
) 
; 
} 
[ 
HttpGet 
( 
$str 
) 
] 
public   

async   
Task   
<   
IActionResult   #
>  # $
Detail  % +
(  + ,
int  , /
orderId  0 7
)  7 8
{!! 
Guard"" 
."" 
Against"" 
."" 
Null"" 
("" 
User"" 
?""  
.""  !
Identity""! )
?"") *
.""* +
Name""+ /
,""/ 0
nameof""1 7
(""7 8
User""8 <
.""< =
Identity""= E
.""E F
Name""F J
)""J K
)""K L
;""L M
var## 
	viewModel## 
=## 
await## 
	_mediator## '
.##' (
Send##( ,
(##, -
new##- 0
GetOrderDetails##1 @
(##@ A
User##A E
.##E F
Identity##F N
.##N O
Name##O S
,##S T
orderId##U \
)##\ ]
)##] ^
;##^ _
if%% 

(%% 
	viewModel%% 
==%% 
null%% 
)%% 
{&& 	
return'' 

BadRequest'' 
('' 
$str'' B
)''B C
;''C D
}(( 	
return** 
View** 
(** 
	viewModel** 
)** 
;** 
}++ 
},, ��
d/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Controllers/ManageController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
;, -
[ 
ApiExplorerSettings 
( 
	IgnoreApi 
=  
true! %
)% &
]& '
[ 
	Authorize 

]
 
[ 
Route 
( 
$str 
) 
]  
public 
class 
ManageController 
: 

Controller  *
{ 
private 
readonly 
UserManager  
<  !
ApplicationUser! 0
>0 1
_userManager2 >
;> ?
private 
readonly 
SignInManager "
<" #
ApplicationUser# 2
>2 3
_signInManager4 B
;B C
private 
readonly 
IEmailSender !
_emailSender" .
;. /
private 
readonly 

IAppLogger 
<  
ManageController  0
>0 1
_logger2 9
;9 :
private 
readonly 

UrlEncoder 
_urlEncoder  +
;+ ,
private 
const 
string "
AuthenticatorUriFormat /
=0 1
$str2 i
;i j
private 
const 
string 
RecoveryCodesKey )
=* +
nameof, 2
(2 3
RecoveryCodesKey3 C
)C D
;D E
public 

ManageController 
( 
UserManager 
< 
ApplicationUser !
>! "
userManager# .
,. /
SignInManager 
< 
ApplicationUser #
># $
signInManager% 2
,2 3
IEmailSender   
emailSender   
,   

IAppLogger!! 
<!! 
ManageController!! !
>!!! "
logger!!# )
,!!) *

UrlEncoder"" 

urlEncoder"" 
)"" 
{## 
_userManager$$ 
=$$ 
userManager$$ "
;$$" #
_signInManager%% 
=%% 
signInManager%% &
;%%& '
_emailSender&& 
=&& 
emailSender&& "
;&&" #
_logger'' 
='' 
logger'' 
;'' 
_urlEncoder(( 
=(( 

urlEncoder((  
;((  !
})) 
[++ 
TempData++ 
]++ 
public,, 

string,, 
?,, 
StatusMessage,,  
{,,! "
get,,# &
;,,& '
set,,( +
;,,+ ,
},,- .
[.. 
HttpGet.. 
].. 
public// 

async// 
Task// 
<// 
IActionResult// #
>//# $
	MyAccount//% .
(//. /
)/// 0
{00 
var11 
user11 
=11 
await11 
_userManager11 %
.11% &
GetUserAsync11& 2
(112 3
User113 7
)117 8
;118 9
if22 

(22 
user22 
==22 
null22 
)22 
{33 	
throw44 
new44  
ApplicationException44 *
(44* +
$"44+ -
$str44- J
{44J K
_userManager44K W
.44W X
	GetUserId44X a
(44a b
User44b f
)44f g
}44g h
$str44h j
"44j k
)44k l
;44l m
}55 	
var77 
model77 
=77 
new77 
IndexViewModel77 &
{88 	
Username99 
=99 
user99 
.99 
UserName99 $
,99$ %
Email:: 
=:: 
user:: 
.:: 
Email:: 
,:: 
PhoneNumber;; 
=;; 
user;; 
.;; 
PhoneNumber;; *
,;;* +
IsEmailConfirmed<< 
=<< 
user<< #
.<<# $
EmailConfirmed<<$ 2
,<<2 3
StatusMessage== 
=== 
StatusMessage== )
}>> 	
;>>	 

return@@ 
View@@ 
(@@ 
model@@ 
)@@ 
;@@ 
}AA 
[CC 
HttpPostCC 
]CC 
[DD $
ValidateAntiForgeryTokenDD 
]DD 
publicEE 

asyncEE 
TaskEE 
<EE 
IActionResultEE #
>EE# $
	MyAccountEE% .
(EE. /
IndexViewModelEE/ =
modelEE> C
)EEC D
{FF 
ifGG 

(GG 
!GG 

ModelStateGG 
.GG 
IsValidGG 
)GG  
{HH 	
returnII 
ViewII 
(II 
modelII 
)II 
;II 
}JJ 	
varLL 
userLL 
=LL 
awaitLL 
_userManagerLL %
.LL% &
GetUserAsyncLL& 2
(LL2 3
UserLL3 7
)LL7 8
;LL8 9
ifMM 

(MM 
userMM 
==MM 
nullMM 
)MM 
{NN 	
throwOO 
newOO  
ApplicationExceptionOO *
(OO* +
$"OO+ -
$strOO- J
{OOJ K
_userManagerOOK W
.OOW X
	GetUserIdOOX a
(OOa b
UserOOb f
)OOf g
}OOg h
$strOOh j
"OOj k
)OOk l
;OOl m
}PP 	
varRR 
emailRR 
=RR 
userRR 
.RR 
EmailRR 
;RR 
ifSS 

(SS 
modelSS 
.SS 
EmailSS 
!=SS 
emailSS  
)SS  !
{TT 	
varUU 
setEmailResultUU 
=UU  
awaitUU! &
_userManagerUU' 3
.UU3 4
SetEmailAsyncUU4 A
(UUA B
userUUB F
,UUF G
modelUUH M
.UUM N
EmailUUN S
)UUS T
;UUT U
ifVV 
(VV 
!VV 
setEmailResultVV 
.VV  
	SucceededVV  )
)VV) *
{WW 
throwXX 
newXX  
ApplicationExceptionXX .
(XX. /
$"XX/ 1
$strXX1 k
{XXk l
userXXl p
.XXp q
IdXXq s
}XXs t
$strXXt v
"XXv w
)XXw x
;XXx y
}YY 
}ZZ 	
var\\ 
phoneNumber\\ 
=\\ 
user\\ 
.\\ 
PhoneNumber\\ *
;\\* +
if]] 

(]] 
model]] 
.]] 
PhoneNumber]] 
!=]]  
phoneNumber]]! ,
)]], -
{^^ 	
var__ 
setPhoneResult__ 
=__  
await__! &
_userManager__' 3
.__3 4
SetPhoneNumberAsync__4 G
(__G H
user__H L
,__L M
model__N S
.__S T
PhoneNumber__T _
)___ `
;__` a
if`` 
(`` 
!`` 
setPhoneResult`` 
.``  
	Succeeded``  )
)``) *
{aa 
throwbb 
newbb  
ApplicationExceptionbb .
(bb. /
$"bb/ 1
$strbb1 r
{bbr s
userbbs w
.bbw x
Idbbx z
}bbz {
$strbb{ }
"bb} ~
)bb~ 
;	bb �
}cc 
}dd 	
StatusMessageff 
=ff 
$strff 7
;ff7 8
returngg 
RedirectToActiongg 
(gg  
nameofgg  &
(gg& '
	MyAccountgg' 0
)gg0 1
)gg1 2
;gg2 3
}hh 
[jj 
HttpPostjj 
]jj 
[kk $
ValidateAntiForgeryTokenkk 
]kk 
publicll 

asyncll 
Taskll 
<ll 
IActionResultll #
>ll# $!
SendVerificationEmailll% :
(ll: ;
IndexViewModelll; I
modelllJ O
)llO P
{mm 
ifnn 

(nn 
!nn 

ModelStatenn 
.nn 
IsValidnn 
)nn  
{oo 	
returnpp 
Viewpp 
(pp 
modelpp 
)pp 
;pp 
}qq 	
varss 
userss 
=ss 
awaitss 
_userManagerss %
.ss% &
GetUserAsyncss& 2
(ss2 3
Userss3 7
)ss7 8
;ss8 9
iftt 

(tt 
usertt 
==tt 
nulltt 
)tt 
{uu 	
throwvv 
newvv  
ApplicationExceptionvv *
(vv* +
$"vv+ -
$strvv- J
{vvJ K
_userManagervvK W
.vvW X
	GetUserIdvvX a
(vva b
Uservvb f
)vvf g
}vvg h
$strvvh j
"vvj k
)vvk l
;vvl m
}ww 	
varyy 
codeyy 
=yy 
awaityy 
_userManageryy %
.yy% &/
#GenerateEmailConfirmationTokenAsyncyy& I
(yyI J
useryyJ N
)yyN O
;yyO P
varzz 
callbackUrlzz 
=zz 
Urlzz 
.zz !
EmailConfirmationLinkzz 3
(zz3 4
userzz4 8
.zz8 9
Idzz9 ;
,zz; <
codezz= A
,zzA B
RequestzzC J
.zzJ K
SchemezzK Q
)zzQ R
;zzR S
Guard{{ 
.{{ 
Against{{ 
.{{ 
Null{{ 
({{ 
callbackUrl{{ &
,{{& '
nameof{{( .
({{. /
callbackUrl{{/ :
){{: ;
){{; <
;{{< =
var|| 
email|| 
=|| 
user|| 
.|| 
Email|| 
;|| 
if}} 

(}} 
email}} 
==}} 
null}} 
)}} 
{~~ 	
throw 
new  
ApplicationException *
(* +
$"+ -
$str- K
{K L
userL P
.P Q
UserNameQ Y
}Y Z
$strZ \
"\ ]
)] ^
;^ _
}
�� 	
await
�� 
_emailSender
�� 
.
�� (
SendEmailConfirmationAsync
�� 5
(
��5 6
email
��6 ;
,
��; <
callbackUrl
��= H
)
��H I
;
��I J
StatusMessage
�� 
=
�� 
$str
�� K
;
��K L
return
�� 
RedirectToAction
�� 
(
��  
nameof
��  &
(
��& '
	MyAccount
��' 0
)
��0 1
)
��1 2
;
��2 3
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $
ChangePassword
��% 3
(
��3 4
)
��4 5
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
var
�� 
hasPassword
�� 
=
�� 
await
�� 
_userManager
��  ,
.
��, -
HasPasswordAsync
��- =
(
��= >
user
��> B
)
��B C
;
��C D
if
�� 

(
�� 
!
�� 
hasPassword
�� 
)
�� 
{
�� 	
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
SetPassword
��+ 6
)
��6 7
)
��7 8
;
��8 9
}
�� 	
var
�� 
model
�� 
=
�� 
new
�� %
ChangePasswordViewModel
�� /
{
��0 1
StatusMessage
��2 ?
=
��@ A
StatusMessage
��B O
}
��P Q
;
��Q R
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 
[
�� 
HttpPost
�� 
]
�� 
[
�� &
ValidateAntiForgeryToken
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $
ChangePassword
��% 3
(
��3 4%
ChangePasswordViewModel
��4 K
model
��L Q
)
��Q R
{
�� 
if
�� 

(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� 
)
��  
{
�� 	
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
var
�� "
changePasswordResult
��  
=
��! "
await
��# (
_userManager
��) 5
.
�� !
ChangePasswordAsync
��  
(
��  !
user
��! %
,
��% &
model
��' ,
.
��, -
OldPassword
��- 8
!
��8 9
,
��9 :
model
��; @
.
��@ A
NewPassword
��A L
!
��L M
)
��M N
;
��N O
if
�� 

(
�� 
!
�� "
changePasswordResult
�� !
.
��! "
	Succeeded
��" +
)
��+ ,
{
�� 	
	AddErrors
�� 
(
�� "
changePasswordResult
�� *
)
��* +
;
��+ ,
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
await
�� 
_signInManager
�� 
.
�� 
SignInAsync
�� (
(
��( )
user
��) -
,
��- .
isPersistent
��/ ;
:
��; <
false
��= B
)
��B C
;
��C D
_logger
�� 
.
�� 
LogInformation
�� 
(
�� 
$str
�� J
)
��J K
;
��K L
StatusMessage
�� 
=
�� 
$str
�� 9
;
��9 :
return
�� 
RedirectToAction
�� 
(
��  
nameof
��  &
(
��& '
ChangePassword
��' 5
)
��5 6
)
��6 7
;
��7 8
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $
SetPassword
��% 0
(
��0 1
)
��1 2
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
var
�� 
hasPassword
�� 
=
�� 
await
�� 
_userManager
��  ,
.
��, -
HasPasswordAsync
��- =
(
��= >
user
��> B
)
��B C
;
��C D
if
�� 

(
�� 
hasPassword
�� 
)
�� 
{
�� 	
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +
ChangePassword
��+ 9
)
��9 :
)
��: ;
;
��; <
}
�� 	
var
�� 
model
�� 
=
�� 
new
�� "
SetPasswordViewModel
�� ,
{
��- .
StatusMessage
��/ <
=
��= >
StatusMessage
��? L
}
��M N
;
��N O
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 
[
�� 
HttpPost
�� 
]
�� 
[
�� &
ValidateAntiForgeryToken
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $
SetPassword
��% 0
(
��0 1"
SetPasswordViewModel
��1 E
model
��F K
)
��K L
{
�� 
if
�� 

(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� 
)
��  
{
�� 	
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
var
�� 
addPasswordResult
�� 
=
�� 
await
��  %
_userManager
��& 2
.
��2 3
AddPasswordAsync
��3 C
(
��C D
user
��D H
,
��H I
model
��J O
.
��O P
NewPassword
��P [
!
��[ \
)
��\ ]
;
��] ^
if
�� 

(
�� 
!
�� 
addPasswordResult
�� 
.
�� 
	Succeeded
�� (
)
��( )
{
�� 	
	AddErrors
�� 
(
�� 
addPasswordResult
�� '
)
��' (
;
��( )
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
await
�� 
_signInManager
�� 
.
�� 
SignInAsync
�� (
(
��( )
user
��) -
,
��- .
isPersistent
��/ ;
:
��; <
false
��= B
)
��B C
;
��C D
StatusMessage
�� 
=
�� 
$str
�� 5
;
��5 6
return
�� 
RedirectToAction
�� 
(
��  
nameof
��  &
(
��& '
SetPassword
��' 2
)
��2 3
)
��3 4
;
��4 5
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $
ExternalLogins
��% 3
(
��3 4
)
��4 5
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
var
�� 
model
�� 
=
�� 
new
�� %
ExternalLoginsViewModel
�� /
{
��0 1
CurrentLogins
��2 ?
=
��@ A
await
��B G
_userManager
��H T
.
��T U
GetLoginsAsync
��U c
(
��c d
user
��d h
)
��h i
}
��j k
;
��k l
model
�� 
.
�� 
OtherLogins
�� 
=
�� 
(
�� 
await
�� "
_signInManager
��# 1
.
��1 23
%GetExternalAuthenticationSchemesAsync
��2 W
(
��W X
)
��X Y
)
��Y Z
.
�� 
Where
�� 
(
�� 
auth
�� 
=>
�� 
model
��  
.
��  !
CurrentLogins
��! .
.
��. /
All
��/ 2
(
��2 3
ul
��3 5
=>
��6 8
auth
��9 =
.
��= >
Name
��> B
!=
��C E
ul
��F H
.
��H I
LoginProvider
��I V
)
��V W
)
��W X
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
model
�� 
.
�� 
ShowRemoveButton
�� 
=
��  
await
��! &
_userManager
��' 3
.
��3 4
HasPasswordAsync
��4 D
(
��D E
user
��E I
)
��I J
||
��K M
model
��N S
.
��S T
CurrentLogins
��T a
.
��a b
Count
��b g
>
��h i
$num
��j k
;
��k l
model
�� 
.
�� 
StatusMessage
�� 
=
�� 
StatusMessage
�� +
;
��+ ,
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 
[
�� 
HttpPost
�� 
]
�� 
[
�� &
ValidateAntiForgeryToken
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $
	LinkLogin
��% .
(
��. /
string
��/ 5
provider
��6 >
)
��> ?
{
�� 
await
�� 
HttpContext
�� 
.
�� 
SignOutAsync
�� &
(
��& '
IdentityConstants
��' 8
.
��8 9
ExternalScheme
��9 G
)
��G H
;
��H I
var
�� 
redirectUrl
�� 
=
�� 
Url
�� 
.
�� 
Action
�� $
(
��$ %
nameof
��% +
(
��+ ,
LinkLoginCallback
��, =
)
��= >
)
��> ?
;
��? @
var
�� 

properties
�� 
=
�� 
_signInManager
�� '
.
��' (7
)ConfigureExternalAuthenticationProperties
��( Q
(
��Q R
provider
��R Z
,
��Z [
redirectUrl
��\ g
,
��g h
_userManager
��i u
.
��u v
	GetUserId
��v 
(�� �
User��� �
)��� �
)��� �
;��� �
return
�� 
new
�� 
ChallengeResult
�� "
(
��" #
provider
��# +
,
��+ ,

properties
��- 7
)
��7 8
;
��8 9
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $
LinkLoginCallback
��% 6
(
��6 7
)
��7 8
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
var
�� 
info
�� 
=
�� 
await
�� 
_signInManager
�� '
.
��' ('
GetExternalLoginInfoAsync
��( A
(
��A B
user
��B F
.
��F G
Id
��G I
)
��I J
;
��J K
if
�� 

(
�� 
info
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- u
{
��u v
user
��v z
.
��z {
Id
��{ }
}
��} ~
$str��~ �
"��� �
)��� �
;��� �
}
�� 	
var
�� 
result
�� 
=
�� 
await
�� 
_userManager
�� '
.
��' (
AddLoginAsync
��( 5
(
��5 6
user
��6 :
,
��: ;
info
��< @
)
��@ A
;
��A B
if
�� 

(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- o
{
��o p
user
��p t
.
��t u
Id
��u w
}
��w x
$str
��x z
"
��z {
)
��{ |
;
��| }
}
�� 	
await
�� 
HttpContext
�� 
.
�� 
SignOutAsync
�� &
(
��& '
IdentityConstants
��' 8
.
��8 9
ExternalScheme
��9 G
)
��G H
;
��H I
StatusMessage
�� 
=
�� 
$str
�� 7
;
��7 8
return
�� 
RedirectToAction
�� 
(
��  
nameof
��  &
(
��& '
ExternalLogins
��' 5
)
��5 6
)
��6 7
;
��7 8
}
�� 
[
�� 
HttpPost
�� 
]
�� 
[
�� &
ValidateAntiForgeryToken
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $
RemoveLogin
��% 0
(
��0 1"
RemoveLoginViewModel
��1 E
model
��F K
)
��K L
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
if
�� 

(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� 
)
��  
{
�� 	
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
var
�� 
result
�� 
=
�� 
await
�� 
_userManager
�� '
.
��' (
RemoveLoginAsync
��( 8
(
��8 9
user
��9 =
,
��= >
model
��? D
.
��D E
LoginProvider
��E R
,
��R S
model
��T Y
.
��Y Z
ProviderKey
��Z e
)
��e f
;
��f g
if
�� 

(
�� 
!
�� 
result
�� 
.
�� 
	Succeeded
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- q
{
��q r
user
��r v
.
��v w
Id
��w y
}
��y z
$str
��z |
"
��| }
)
��} ~
;
��~ 
}
�� 	
await
�� 
_signInManager
�� 
.
�� 
SignInAsync
�� (
(
��( )
user
��) -
,
��- .
isPersistent
��/ ;
:
��; <
false
��= B
)
��B C
;
��C D
StatusMessage
�� 
=
�� 
$str
�� 9
;
��9 :
return
�� 
RedirectToAction
�� 
(
��  
nameof
��  &
(
��& '
ExternalLogins
��' 5
)
��5 6
)
��6 7
;
��7 8
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $%
TwoFactorAuthentication
��% <
(
��< =
)
��= >
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
var
�� 
model
�� 
=
�� 
new
�� .
 TwoFactorAuthenticationViewModel
�� 8
{
�� 	
HasAuthenticator
�� 
=
�� 
await
�� $
_userManager
��% 1
.
��1 2&
GetAuthenticatorKeyAsync
��2 J
(
��J K
user
��K O
)
��O P
!=
��Q S
null
��T X
,
��X Y
Is2faEnabled
�� 
=
�� 
user
�� 
.
��  
TwoFactorEnabled
��  0
,
��0 1
RecoveryCodesLeft
�� 
=
�� 
await
��  %
_userManager
��& 2
.
��2 3%
CountRecoveryCodesAsync
��3 J
(
��J K
user
��K O
)
��O P
,
��P Q
}
�� 	
;
��	 

return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $
Disable2faWarning
��% 6
(
��6 7
)
��7 8
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
if
�� 

(
�� 
!
�� 
user
�� 
.
�� 
TwoFactorEnabled
�� "
)
��" #
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- f
{
��f g
user
��g k
.
��k l
Id
��l n
}
��n o
$str
��o q
"
��q r
)
��r s
;
��s t
}
�� 	
return
�� 
View
�� 
(
�� 
nameof
�� 
(
�� 

Disable2fa
�� %
)
��% &
)
��& '
;
��' (
}
�� 
[
�� 
HttpPost
�� 
]
�� 
[
�� &
ValidateAntiForgeryToken
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $

Disable2fa
��% /
(
��/ 0
)
��0 1
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
var
�� 
disable2faResult
�� 
=
�� 
await
�� $
_userManager
��% 1
.
��1 2&
SetTwoFactorEnabledAsync
��2 J
(
��J K
user
��K O
,
��O P
false
��Q V
)
��V W
;
��W X
if
�� 

(
�� 
!
�� 
disable2faResult
�� 
.
�� 
	Succeeded
�� '
)
��' (
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- f
{
��f g
user
��g k
.
��k l
Id
��l n
}
��n o
$str
��o q
"
��q r
)
��r s
;
��s t
}
�� 	
_logger
�� 
.
�� 
LogInformation
�� 
(
�� 
$str
�� H
,
��H I
user
��J N
.
��N O
Id
��O Q
)
��Q R
;
��R S
return
�� 
RedirectToAction
�� 
(
��  
nameof
��  &
(
��& '%
TwoFactorAuthentication
��' >
)
��> ?
)
��? @
;
��@ A
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $!
EnableAuthenticator
��% 8
(
��8 9
)
��9 :
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
var
�� 
model
�� 
=
�� 
new
�� *
EnableAuthenticatorViewModel
�� 4
(
��4 5
)
��5 6
;
��6 7
await
�� ,
LoadSharedKeyAndQrCodeUriAsync
�� ,
(
��, -
user
��- 1
,
��1 2
model
��3 8
)
��8 9
;
��9 :
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

IActionResult
�� 
ShowRecoveryCodes
�� *
(
��* +
)
��+ ,
{
�� 
var
�� 
recoveryCodes
�� 
=
�� 
(
�� 
string
�� #
[
��# $
]
��$ %
?
��% &
)
��& '
TempData
��' /
[
��/ 0
RecoveryCodesKey
��0 @
]
��@ A
;
��A B
if
�� 

(
�� 
recoveryCodes
�� 
==
�� 
null
�� !
)
��! "
{
�� 	
return
�� 
RedirectToAction
�� #
(
��# $
nameof
��$ *
(
��* +%
TwoFactorAuthentication
��+ B
)
��B C
)
��C D
;
��D E
}
�� 	
var
�� 
model
�� 
=
�� 
new
�� (
ShowRecoveryCodesViewModel
�� 2
{
��3 4
RecoveryCodes
��5 B
=
��C D
recoveryCodes
��E R
}
��S T
;
��T U
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 
[
�� 
HttpPost
�� 
]
�� 
[
�� &
ValidateAntiForgeryToken
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $!
EnableAuthenticator
��% 8
(
��8 9*
EnableAuthenticatorViewModel
��9 U
model
��V [
)
��[ \
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
if
�� 

(
�� 
!
�� 

ModelState
�� 
.
�� 
IsValid
�� 
)
��  
{
�� 	
await
�� ,
LoadSharedKeyAndQrCodeUriAsync
�� 0
(
��0 1
user
��1 5
,
��5 6
model
��7 <
)
��< =
;
��= >
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
string
�� 
verificationCode
�� 
=
��  !
model
��" '
.
��' (
Code
��( ,
?
��, -
.
��- .
Replace
��. 5
(
��5 6
$str
��6 9
,
��9 :
string
��; A
.
��A B
Empty
��B G
)
��G H
.
��H I
Replace
��I P
(
��P Q
$str
��Q T
,
��T U
string
��V \
.
��\ ]
Empty
��] b
)
��b c
??
��d f
$str
��g i
;
��i j
var
�� 
is2faTokenValid
�� 
=
�� 
await
�� #
_userManager
��$ 0
.
��0 1'
VerifyTwoFactorTokenAsync
��1 J
(
��J K
user
�� 
,
�� 
_userManager
�� 
.
�� 
Options
�� &
.
��& '
Tokens
��' -
.
��- .(
AuthenticatorTokenProvider
��. H
,
��H I
verificationCode
��J Z
)
��Z [
;
��[ \
if
�� 

(
�� 
!
�� 
is2faTokenValid
�� 
)
�� 
{
�� 	

ModelState
�� 
.
�� 
AddModelError
�� $
(
��$ %
$str
��% +
,
��+ ,
$str
��- L
)
��L M
;
��M N
await
�� ,
LoadSharedKeyAndQrCodeUriAsync
�� 0
(
��0 1
user
��1 5
,
��5 6
model
��7 <
)
��< =
;
��= >
return
�� 
View
�� 
(
�� 
model
�� 
)
�� 
;
�� 
}
�� 	
await
�� 
_userManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 3
(
��3 4
user
��4 8
,
��8 9
true
��: >
)
��> ?
;
��? @
_logger
�� 
.
�� 
LogInformation
�� 
(
�� 
$str
�� a
,
��a b
user
��c g
.
��g h
Id
��h j
)
��j k
;
��k l
var
�� 
recoveryCodes
�� 
=
�� 
await
�� !
_userManager
��" .
.
��. /4
&GenerateNewTwoFactorRecoveryCodesAsync
��/ U
(
��U V
user
��V Z
,
��Z [
$num
��\ ^
)
��^ _
??
��` b
new
��c f
List
��g k
<
��k l
string
��l r
>
��r s
(
��s t
)
��t u
;
��u v
TempData
�� 
[
�� 
RecoveryCodesKey
�� !
]
��! "
=
��# $
recoveryCodes
��% 2
.
��2 3
ToArray
��3 :
(
��: ;
)
��; <
;
��< =
return
�� 
RedirectToAction
�� 
(
��  
nameof
��  &
(
��& '
ShowRecoveryCodes
��' 8
)
��8 9
)
��9 :
;
��: ;
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

IActionResult
�� '
ResetAuthenticatorWarning
�� 2
(
��2 3
)
��3 4
{
�� 
return
�� 
View
�� 
(
�� 
nameof
�� 
(
��  
ResetAuthenticator
�� -
)
��- .
)
��. /
;
��/ 0
}
�� 
[
�� 
HttpPost
�� 
]
�� 
[
�� &
ValidateAntiForgeryToken
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $ 
ResetAuthenticator
��% 7
(
��7 8
)
��8 9
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
await
�� 
_userManager
�� 
.
�� &
SetTwoFactorEnabledAsync
�� 3
(
��3 4
user
��4 8
,
��8 9
false
��: ?
)
��? @
;
��@ A
await
�� 
_userManager
�� 
.
�� (
ResetAuthenticatorKeyAsync
�� 5
(
��5 6
user
��6 :
)
��: ;
;
��; <
_logger
�� 
.
�� 
LogInformation
�� 
(
�� 
$str
�� `
,
��` a
user
��b f
.
��f g
Id
��g i
)
��i j
;
��j k
return
�� 
RedirectToAction
�� 
(
��  
nameof
��  &
(
��& '!
EnableAuthenticator
��' :
)
��: ;
)
��; <
;
��< =
}
�� 
[
�� 
HttpPost
�� 
]
�� 
[
�� &
ValidateAntiForgeryToken
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $#
GenerateRecoveryCodes
��% :
(
��: ;
)
��; <
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
if
�� 

(
�� 
!
�� 
user
�� 
.
�� 
TwoFactorEnabled
�� "
)
��" #
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- ^
{
��^ _
user
��_ c
.
��c d
Id
��d f
}
��f g
$str��g �
"��� �
)��� �
;��� �
}
�� 	
var
�� 
recoveryCodes
�� 
=
�� 
await
�� !
_userManager
��" .
.
��. /4
&GenerateNewTwoFactorRecoveryCodesAsync
��/ U
(
��U V
user
��V Z
,
��Z [
$num
��\ ^
)
��^ _
??
��` b
new
��c f
List
��g k
<
��k l
string
��l r
>
��r s
(
��s t
)
��t u
;
��u v
_logger
�� 
.
�� 
LogInformation
�� 
(
�� 
$str
�� \
,
��\ ]
user
��^ b
.
��b c
Id
��c e
)
��e f
;
��f g
var
�� 
model
�� 
=
�� 
new
�� (
ShowRecoveryCodesViewModel
�� 2
{
��3 4
RecoveryCodes
��5 B
=
��C D
recoveryCodes
��E R
.
��R S
ToArray
��S Z
(
��Z [
)
��[ \
}
��] ^
;
��^ _
return
�� 
View
�� 
(
�� 
nameof
�� 
(
�� 
ShowRecoveryCodes
�� ,
)
��, -
,
��- .
model
��/ 4
)
��4 5
;
��5 6
}
�� 
[
�� 
HttpGet
�� 
]
�� 
public
�� 

async
�� 
Task
�� 
<
�� 
IActionResult
�� #
>
��# $*
GenerateRecoveryCodesWarning
��% A
(
��A B
)
��B C
{
�� 
var
�� 
user
�� 
=
�� 
await
�� 
_userManager
�� %
.
��% &
GetUserAsync
��& 2
(
��2 3
User
��3 7
)
��7 8
;
��8 9
if
�� 

(
�� 
user
�� 
==
�� 
null
�� 
)
�� 
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- J
{
��J K
_userManager
��K W
.
��W X
	GetUserId
��X a
(
��a b
User
��b f
)
��f g
}
��g h
$str
��h j
"
��j k
)
��k l
;
��l m
}
�� 	
if
�� 

(
�� 
!
�� 
user
�� 
.
�� 
TwoFactorEnabled
�� "
)
��" #
{
�� 	
throw
�� 
new
�� "
ApplicationException
�� *
(
��* +
$"
��+ -
$str
��- ^
{
��^ _
user
��_ c
.
��c d
Id
��d f
}
��f g
$str��g �
"��� �
)��� �
;��� �
}
�� 	
return
�� 
View
�� 
(
�� 
nameof
�� 
(
�� *
GenerateRecoveryCodesWarning
�� 7
)
��7 8
)
��8 9
;
��9 :
}
�� 
private
�� 
void
�� 
	AddErrors
�� 
(
�� 
IdentityResult
�� )
result
��* 0
)
��0 1
{
�� 
foreach
�� 
(
�� 
var
�� 
error
�� 
in
�� 
result
�� $
.
��$ %
Errors
��% +
)
��+ ,
{
�� 	

ModelState
�� 
.
�� 
AddModelError
�� $
(
��$ %
string
��% +
.
��+ ,
Empty
��, 1
,
��1 2
error
��3 8
.
��8 9
Description
��9 D
)
��D E
;
��E F
}
�� 	
}
�� 
private
�� 
string
�� 
	FormatKey
�� 
(
�� 
string
�� #
unformattedKey
��$ 2
)
��2 3
{
�� 
var
�� 
result
�� 
=
�� 
new
�� 
StringBuilder
�� &
(
��& '
)
��' (
;
��( )
int
�� 
currentPosition
�� 
=
�� 
$num
�� 
;
��  
while
�� 
(
�� 
currentPosition
�� 
+
��  
$num
��! "
<
��# $
unformattedKey
��% 3
.
��3 4
Length
��4 :
)
��: ;
{
�� 	
result
�� 
.
�� 
Append
�� 
(
�� 
unformattedKey
�� (
.
��( )
	Substring
��) 2
(
��2 3
currentPosition
��3 B
,
��B C
$num
��D E
)
��E F
)
��F G
.
��G H
Append
��H N
(
��N O
$str
��O R
)
��R S
;
��S T
currentPosition
�� 
+=
�� 
$num
��  
;
��  !
}
�� 	
if
�� 

(
�� 
currentPosition
�� 
<
�� 
unformattedKey
�� ,
.
��, -
Length
��- 3
)
��3 4
{
�� 	
result
�� 
.
�� 
Append
�� 
(
�� 
unformattedKey
�� (
.
��( )
	Substring
��) 2
(
��2 3
currentPosition
��3 B
)
��B C
)
��C D
;
��D E
}
�� 	
return
�� 
result
�� 
.
�� 
ToString
�� 
(
�� 
)
��  
.
��  !
ToLowerInvariant
��! 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
private
�� 
string
�� 
GenerateQrCodeUri
�� $
(
��$ %
string
��% +
email
��, 1
,
��1 2
string
��3 9
unformattedKey
��: H
)
��H I
{
�� 
return
�� 
string
�� 
.
�� 
Format
�� 
(
�� $
AuthenticatorUriFormat
�� "
,
��" #
_urlEncoder
�� 
.
�� 
Encode
�� 
(
�� 
$str
�� +
)
��+ ,
,
��, -
_urlEncoder
�� 
.
�� 
Encode
�� 
(
�� 
email
�� $
)
��$ %
,
��% &
unformattedKey
�� 
)
�� 
;
�� 
}
�� 
private
�� 
async
�� 
Task
�� ,
LoadSharedKeyAndQrCodeUriAsync
�� 5
(
��5 6
ApplicationUser
��6 E
user
��F J
,
��J K*
EnableAuthenticatorViewModel
��L h
model
��i n
)
��n o
{
�� 
var
�� 
unformattedKey
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0&
GetAuthenticatorKeyAsync
��0 H
(
��H I
user
��I M
)
��M N
;
��N O
if
�� 

(
�� 
string
�� 
.
�� 
IsNullOrEmpty
��  
(
��  !
unformattedKey
��! /
)
��/ 0
)
��0 1
{
�� 	
await
�� 
_userManager
�� 
.
�� (
ResetAuthenticatorKeyAsync
�� 9
(
��9 :
user
��: >
)
��> ?
;
��? @
unformattedKey
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0&
GetAuthenticatorKeyAsync
��0 H
(
��H I
user
��I M
)
��M N
;
��N O
}
�� 	
model
�� 
.
�� 
	SharedKey
�� 
=
�� 
	FormatKey
�� #
(
��# $
unformattedKey
��$ 2
!
��2 3
)
��3 4
;
��4 5
model
�� 
.
�� 
AuthenticatorUri
�� 
=
��  
GenerateQrCodeUri
��! 2
(
��2 3
user
��3 7
.
��7 8
Email
��8 =
!
��= >
,
��> ?
unformattedKey
��@ N
!
��N O
)
��O P
;
��P Q
}
�� 
}�� �
i/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Controllers/Api/BaseApiController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
., -
Api- 0
;0 1
[ 
Route 
( 
$str "
)" #
]# $
[ 
ApiController 
] 
public 
class 
BaseApiController 
:  
ControllerBase! /
{		 
}		 �
Q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Constants.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
;  !
public 
static 
class 
	Constants 
{ 
public 

const 
string 
BASKET_COOKIENAME )
=* +
$str, 3
;3 4
public 

const 
int 
ITEMS_PER_PAGE #
=$ %
$num& (
;( )
public 

const 
string 
DEFAULT_USERNAME (
=) *
$str+ 2
;2 3
public 

const 
string 
	BASKET_ID !
=" #
$str$ .
;. /
}		 �
p/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Configuration/RevokeAuthenticationEvents.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 
Web		  
.		  !
Configuration		! .
;		. /
public 
class &
RevokeAuthenticationEvents '
:( )&
CookieAuthenticationEvents* D
{ 
private 
readonly 
IMemoryCache !
_cache" (
;( )
private 
readonly 
ILogger 
_logger $
;$ %
public 
&
RevokeAuthenticationEvents %
(% &
IMemoryCache& 2
cache3 8
,8 9
ILogger: A
<A B&
RevokeAuthenticationEventsB \
>\ ]
logger^ d
)d e
{ 
_cache 
= 
cache 
; 
_logger 
= 
logger 
; 
} 
public 

override 
async 
Task 
ValidatePrincipal 0
(0 1*
CookieValidatePrincipalContext1 O
contextP W
)W X
{ 
var 
userId 
= 
context 
. 
	Principal &
?& '
.' (
Claims( .
.. /
First/ 4
(4 5
c5 6
=>7 9
c: ;
.; <
Type< @
==A C

ClaimTypesD N
.N O
NameO S
)S T
;T U
var 
identityKey 
= 
context !
.! "
Request" )
.) *
Cookies* 1
[1 2#
ConfigureCookieSettings2 I
.I J 
IdentifierCookieNameJ ^
]^ _
;_ `
if 

( 
_cache 
. 
TryGetValue 
( 
$" !
{! "
userId" (
?( )
.) *
Value* /
}/ 0
$str0 1
{1 2
identityKey2 =
}= >
"> ?
,? @
outA D
varE H

revokeKeysI S
)S T
)T U
{ 	
_logger 
. 
LogDebug 
( 
$" 
$str <
{< =
userId= C
?C D
.D E
ValueE J
}J K
$strK L
"L M
)M N
;N O
context 
. 
RejectPrincipal #
(# $
)$ %
;% &
await   
context   
.   
HttpContext   %
.  % &
SignOutAsync  & 2
(  2 3(
CookieAuthenticationDefaults  3 O
.  O P 
AuthenticationScheme  P d
)  d e
;  e f
}!! 	
}"" 
}## �
j/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Configuration/ConfigureWebServices.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Configuration! .
;. /
public 
static 
class  
ConfigureWebServices (
{ 
public		 

static		 
IServiceCollection		 $
AddWebServices		% 3
(		3 4
this		4 8
IServiceCollection		9 K
services		L T
,		T U
IConfiguration		V d
configuration		e r
)		r s
{

 
services 
. 

AddMediatR 
( 
cfg 
=>  "
cfg 
. (
RegisterServicesFromAssembly ,
(, -
typeof- 3
(3 4"
BasketViewModelService4 J
)J K
.K L
AssemblyL T
)T U
)U V
;V W
services 
. 
	AddScoped 
< #
IBasketViewModelService 2
,2 3"
BasketViewModelService4 J
>J K
(K L
)L M
;M N
services 
. 
	AddScoped 
< #
CatalogViewModelService 2
>2 3
(3 4
)4 5
;5 6
services 
. 
	AddScoped 
< (
ICatalogItemViewModelService 7
,7 8'
CatalogItemViewModelService9 T
>T U
(U V
)V W
;W X
services 
. 
	Configure 
< 
CatalogSettings *
>* +
(+ ,
configuration, 9
)9 :
;: ;
services 
. 
	AddScoped 
< $
ICatalogViewModelService 3
,3 4)
CachedCatalogViewModelService5 R
>R S
(S T
)T U
;U V
return 
services 
; 
} 
} �
k/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Configuration/ConfigureCoreServices.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Configuration! .
;. /
public

 
static

 
class

 !
ConfigureCoreServices

 )
{ 
public 

static 
IServiceCollection $
AddCoreServices% 4
(4 5
this5 9
IServiceCollection: L
servicesM U
,U V
IConfiguration 
configuration $
)$ %
{ 
services 
. 
	AddScoped 
( 
typeof !
(! "
IReadRepository" 1
<1 2
>2 3
)3 4
,4 5
typeof6 <
(< =
EfRepository= I
<I J
>J K
)K L
)L M
;M N
services 
. 
	AddScoped 
( 
typeof !
(! "
IRepository" -
<- .
>. /
)/ 0
,0 1
typeof2 8
(8 9
EfRepository9 E
<E F
>F G
)G H
)H I
;I J
services 
. 
	AddScoped 
< 
IBasketService )
,) *
BasketService+ 8
>8 9
(9 :
): ;
;; <
services 
. 
	AddScoped 
< 
IOrderService (
,( )
OrderService* 6
>6 7
(7 8
)8 9
;9 :
services 
. 
	AddScoped 
< 
IBasketQueryService .
,. /
BasketQueryService0 B
>B C
(C D
)D E
;E F
var 
catalogSettings 
= 
configuration +
.+ ,
Get, /
</ 0
CatalogSettings0 ?
>? @
(@ A
)A B
??C E
newF I
CatalogSettingsJ Y
(Y Z
)Z [
;[ \
services 
. 
AddSingleton 
< 
IUriComposer *
>* +
(+ ,
new, /
UriComposer0 ;
(; <
catalogSettings< K
)K L
)L M
;M N
services 
. 
	AddScoped 
( 
typeof !
(! "

IAppLogger" ,
<, -
>- .
). /
,/ 0
typeof1 7
(7 8
LoggerAdapter8 E
<E F
>F G
)G H
)H I
;I J
services 
. 
AddTransient 
< 
IEmailSender *
,* +
EmailSender, 7
>7 8
(8 9
)9 :
;: ;
return 
services 
; 
} 
} �B
t/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Areas/Identity/Pages/Account/Register.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
;= >
[ 
AllowAnonymous 
] 
public 
class 
RegisterModel 
: 
	PageModel &
{ 
private 
readonly 
SignInManager "
<" #
ApplicationUser# 2
>2 3
_signInManager4 B
;B C
private 
readonly 
UserManager  
<  !
ApplicationUser! 0
>0 1
_userManager2 >
;> ?
private 
readonly 
ILogger 
< 
RegisterModel *
>* +
_logger, 3
;3 4
private 
readonly 
IEmailSender !
_emailSender" .
;. /
public 

RegisterModel 
( 
UserManager 
< 
ApplicationUser #
># $
userManager% 0
,0 1
SignInManager 
< 
ApplicationUser %
>% &
signInManager' 4
,4 5
ILogger 
< 
RegisterModel 
> 
logger %
,% &
IEmailSender 
emailSender  
)  !
{ 
_userManager 
= 
userManager "
;" #
_signInManager   
=   
signInManager   &
;  & '
_logger!! 
=!! 
logger!! 
;!! 
_emailSender"" 
="" 
emailSender"" "
;""" #
}## 
[%% 
BindProperty%% 
]%% 
public&& 

required&& 

InputModel&& 
Input&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
public(( 

string(( 
?(( 
	ReturnUrl(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public** 

class** 

InputModel** 
{++ 
[,, 	
Required,,	 
],, 
[-- 	
EmailAddress--	 
]-- 
[.. 	
Display..	 
(.. 
Name.. 
=.. 
$str.. 
)..  
]..  !
public// 
string// 
?// 
Email// 
{// 
get// "
;//" #
set//$ '
;//' (
}//) *
[11 	
Required11	 
]11 
[22 	
StringLength22	 
(22 
$num22 
,22 
ErrorMessage22 '
=22( )
$str22* h
,22h i
MinimumLength22j w
=22x y
$num22z {
)22{ |
]22| }
[33 	
DataType33	 
(33 
DataType33 
.33 
Password33 #
)33# $
]33$ %
[44 	
Display44	 
(44 
Name44 
=44 
$str44 "
)44" #
]44# $
public55 
string55 
?55 
Password55 
{55  !
get55" %
;55% &
set55' *
;55* +
}55, -
[77 	
DataType77	 
(77 
DataType77 
.77 
Password77 #
)77# $
]77$ %
[88 	
Display88	 
(88 
Name88 
=88 
$str88 *
)88* +
]88+ ,
[99 	
Compare99	 
(99 
$str99 
,99 
ErrorMessage99 )
=99* +
$str99, b
)99b c
]99c d
public:: 
string:: 
?:: 
ConfirmPassword:: &
{::' (
get::) ,
;::, -
set::. 1
;::1 2
}::3 4
};; 
public== 

void== 
OnGet== 
(== 
string== 
?== 
	returnUrl== '
===( )
null==* .
)==. /
{>> 
	ReturnUrl?? 
=?? 
	returnUrl?? 
;?? 
}@@ 
publicBB 

asyncBB 
TaskBB 
<BB 
IActionResultBB #
>BB# $
OnPostAsyncBB% 0
(BB0 1
stringBB1 7
?BB7 8
	returnUrlBB9 B
=BBC D
nullBBE I
)BBI J
{CC 
	returnUrlDD 
=DD 
	returnUrlDD 
??DD  
UrlDD! $
.DD$ %
ContentDD% ,
(DD, -
$strDD- 1
)DD1 2
;DD2 3
ifEE 

(EE 

ModelStateEE 
.EE 
IsValidEE 
)EE 
{FF 	
varGG 
userGG 
=GG 
newGG 
ApplicationUserGG *
{GG+ ,
UserNameGG- 5
=GG6 7
InputGG8 =
?GG= >
.GG> ?
EmailGG? D
,GGD E
EmailGGF K
=GGL M
InputGGN S
?GGS T
.GGT U
EmailGGU Z
}GG[ \
;GG\ ]
varHH 
resultHH 
=HH 
awaitHH 
_userManagerHH +
.HH+ ,
CreateAsyncHH, 7
(HH7 8
userHH8 <
,HH< =
InputHH> C
?HHC D
.HHD E
PasswordHHE M
!HHM N
)HHN O
;HHO P
ifII 
(II 
resultII 
.II 
	SucceededII  
)II  !
{JJ 
_loggerKK 
.KK 
LogInformationKK &
(KK& '
$strKK' R
)KKR S
;KKS T
varMM 
codeMM 
=MM 
awaitMM  
_userManagerMM! -
.MM- ./
#GenerateEmailConfirmationTokenAsyncMM. Q
(MMQ R
userMMR V
)MMV W
;MMW X
varNN 
callbackUrlNN 
=NN  !
UrlNN" %
.NN% &
PageNN& *
(NN* +
$strOO +
,OO+ ,
pageHandlerPP 
:PP  
nullPP! %
,PP% &
valuesQQ 
:QQ 
newQQ 
{QQ  !
userIdQQ" (
=QQ) *
userQQ+ /
.QQ/ 0
IdQQ0 2
,QQ2 3
codeQQ4 8
=QQ9 :
codeQQ; ?
}QQ@ A
,QQA B
protocolRR 
:RR 
RequestRR %
.RR% &
SchemeRR& ,
)RR, -
;RR- .
GuardTT 
.TT 
AgainstTT 
.TT 
NullTT "
(TT" #
callbackUrlTT# .
,TT. /
nameofTT0 6
(TT6 7
callbackUrlTT7 B
)TTB C
)TTC D
;TTD E
awaitUU 
_emailSenderUU "
.UU" #
SendEmailAsyncUU# 1
(UU1 2
InputUU2 7
!UU7 8
.UU8 9
EmailUU9 >
!UU> ?
,UU? @
$strUUA U
,UUU V
$"VV 
$strVV >
{VV> ?
HtmlEncoderVV? J
.VVJ K
DefaultVVK R
.VVR S
EncodeVVS Y
(VVY Z
callbackUrlVVZ e
)VVe f
}VVf g
$strVVg {
"VV{ |
)VV| }
;VV} ~
awaitXX 
_signInManagerXX $
.XX$ %
SignInAsyncXX% 0
(XX0 1
userXX1 5
,XX5 6
isPersistentXX7 C
:XXC D
falseXXE J
)XXJ K
;XXK L
returnYY 
LocalRedirectYY $
(YY$ %
	returnUrlYY% .
)YY. /
;YY/ 0
}ZZ 
foreach[[ 
([[ 
var[[ 
error[[ 
in[[ !
result[[" (
.[[( )
Errors[[) /
)[[/ 0
{\\ 

ModelState]] 
.]] 
AddModelError]] (
(]]( )
string]]) /
.]]/ 0
Empty]]0 5
,]]5 6
error]]7 <
.]]< =
Description]]= H
)]]H I
;]]I J
}^^ 
}__ 	
returnbb 
Pagebb 
(bb 
)bb 
;bb 
}cc 
}dd �
m/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Configuration/ConfigureCookieSettings.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Configuration! .
;. /
public 
static 
class #
ConfigureCookieSettings +
{		 
public

 

const

 
int

 !
ValidityMinutesPeriod

 *
=

+ ,
$num

- /
;

/ 0
public 

const 
string  
IdentifierCookieName ,
=- .
$str/ @
;@ A
public 

static 
IServiceCollection $
AddCookieSettings% 6
(6 7
this7 ;
IServiceCollection< N
servicesO W
)W X
{ 
services 
. 
	Configure 
< 
CookiePolicyOptions .
>. /
(/ 0
options0 7
=>8 :
{ 	
options 
. !
MinimumSameSitePolicy -
=. /
SameSiteMode0 <
.< =
Strict= C
;C D
} 	
)	 

;
 
services 
. &
ConfigureApplicationCookie +
(+ ,
options, 3
=>4 6
{ 	
options 
. 

EventsType 
=  
typeof! '
(' (&
RevokeAuthenticationEvents( B
)B C
;C D
options 
. 
Cookie 
. 
HttpOnly #
=$ %
true& *
;* +
options 
. 
ExpireTimeSpan "
=# $
TimeSpan% -
.- .
FromMinutes. 9
(9 :!
ValidityMinutesPeriod: O
)O P
;P Q
options 
. 
	LoginPath 
= 
$str  0
;0 1
options 
. 

LogoutPath 
=  
$str! 2
;2 3
options 
. 
Cookie 
= 
new  
CookieBuilder! .
{ 
Name 
=  
IdentifierCookieName +
,+ ,
IsEssential   
=   
true   "
}!! 
;!! 
}"" 	
)""	 

;""
 
services$$ 
.$$ 
	AddScoped$$ 
<$$ &
RevokeAuthenticationEvents$$ 5
>$$5 6
($$6 7
)$$7 8
;$$8 9
return&& 
services&& 
;&& 
}'' 
}(( �!
r/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Areas/Identity/Pages/Account/Logout.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
;= >
public 
class 
LogoutModel 
: 
	PageModel $
{ 
private 
readonly 
SignInManager "
<" #
ApplicationUser# 2
>2 3
_signInManager4 B
;B C
private 
readonly 
ILogger 
< 
LogoutModel (
>( )
_logger* 1
;1 2
private 
readonly 
IMemoryCache !
_cache" (
;( )
public 

LogoutModel 
( 
SignInManager $
<$ %
ApplicationUser% 4
>4 5
signInManager6 C
,C D
ILoggerE L
<L M
LogoutModelM X
>X Y
loggerZ `
,` a
IMemoryCacheb n
cacheo t
)t u
{ 
_signInManager 
= 
signInManager &
;& '
_logger 
= 
logger 
; 
_cache 
= 
cache 
; 
} 
public 

void 
OnGet 
( 
) 
{ 
} 
public 

async 
Task 
< 
IActionResult #
># $
OnPost% +
(+ ,
string, 2
?2 3
	returnUrl4 =
=> ?
null@ D
)D E
{   
await!! 
_signInManager!! 
.!! 
SignOutAsync!! )
(!!) *
)!!* +
;!!+ ,
await"" 
HttpContext"" 
."" 
SignOutAsync"" &
(""& '(
CookieAuthenticationDefaults""' C
.""C D 
AuthenticationScheme""D X
)""X Y
;""Y Z
var## 
userId## 
=## 
_signInManager## #
.### $
Context##$ +
.##+ ,
User##, 0
.##0 1
Claims##1 7
.##7 8
First##8 =
(##= >
c##> ?
=>##@ B
c##C D
.##D E
Type##E I
==##J L

ClaimTypes##M W
.##W X
Name##X \
)##\ ]
;##] ^
var$$ 
identityKey$$ 
=$$ 
_signInManager$$ (
.$$( )
Context$$) 0
.$$0 1
Request$$1 8
.$$8 9
Cookies$$9 @
[$$@ A#
ConfigureCookieSettings$$A X
.$$X Y 
IdentifierCookieName$$Y m
]$$m n
;$$n o
_cache%% 
.%% 
Set%% 
(%% 
$"%% 
{%% 
userId%% 
.%% 
Value%% "
}%%" #
$str%%# $
{%%$ %
identityKey%%% 0
}%%0 1
"%%1 2
,%%2 3
identityKey%%4 ?
,%%? @
new%%A D#
MemoryCacheEntryOptions%%E \
{&& 	
AbsoluteExpiration'' 
=''  
DateTime''! )
.'') *
Now''* -
.''- .

AddMinutes''. 8
(''8 9#
ConfigureCookieSettings''9 P
.''P Q!
ValidityMinutesPeriod''Q f
)''f g
}(( 	
)((	 

;((
 
_logger** 
.** 
LogInformation** 
(** 
$str** 1
)**1 2
;**2 3
if++ 

(++ 
	returnUrl++ 
!=++ 
null++ 
)++ 
{,, 	
return-- 
LocalRedirect--  
(--  !
	returnUrl--! *
)--* +
;--+ ,
}.. 	
else// 
{00 	
return11 
RedirectToPage11 !
(11! "
$str11" *
)11* +
;11+ ,
}22 	
}33 
}44 �J
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Areas/Identity/Pages/Account/Login.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
;= >
[ 
AllowAnonymous 
] 
public 
class 

LoginModel 
: 
	PageModel #
{ 
private 
readonly 
SignInManager "
<" #
ApplicationUser# 2
>2 3
_signInManager4 B
;B C
private 
readonly 
ILogger 
< 

LoginModel '
>' (
_logger) 0
;0 1
private 
readonly 
IBasketService #
_basketService$ 2
;2 3
public 


LoginModel 
( 
SignInManager #
<# $
ApplicationUser$ 3
>3 4
signInManager5 B
,B C
ILoggerD K
<K L

LoginModelL V
>V W
loggerX ^
,^ _
IBasketService` n
basketServiceo |
)| }
{ 
_signInManager 
= 
signInManager &
;& '
_logger 
= 
logger 
; 
_basketService 
= 
basketService &
;& '
} 
[ 
BindProperty 
] 
public 

required 

InputModel 
Input $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 

IList 
<  
AuthenticationScheme %
>% &
?& '
ExternalLogins( 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public   

string   
?   
	ReturnUrl   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
["" 
TempData"" 
]"" 
public## 

string## 
?## 
ErrorMessage## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public%% 

class%% 

InputModel%% 
{&& 
['' 	
Required''	 
]'' 
[(( 	
EmailAddress((	 
](( 
public)) 
string)) 
?)) 
Email)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
[++ 	
Required++	 
]++ 
[,, 	
DataType,,	 
(,, 
DataType,, 
.,, 
Password,, #
),,# $
],,$ %
public-- 
string-- 
?-- 
Password-- 
{--  !
get--" %
;--% &
set--' *
;--* +
}--, -
[// 	
Display//	 
(// 
Name// 
=// 
$str// &
)//& '
]//' (
public00 
bool00 

RememberMe00 
{00  
get00! $
;00$ %
set00& )
;00) *
}00+ ,
}11 
public33 

async33 
Task33 

OnGetAsync33  
(33  !
string33! '
?33' (
	returnUrl33) 2
=333 4
null335 9
)339 :
{44 
if55 

(55 
!55 
string55 
.55 
IsNullOrEmpty55 !
(55! "
ErrorMessage55" .
)55. /
)55/ 0
{66 	

ModelState77 
.77 
AddModelError77 $
(77$ %
string77% +
.77+ ,
Empty77, 1
,771 2
ErrorMessage773 ?
)77? @
;77@ A
}88 	
	returnUrl:: 
=:: 
	returnUrl:: 
??::  
Url::! $
.::$ %
Content::% ,
(::, -
$str::- 1
)::1 2
;::2 3
await== 
HttpContext== 
.== 
SignOutAsync== &
(==& '
IdentityConstants==' 8
.==8 9
ExternalScheme==9 G
)==G H
;==H I
ExternalLogins?? 
=?? 
(?? 
await?? 
_signInManager??  .
.??. /1
%GetExternalAuthenticationSchemesAsync??/ T
(??T U
)??U V
)??V W
.??W X
ToList??X ^
(??^ _
)??_ `
;??` a
	ReturnUrlAA 
=AA 
	returnUrlAA 
;AA 
}BB 
publicDD 

asyncDD 
TaskDD 
<DD 
IActionResultDD #
>DD# $
OnPostAsyncDD% 0
(DD0 1
stringDD1 7
?DD7 8
	returnUrlDD9 B
=DDC D
nullDDE I
)DDI J
{EE 
	returnUrlFF 
=FF 
	returnUrlFF 
??FF  
UrlFF! $
.FF$ %
ContentFF% ,
(FF, -
$strFF- 1
)FF1 2
;FF2 3
ifHH 

(HH 

ModelStateHH 
.HH 
IsValidHH 
)HH 
{II 	
varMM 
resultMM 
=MM 
awaitMM 
_signInManagerMM -
.MM- .
PasswordSignInAsyncMM. A
(MMA B
InputMMB G
!MMG H
.MMH I
EmailMMI N
!MMN O
,MMO P
InputMMQ V
!MMV W
.MMW X
PasswordMMX `
!MM` a
,MMa b
falseNN 
,NN 
trueNN 
)NN 
;NN 
ifPP 
(PP 
resultPP 
.PP 
	SucceededPP  
)PP  !
{QQ 
_loggerRR 
.RR 
LogInformationRR &
(RR& '
$strRR' 8
)RR8 9
;RR9 :
awaitSS .
"TransferAnonymousBasketToUserAsyncSS 8
(SS8 9
InputSS9 >
?SS> ?
.SS? @
EmailSS@ E
)SSE F
;SSF G
returnTT 
LocalRedirectTT $
(TT$ %
	returnUrlTT% .
)TT. /
;TT/ 0
}UU 
ifVV 
(VV 
resultVV 
.VV 
RequiresTwoFactorVV (
)VV( )
{WW 
returnXX 
RedirectToPageXX %
(XX% &
$strXX& 6
,XX6 7
newXX8 ;
{XX< =
	ReturnUrlXX> G
=XXH I
	returnUrlXXJ S
,XXS T

RememberMeXXU _
=XX` a
InputXXb g
?XXg h
.XXh i

RememberMeXXi s
}XXt u
)XXu v
;XXv w
}YY 
ifZZ 
(ZZ 
resultZZ 
.ZZ 
IsLockedOutZZ "
)ZZ" #
{[[ 
_logger\\ 
.\\ 

LogWarning\\ "
(\\" #
$str\\# =
)\\= >
;\\> ?
return]] 
RedirectToPage]] %
(]]% &
$str]]& 1
)]]1 2
;]]2 3
}^^ 
else__ 
{`` 

ModelStateaa 
.aa 
AddModelErroraa (
(aa( )
stringaa) /
.aa/ 0
Emptyaa0 5
,aa5 6
$straa7 O
)aaO P
;aaP Q
returnbb 
Pagebb 
(bb 
)bb 
;bb 
}cc 
}dd 	
returngg 
Pagegg 
(gg 
)gg 
;gg 
}hh 
privatejj 
asyncjj 
Taskjj .
"TransferAnonymousBasketToUserAsyncjj 9
(jj9 :
stringjj: @
?jj@ A
userNamejjB J
)jjJ K
{kk 
ifll 

(ll 
Requestll 
.ll 
Cookiesll 
.ll 
ContainsKeyll '
(ll' (
	Constantsll( 1
.ll1 2
BASKET_COOKIENAMEll2 C
)llC D
)llD E
{mm 	
varnn 
anonymousIdnn 
=nn 
Requestnn %
.nn% &
Cookiesnn& -
[nn- .
	Constantsnn. 7
.nn7 8
BASKET_COOKIENAMEnn8 I
]nnI J
;nnJ K
ifoo 
(oo 
Guidoo 
.oo 
TryParseoo 
(oo 
anonymousIdoo )
,oo) *
outoo+ .
varoo/ 2
_oo3 4
)oo4 5
)oo5 6
{pp 
Guardqq 
.qq 
Againstqq 
.qq 
NullOrEmptyqq )
(qq) *
userNameqq* 2
,qq2 3
nameofqq4 :
(qq: ;
userNameqq; C
)qqC D
)qqD E
;qqE F
awaitrr 
_basketServicerr $
.rr$ %
TransferBasketAsyncrr% 8
(rr8 9
anonymousIdrr9 D
,rrD E
userNamerrF N
)rrN O
;rrO P
}ss 
Responsett 
.tt 
Cookiestt 
.tt 
Deletett #
(tt# $
	Constantstt$ -
.tt- .
BASKET_COOKIENAMEtt. ?
)tt? @
;tt@ A
}uu 	
}vv 
}ww �
x/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Areas/Identity/Pages/Account/ConfirmEmail.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Areas! &
.& '
Identity' /
./ 0
Pages0 5
.5 6
Account6 =
;= >
[ 
AllowAnonymous 
] 
public 
class 
ConfirmEmailModel 
:  
	PageModel! *
{ 
private 
readonly 
UserManager  
<  !
ApplicationUser! 0
>0 1
_userManager2 >
;> ?
public 

ConfirmEmailModel 
( 
UserManager (
<( )
ApplicationUser) 8
>8 9
userManager: E
)E F
{ 
_userManager 
= 
userManager "
;" #
} 
public 

async 
Task 
< 
IActionResult #
># $

OnGetAsync% /
(/ 0
string0 6
userId7 =
,= >
string? E
codeF J
)J K
{ 
if 

( 
userId 
== 
null 
|| 
code "
==# %
null& *
)* +
{ 	
return 
RedirectToPage !
(! "
$str" *
)* +
;+ ,
} 	
var 
user 
= 
await 
_userManager %
.% &
FindByIdAsync& 3
(3 4
userId4 :
): ;
;; <
if 

( 
user 
== 
null 
) 
{   	
return!! 
NotFound!! 
(!! 
$"!! 
$str!! ;
{!!; <
userId!!< B
}!!B C
$str!!C E
"!!E F
)!!F G
;!!G H
}"" 	
var$$ 
result$$ 
=$$ 
await$$ 
_userManager$$ '
.$$' (
ConfirmEmailAsync$$( 9
($$9 :
user$$: >
,$$> ?
code$$@ D
)$$D E
;$$E F
if%% 

(%% 
!%% 
result%% 
.%% 
	Succeeded%% 
)%% 
{&& 	
throw'' 
new'' %
InvalidOperationException'' /
(''/ 0
$"''0 2
$str''2 [
{''[ \
userId''\ b
}''b c
$str''c e
"''e f
)''f g
;''g h
}(( 	
return** 
Page** 
(** 
)** 
;** 
}++ 
},, �	
m/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/Web/Areas/Identity/IdentityHostingStartup.cs
[ 
assembly 	
:	 

HostingStartup 
( 
typeof  
(  !
	Microsoft! *
.* +
eShopWeb+ 3
.3 4
Web4 7
.7 8
Areas8 =
.= >
Identity> F
.F G"
IdentityHostingStartupG ]
)] ^
)^ _
]_ `
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Areas! &
.& '
Identity' /
;/ 0
public 
class "
IdentityHostingStartup #
:$ %
IHostingStartup& 5
{ 
public 

void 
	Configure 
( 
IWebHostBuilder )
builder* 1
)1 2
{		 
builder

 
.

 
ConfigureServices

 !
(

! "
(

" #
context

# *
,

* +
services

, 4
)

4 5
=>

6 8
{ 	
} 	
)	 

;
 
} 
} 