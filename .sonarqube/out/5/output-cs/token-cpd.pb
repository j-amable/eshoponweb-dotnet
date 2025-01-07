à{
U/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddEndpoints 
( 
) 
;  
builder 
. 
Configuration 
.  
AddConfigurationFile *
(* +
$str+ B
)B C
;C D
builder   
.   
Logging   
.   

AddConsole   
(   
)   
;   
	Microsoft"" 	
.""	 

eShopWeb""
 
."" 
Infrastructure"" !
.""! "
Dependencies""" .
."". /
ConfigureServices""/ @
(""@ A
builder""A H
.""H I
Configuration""I V
,""V W
builder""X _
.""_ `
Services""` h
)""h i
;""i j
builder$$ 
.$$ 
Services$$ 
.$$ 
AddIdentity$$ 
<$$ 
ApplicationUser$$ ,
,$$, -
IdentityRole$$. :
>$$: ;
($$; <
)$$< =
.%% 	$
AddEntityFrameworkStores%%	 !
<%%! " 
AppIdentityDbContext%%" 6
>%%6 7
(%%7 8
)%%8 9
.&& 	$
AddDefaultTokenProviders&&	 !
(&&! "
)&&" #
;&&# $
builder(( 
.(( 
Services(( 
.(( 
	AddScoped(( 
((( 
typeof(( !
(((! "
IRepository((" -
<((- .
>((. /
)((/ 0
,((0 1
typeof((2 8
(((8 9
EfRepository((9 E
<((E F
>((F G
)((G H
)((H I
;((I J
builder)) 
.)) 
Services)) 
.)) 
	AddScoped)) 
()) 
typeof)) !
())! "
IReadRepository))" 1
<))1 2
>))2 3
)))3 4
,))4 5
typeof))6 <
())< =
EfRepository))= I
<))I J
>))J K
)))K L
)))L M
;))M N
builder** 
.** 
Services** 
.** 
	Configure** 
<** 
CatalogSettings** *
>*** +
(**+ ,
builder**, 3
.**3 4
Configuration**4 A
)**A B
;**B C
var++ 
catalogSettings++ 
=++ 
builder++ 
.++ 
Configuration++ +
.+++ ,
Get++, /
<++/ 0
CatalogSettings++0 ?
>++? @
(++@ A
)++A B
??++C E
new++F I
CatalogSettings++J Y
(++Y Z
)++Z [
;++[ \
builder,, 
.,, 
Services,, 
.,, 
AddSingleton,, 
<,, 
IUriComposer,, *
>,,* +
(,,+ ,
new,,, /
UriComposer,,0 ;
(,,; <
catalogSettings,,< K
),,K L
),,L M
;,,M N
builder-- 
.-- 
Services-- 
.-- 
	AddScoped-- 
(-- 
typeof-- !
(--! "

IAppLogger--" ,
<--, -
>--- .
)--. /
,--/ 0
typeof--1 7
(--7 8
LoggerAdapter--8 E
<--E F
>--F G
)--G H
)--H I
;--I J
builder.. 
... 
Services.. 
... 
	AddScoped.. 
<.. 
ITokenClaimsService.. .
,... /%
IdentityTokenClaimService..0 I
>..I J
(..J K
)..K L
;..L M
var00 
configSection00 
=00 
builder00 
.00 
Configuration00 )
.00) *
GetRequiredSection00* <
(00< = 
BaseUrlConfiguration00= Q
.00Q R
CONFIG_NAME00R ]
)00] ^
;00^ _
builder11 
.11 
Services11 
.11 
	Configure11 
<11  
BaseUrlConfiguration11 /
>11/ 0
(110 1
configSection111 >
)11> ?
;11? @
var22 
baseUrlConfig22 
=22 
configSection22 !
.22! "
Get22" %
<22% & 
BaseUrlConfiguration22& :
>22: ;
(22; <
)22< =
;22= >
builder44 
.44 
Services44 
.44 
AddMemoryCache44 
(44  
)44  !
;44! "
var66 
key66 
=66 	
Encoding66
 
.66 
ASCII66 
.66 
GetBytes66 !
(66! ""
AuthorizationConstants66" 8
.668 9
JWT_SECRET_KEY669 G
)66G H
;66H I
builder77 
.77 
Services77 
.77 
AddAuthentication77 "
(77" #
config77# )
=>77* ,
{88 
config99 

.99
 
DefaultScheme99 
=99 
JwtBearerDefaults99 ,
.99, - 
AuthenticationScheme99- A
;99A B
}:: 
):: 
.;; 
AddJwtBearer;; 
(;; 
config;; 
=>;; 
{<< 
config== 

.==
  
RequireHttpsMetadata== 
===  !
false==" '
;==' (
config>> 

.>>
 
	SaveToken>> 
=>> 
true>> 
;>> 
config?? 

.??
 %
TokenValidationParameters?? $
=??% &
new??' *%
TokenValidationParameters??+ D
{@@ $
ValidateIssuerSigningKeyAA  
=AA! "
trueAA# '
,AA' (
IssuerSigningKeyBB 
=BB 
newBB  
SymmetricSecurityKeyBB 3
(BB3 4
keyBB4 7
)BB7 8
,BB8 9
ValidateIssuerCC 
=CC 
falseCC 
,CC 
ValidateAudienceDD 
=DD 
falseDD  
}EE 
;EE 
}FF 
)FF 
;FF 
constHH 
stringHH 
CORS_POLICYHH 
=HH 
$strHH '
;HH' (
builderII 
.II 
ServicesII 
.II 
AddCorsII 
(II 
optionsII  
=>II! #
{JJ 
optionsKK 
.KK 
	AddPolicyKK 
(KK 
nameKK 
:KK 
CORS_POLICYKK '
,KK' (
corsPolicyBuilderLL 
=>LL 
{MM 	
corsPolicyBuilderNN 
.NN 
WithOriginsNN )
(NN) *
baseUrlConfigNN* 7
!NN7 8
.NN8 9
WebBaseNN9 @
.NN@ A
ReplaceNNA H
(NNH I
$strNNI _
,NN_ `
$strNNa l
)NNl m
.NNm n
TrimEndNNn u
(NNu v
$charNNv y
)NNy z
)NNz {
;NN{ |
corsPolicyBuilderOO 
.OO 
AllowAnyMethodOO ,
(OO, -
)OO- .
;OO. /
corsPolicyBuilderPP 
.PP 
AllowAnyHeaderPP ,
(PP, -
)PP- .
;PP. /
}QQ 	
)QQ	 

;QQ
 
}RR 
)RR 
;RR 
builderTT 
.TT 
ServicesTT 
.TT 
AddControllersTT 
(TT  
)TT  !
;TT! "
builderUU 
.UU 
ServicesUU 
.UU 
AddAutoMapperUU 
(UU 
typeofUU %
(UU% &
MappingProfileUU& 4
)UU4 5
.UU5 6
AssemblyUU6 >
)UU> ?
;UU? @
builderVV 
.VV 
ConfigurationVV 
.VV #
AddEnvironmentVariablesVV -
(VV- .
)VV. /
;VV/ 0
builderXX 
.XX 
ServicesXX 
.XX #
AddEndpointsApiExplorerXX (
(XX( )
)XX) *
;XX* +
builderYY 
.YY 
ServicesYY 
.YY 
AddSwaggerGenYY 
(YY 
cYY  
=>YY! #
{ZZ 
c[[ 
.[[ 

SwaggerDoc[[ 
([[ 
$str[[ 
,[[ 
new[[ 
OpenApiInfo[[ &
{[[' (
Title[[) .
=[[/ 0
$str[[1 9
,[[9 :
Version[[; B
=[[C D
$str[[E I
}[[J K
)[[K L
;[[L M
c\\ 
.\\ 
EnableAnnotations\\ 
(\\ 
)\\ 
;\\ 
c]] 
.]] 
SchemaFilter]] 
<]] 
CustomSchemaFilters]] &
>]]& '
(]]' (
)]]( )
;]]) *
c^^ 
.^^ !
AddSecurityDefinition^^ 
(^^ 
$str^^ $
,^^$ %
new^^& )!
OpenApiSecurityScheme^^* ?
{__ 
Description`` 
=`` 
$str`b <
,bb< =
Namecc 
=cc 
$strcc 
,cc 
Indd 

=dd 
ParameterLocationdd 
.dd 
Headerdd %
,dd% &
Typeee 
=ee 
SecuritySchemeTypeee !
.ee! "
ApiKeyee" (
,ee( )
Schemeff 
=ff 
$strff 
}gg 
)gg 
;gg 
cii 
.ii "
AddSecurityRequirementii 
(ii 
newii  &
OpenApiSecurityRequirementii! ;
(ii; <
)ii< =
{jj 
{kk 
newll !
OpenApiSecuritySchemell 1
{mm 
	Referencenn %
=nn& '
newnn( +
OpenApiReferencenn, <
{oo 
Typepp  $
=pp% &
ReferenceTypepp' 4
.pp4 5
SecuritySchemepp5 C
,ppC D
Idqq  "
=qq# $
$strqq% -
}rr 
,rr 
Schemess "
=ss# $
$strss% -
,ss- .
Namett  
=tt! "
$strtt# +
,tt+ ,
Inuu 
=uu  
ParameterLocationuu! 2
.uu2 3
Headeruu3 9
,uu9 :
}ww 
,ww 
newxx 
Listxx  
<xx  !
stringxx! '
>xx' (
(xx( )
)xx) *
}yy 
}zz 
)zz 
;zz 
}{{ 
){{ 
;{{ 
var}} 
app}} 
=}} 	
builder}}
 
.}} 
Build}} 
(}} 
)}} 
;}} 
app 
. 
Logger 

.
 
LogInformation 
( 
$str 4
)4 5
;5 6
appÅÅ 
.
ÅÅ 
Logger
ÅÅ 

.
ÅÅ
 
LogInformation
ÅÅ 
(
ÅÅ 
$str
ÅÅ /
)
ÅÅ/ 0
;
ÅÅ0 1
usingÉÉ 
(
ÉÉ 
var
ÉÉ 

scope
ÉÉ 
=
ÉÉ 
app
ÉÉ 
.
ÉÉ 
Services
ÉÉ 
.
ÉÉ  
CreateScope
ÉÉ  +
(
ÉÉ+ ,
)
ÉÉ, -
)
ÉÉ- .
{ÑÑ 
var
ÖÖ 
scopedProvider
ÖÖ 
=
ÖÖ 
scope
ÖÖ 
.
ÖÖ 
ServiceProvider
ÖÖ .
;
ÖÖ. /
try
ÜÜ 
{
áá 
var
àà 
catalogContext
àà 
=
àà 
scopedProvider
àà +
.
àà+ , 
GetRequiredService
àà, >
<
àà> ?
CatalogContext
àà? M
>
ààM N
(
ààN O
)
ààO P
;
ààP Q
await
ââ  
CatalogContextSeed
ââ  
.
ââ  !
	SeedAsync
ââ! *
(
ââ* +
catalogContext
ââ+ 9
,
ââ9 :
app
ââ; >
.
ââ> ?
Logger
ââ? E
)
ââE F
;
ââF G
var
ãã 
userManager
ãã 
=
ãã 
scopedProvider
ãã (
.
ãã( ) 
GetRequiredService
ãã) ;
<
ãã; <
UserManager
ãã< G
<
ããG H
ApplicationUser
ããH W
>
ããW X
>
ããX Y
(
ããY Z
)
ããZ [
;
ãã[ \
var
åå 
roleManager
åå 
=
åå 
scopedProvider
åå (
.
åå( ) 
GetRequiredService
åå) ;
<
åå; <
RoleManager
åå< G
<
ååG H
IdentityRole
ååH T
>
ååT U
>
ååU V
(
ååV W
)
ååW X
;
ååX Y
var
çç 
identityContext
çç 
=
çç 
scopedProvider
çç ,
.
çç, - 
GetRequiredService
çç- ?
<
çç? @"
AppIdentityDbContext
çç@ T
>
ççT U
(
ççU V
)
ççV W
;
ççW X
await
éé &
AppIdentityDbContextSeed
éé &
.
éé& '
	SeedAsync
éé' 0
(
éé0 1
identityContext
éé1 @
,
éé@ A
userManager
ééB M
,
ééM N
roleManager
ééO Z
)
ééZ [
;
éé[ \
}
èè 
catch
êê 	
(
êê
 
	Exception
êê 
ex
êê 
)
êê 
{
ëë 
app
íí 
.
íí 
Logger
íí 
.
íí 
LogError
íí 
(
íí 
ex
íí 
,
íí 
$str
íí  C
)
ííC D
;
ííD E
}
ìì 
}îî 
ifññ 
(
ññ 
app
ññ 
.
ññ 
Environment
ññ 
.
ññ 
IsDevelopment
ññ !
(
ññ! "
)
ññ" #
)
ññ# $
{óó 
app
òò 
.
òò '
UseDeveloperExceptionPage
òò !
(
òò! "
)
òò" #
;
òò# $
}ôô 
appõõ 
.
õõ 
UseMiddleware
õõ 
<
õõ !
ExceptionMiddleware
õõ %
>
õõ% &
(
õõ& '
)
õõ' (
;
õõ( )
appùù 
.
ùù !
UseHttpsRedirection
ùù 
(
ùù 
)
ùù 
;
ùù 
appüü 
.
üü 

UseRouting
üü 
(
üü 
)
üü 
;
üü 
app°° 
.
°° 
UseCors
°° 
(
°° 
CORS_POLICY
°° 
)
°° 
;
°° 
app££ 
.
££ 
UseAuthorization
££ 
(
££ 
)
££ 
;
££ 
app¶¶ 
.
¶¶ 

UseSwagger
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶ 
app™™ 
.
™™ 
UseSwaggerUI
™™ 
(
™™ 
c
™™ 
=>
™™ 
{´´ 
c
¨¨ 
.
¨¨ 
SwaggerEndpoint
¨¨ 
(
¨¨ 
$str
¨¨ 0
,
¨¨0 1
$str
¨¨2 =
)
¨¨= >
;
¨¨> ?
}≠≠ 
)
≠≠ 
;
≠≠ 
appØØ 
.
ØØ 
MapControllers
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
app∞∞ 
.
∞∞ 
MapEndpoints
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞ 
app≤≤ 
.
≤≤ 
Logger
≤≤ 

.
≤≤
 
LogInformation
≤≤ 
(
≤≤ 
$str
≤≤ /
)
≤≤/ 0
;
≤≤0 1
app≥≥ 
.
≥≥ 
Run
≥≥ 
(
≥≥ 
)
≥≥ 	
;
≥≥	 

publicµµ 
partial
µµ 
class
µµ 
Program
µµ 
{
µµ 
}
µµ  £
l/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/Middleware/ExceptionMiddleware.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& '

Middleware' 1
;1 2
public

 
class

 
ExceptionMiddleware

  
{ 
private 
readonly 
RequestDelegate $
_next% *
;* +
public 

ExceptionMiddleware 
( 
RequestDelegate .
next/ 3
)3 4
{ 
_next 
= 
next 
; 
} 
public 

async 
Task 
InvokeAsync !
(! "
HttpContext" -
httpContext. 9
)9 :
{ 
try 
{ 	
await 
_next 
( 
httpContext #
)# $
;$ %
} 	
catch 
( 
	Exception 
ex 
) 
{ 	
await  
HandleExceptionAsync &
(& '
httpContext' 2
,2 3
ex4 6
)6 7
;7 8
} 	
} 
private 
async 
Task  
HandleExceptionAsync +
(+ ,
HttpContext, 7
context8 ?
,? @
	ExceptionA J
	exceptionK T
)T U
{   
context!! 
.!! 
Response!! 
.!! 
ContentType!! $
=!!% &
$str!!' 9
;!!9 :
if## 

(## 
	exception## 
is## 
DuplicateException## + 
duplicationException##, @
)##@ A
{$$ 	
context%% 
.%% 
Response%% 
.%% 

StatusCode%% '
=%%( )
(%%* +
int%%+ .
)%%. /
HttpStatusCode%%/ =
.%%= >
Conflict%%> F
;%%F G
await&& 
context&& 
.&& 
Response&& "
.&&" #

WriteAsync&&# -
(&&- .
new&&. 1
ErrorDetails&&2 >
(&&> ?
)&&? @
{'' 

StatusCode(( 
=(( 
context(( $
.(($ %
Response((% -
.((- .

StatusCode((. 8
,((8 9
Message)) 
=))  
duplicationException)) .
.)). /
Message))/ 6
}** 
.** 
ToString** 
(** 
)** 
)** 
;** 
}++ 	
else,, 
{-- 	
context.. 
... 
Response.. 
... 

StatusCode.. '
=..( )
(..* +
int..+ .
)... /
HttpStatusCode../ =
...= >
InternalServerError..> Q
;..Q R
await// 
context// 
.// 
Response// "
.//" #

WriteAsync//# -
(//- .
new//. 1
ErrorDetails//2 >
(//> ?
)//? @
{00 

StatusCode11 
=11 
context11 $
.11$ %
Response11% -
.11- .

StatusCode11. 8
,118 9
Message22 
=22 
	exception22 #
.22# $
Message22$ +
}33 
.33 
ToString33 
(33 
)33 
)33 
;33 
}44 	
}55 
}66 Æ
\/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/MappingProfile.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
;& '
public		 
class		 
MappingProfile		 
:		 
Profile		 %
{

 
public 

MappingProfile 
( 
) 
{ 
	CreateMap 
< 
CatalogItem 
, 
CatalogItemDto -
>- .
(. /
)/ 0
;0 1
	CreateMap 
< 
CatalogType 
, 
CatalogTypeDto -
>- .
(. /
)/ 0
. 
	ForMember 
( 
dto 
=> 
dto !
.! "
Name" &
,& '
options( /
=>0 2
options3 :
.: ;
MapFrom; B
(B C
srcC F
=>G I
srcJ M
.M N
TypeN R
)R S
)S T
;T U
	CreateMap 
< 
CatalogBrand 
, 
CatalogBrandDto  /
>/ 0
(0 1
)1 2
. 
	ForMember 
( 
dto 
=> 
dto !
.! "
Name" &
,& '
options( /
=>0 2
options3 :
.: ;
MapFrom; B
(B C
srcC F
=>G I
srcJ M
.M N
BrandN S
)S T
)T U
;U V
} 
} ë
]/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/ImageValidators.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
;& '
public 
static 
class 
ImageValidators #
{ 
private 
const 
int 
ImageMaximumBytes '
=( )
$num* 0
;0 1
public

 

static

 
bool

 
IsValidImage

 #
(

# $
this

$ (
byte

) -
[

- .
]

. /

postedFile

0 :
,

: ;
string

< B
fileName

C K
)

K L
{ 
return 

postedFile 
!= 
null !
&&" $

postedFile% /
./ 0
Length0 6
>7 8
$num9 :
&&; =

postedFile> H
.H I
LengthI O
<=P R
ImageMaximumBytesS d
&&e g
IsExtensionValidh x
(x y
fileName	y Å
)
Å Ç
;
Ç É
} 
private 
static 
bool 
IsExtensionValid (
(( )
string) /
fileName0 8
)8 9
{ 
var 
	extension 
= 
Path 
. 
GetExtension )
() *
fileName* 2
)2 3
;3 4
return 
string 
. 
Equals 
( 
	extension &
,& '
$str( .
,. /
StringComparison0 @
.@ A
OrdinalIgnoreCaseA R
)R S
||T V
string 
. 
Equals 
( 
	extension &
,& '
$str( .
,. /
StringComparison0 @
.@ A
OrdinalIgnoreCaseA R
)R S
||T V
string 
. 
Equals 
( 
	extension &
,& '
$str( .
,. /
StringComparison0 @
.@ A
OrdinalIgnoreCaseA R
)R S
||T V
string 
. 
Equals 
( 
	extension &
,& '
$str( /
,/ 0
StringComparison1 A
.A B
OrdinalIgnoreCaseB S
)S T
;T U
} 
} Ï	
a/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CustomSchemaFilters.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
;& '
public 
class 
CustomSchemaFilters  
:! "
ISchemaFilter# 0
{ 
public 

void 
Apply 
( 
OpenApiSchema #
schema$ *
,* +
SchemaFilterContext, ?
context@ G
)G H
{		 
var

 
excludeProperties

 
=

 
new

  #
[

# $
]

$ %
{

& '
$str

( 7
}

8 9
;

9 :
foreach 
( 
var 
prop 
in 
excludeProperties .
). /
if 
( 
schema 
. 

Properties !
.! "
ContainsKey" -
(- .
prop. 2
)2 3
)3 4
schema 
. 

Properties !
.! "
Remove" (
(( )
prop) -
)- .
;. /
} 
} ø	
ì/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogTypeEndpoints/CatalogTypeListEndpoint.ListCatalogTypesResponse.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogTypeEndpoints' ;
;; <
public 
class $
ListCatalogTypesResponse %
:& '
BaseResponse( 4
{ 
public 
$
ListCatalogTypesResponse #
(# $
Guid$ (
correlationId) 6
)6 7
:8 9
base: >
(> ?
correlationId? L
)L M
{		 
}

 
public 
$
ListCatalogTypesResponse #
(# $
)$ %
{ 
} 
public 

List 
< 
CatalogTypeDto 
> 
CatalogTypes  ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
new= @
ListA E
<E F
CatalogTypeDtoF T
>T U
(U V
)V W
;W X
} Ì
z/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogTypeEndpoints/CatalogTypeListEndpoint.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogTypeEndpoints' ;
;; <
public 
class #
CatalogTypeListEndpoint $
:% &
	IEndpoint' 0
<0 1
IResult1 8
,8 9
IRepository: E
<E F
CatalogTypeF Q
>Q R
>R S
{ 
private 
readonly 
IMapper 
_mapper $
;$ %
public 
#
CatalogTypeListEndpoint "
(" #
IMapper# *
mapper+ 1
)1 2
{ 
_mapper 
= 
mapper 
; 
} 
public 

void 
AddRoute 
( !
IEndpointRouteBuilder .
app/ 2
)2 3
{ 
app 
. 
MapGet 
( 
$str &
,& '
async 
( 
IRepository 
< 
CatalogType *
>* +!
catalogTypeRepository, A
)A B
=>C E
{ 
return 
await 
HandleAsync (
(( )!
catalogTypeRepository) >
)> ?
;? @
} 
) 
.   
Produces   
<   $
ListCatalogTypesResponse   .
>  . /
(  / 0
)  0 1
.!! 
WithTags!! 
(!! 
$str!! ,
)!!, -
;!!- .
}"" 
public$$ 

async$$ 
Task$$ 
<$$ 
IResult$$ 
>$$ 
HandleAsync$$ *
($$* +
IRepository$$+ 6
<$$6 7
CatalogType$$7 B
>$$B C!
catalogTypeRepository$$D Y
)$$Y Z
{%% 
var&& 
response&& 
=&& 
new&& $
ListCatalogTypesResponse&& 3
(&&3 4
)&&4 5
;&&5 6
var(( 
items(( 
=(( 
await(( !
catalogTypeRepository(( /
.((/ 0
	ListAsync((0 9
(((9 :
)((: ;
;((; <
response** 
.** 
CatalogTypes** 
.** 
AddRange** &
(**& '
items**' ,
.**, -
Select**- 3
(**3 4
_mapper**4 ;
.**; <
Map**< ?
<**? @
CatalogTypeDto**@ N
>**N O
)**O P
)**P Q
;**Q R
return,, 
Results,, 
.,, 
Ok,, 
(,, 
response,, "
),," #
;,,# $
}-- 
}.. ∞
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogTypeEndpoints/CatalogTypeDto.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogTypeEndpoints' ;
;; <
public 
class 
CatalogTypeDto 
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
} ˚
ñ/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/UpdateCatalogItemEndpoint.UpdateCatalogItemResponse.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class %
UpdateCatalogItemResponse &
:' (
BaseResponse) 5
{ 
public 
%
UpdateCatalogItemResponse $
($ %
Guid% )
correlationId* 7
)7 8
:9 :
base; ?
(? @
correlationId@ M
)M N
{ 
}		 
public 
%
UpdateCatalogItemResponse $
($ %
)% &
{ 
} 
public 

CatalogItemDto 
CatalogItem %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} À
ï/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/UpdateCatalogItemEndpoint.UpdateCatalogItemRequest.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class $
UpdateCatalogItemRequest %
:& '
BaseRequest( 3
{ 
[ 
Range 

(
 
$num 
, 
$num 
) 
] 
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
[		 
Range		 

(		
 
$num		 
,		 
$num		 
)		 
]		 
public

 

int

 
CatalogBrandId

 
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
[ 
Range 

(
 
$num 
, 
$num 
) 
] 
public 

int 
CatalogTypeId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 
Required 
] 
public 

string 
Description 
{ 
get  #
;# $
set% (
;( )
}* +
[ 
Required 
] 
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public 

string 
PictureBase64 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 

PictureUri 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
PictureName 
{ 
get  #
;# $
set% (
;( )
}* +
[ 
Range 

(
 
$num 
, 
$num 
) 
] 
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
} ﬁ-
|/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/UpdateCatalogItemEndpoint.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class %
UpdateCatalogItemEndpoint &
:' (
	IEndpoint) 2
<2 3
IResult3 :
,: ;$
UpdateCatalogItemRequest< T
,T U
IRepositoryV a
<a b
CatalogItemb m
>m n
>n o
{ 
private 
readonly 
IUriComposer !
_uriComposer" .
;. /
public 
%
UpdateCatalogItemEndpoint $
($ %
IUriComposer% 1
uriComposer2 =
)= >
{ 
_uriComposer 
= 
uriComposer "
;" #
} 
public 

void 
AddRoute 
( !
IEndpointRouteBuilder .
app/ 2
)2 3
{ 
app 
. 
MapPut 
( 
$str &
,& '
[ 
	Authorize 
( 
Roles 
= 
BlazorShared +
.+ ,
Authorization, 9
.9 :
	Constants: C
.C D
RolesD I
.I J
ADMINISTRATORSJ X
,X Y!
AuthenticationSchemesZ o
=p q
JwtBearerDefaults	r É
.
É Ñ"
AuthenticationScheme
Ñ ò
)
ò ô
]
ô ö
async
õ †
( $
UpdateCatalogItemRequest %
request& -
,- .
IRepository/ :
<: ;
CatalogItem; F
>F G
itemRepositoryH V
)V W
=>X Z
{ 
return 
await 
HandleAsync (
(( )
request) 0
,0 1
itemRepository2 @
)@ A
;A B
}   
)   
.!! 
Produces!! 
<!! %
UpdateCatalogItemResponse!! /
>!!/ 0
(!!0 1
)!!1 2
."" 
WithTags"" 
("" 
$str"" ,
)"", -
;""- .
}## 
public%% 

async%% 
Task%% 
<%% 
IResult%% 
>%% 
HandleAsync%% *
(%%* +$
UpdateCatalogItemRequest%%+ C
request%%D K
,%%K L
IRepository%%M X
<%%X Y
CatalogItem%%Y d
>%%d e
itemRepository%%f t
)%%t u
{&& 
var'' 
response'' 
='' 
new'' %
UpdateCatalogItemResponse'' 4
(''4 5
request''5 <
.''< =
CorrelationId''= J
(''J K
)''K L
)''L M
;''M N
var)) 
existingItem)) 
=)) 
await))  
itemRepository))! /
.))/ 0
GetByIdAsync))0 <
())< =
request))= D
.))D E
Id))E G
)))G H
;))H I
if** 

(** 
existingItem** 
==** 
null**  
)**  !
{++ 	
return,, 
Results,, 
.,, 
NotFound,, #
(,,# $
),,$ %
;,,% &
}-- 	
CatalogItem// 
.// 
CatalogItemDetails// &
details//' .
=/// 0
new//1 4
(//4 5
request//5 <
.//< =
Name//= A
,//A B
request//C J
.//J K
Description//K V
,//V W
request//X _
.//_ `
Price//` e
)//e f
;//f g
existingItem00 
.00 
UpdateDetails00 "
(00" #
details00# *
)00* +
;00+ ,
existingItem11 
.11 
UpdateBrand11  
(11  !
request11! (
.11( )
CatalogBrandId11) 7
)117 8
;118 9
existingItem22 
.22 

UpdateType22 
(22  
request22  '
.22' (
CatalogTypeId22( 5
)225 6
;226 7
await44 
itemRepository44 
.44 
UpdateAsync44 (
(44( )
existingItem44) 5
)445 6
;446 7
var66 
dto66 
=66 
new66 
CatalogItemDto66 $
{77 	
Id88 
=88 
existingItem88 
.88 
Id88  
,88  !
CatalogBrandId99 
=99 
existingItem99 )
.99) *
CatalogBrandId99* 8
,998 9
CatalogTypeId:: 
=:: 
existingItem:: (
.::( )
CatalogTypeId::) 6
,::6 7
Description;; 
=;; 
existingItem;; &
.;;& '
Description;;' 2
,;;2 3
Name<< 
=<< 
existingItem<< 
.<<  
Name<<  $
,<<$ %

PictureUri== 
=== 
_uriComposer== %
.==% &
ComposePicUri==& 3
(==3 4
existingItem==4 @
.==@ A

PictureUri==A K
)==K L
,==L M
Price>> 
=>> 
existingItem>>  
.>>  !
Price>>! &
}?? 	
;??	 

response@@ 
.@@ 
CatalogItem@@ 
=@@ 
dto@@ "
;@@" #
returnAA 
ResultsAA 
.AA 
OkAA 
(AA 
responseAA "
)AA" #
;AA# $
}BB 
}CC û
ñ/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/DeleteCatalogItemEndpoint.DeleteCatalogItemResponse.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class %
DeleteCatalogItemResponse &
:' (
BaseResponse) 5
{ 
public 
%
DeleteCatalogItemResponse $
($ %
Guid% )
correlationId* 7
)7 8
:9 :
base; ?
(? @
correlationId@ M
)M N
{ 
}		 
public 
%
DeleteCatalogItemResponse $
($ %
)% &
{ 
} 
public 

string 
Status 
{ 
get 
; 
set  #
;# $
}% &
=' (
$str) 2
;2 3
} Ò
ï/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/DeleteCatalogItemEndpoint.DeleteCatalogItemRequest.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class $
DeleteCatalogItemRequest %
:& '
BaseRequest( 3
{ 
public 

int 
CatalogItemId 
{ 
get "
;" #
init$ (
;( )
}* +
public 
$
DeleteCatalogItemRequest #
(# $
int$ '
catalogItemId( 5
)5 6
{ 
CatalogItemId		 
=		 
catalogItemId		 %
;		% &
}

 
} Á
|/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/DeleteCatalogItemEndpoint.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class %
DeleteCatalogItemEndpoint &
:' (
	IEndpoint) 2
<2 3
IResult3 :
,: ;$
DeleteCatalogItemRequest< T
,T U
IRepositoryV a
<a b
CatalogItemb m
>m n
>n o
{ 
public 

void 
AddRoute 
( !
IEndpointRouteBuilder .
app/ 2
)2 3
{ 
app 
. 
	MapDelete 
( 
$str 9
,9 :
[ 
	Authorize 
( 
Roles 
= 
BlazorShared +
.+ ,
Authorization, 9
.9 :
	Constants: C
.C D
RolesD I
.I J
ADMINISTRATORSJ X
,X Y!
AuthenticationSchemesZ o
=p q
JwtBearerDefaults	r É
.
É Ñ"
AuthenticationScheme
Ñ ò
)
ò ô
]
ô ö
async
õ †
( 
int 
catalogItemId 
, 
IRepository  +
<+ ,
CatalogItem, 7
>7 8
itemRepository9 G
)G H
=>I K
{ 
return 
await 
HandleAsync (
(( )
new) ,$
DeleteCatalogItemRequest- E
(E F
catalogItemIdF S
)S T
,T U
itemRepositoryV d
)d e
;e f
} 
) 
. 
Produces 
< %
DeleteCatalogItemResponse /
>/ 0
(0 1
)1 2
. 
WithTags 
( 
$str ,
), -
;- .
} 
public 

async 
Task 
< 
IResult 
> 
HandleAsync *
(* +$
DeleteCatalogItemRequest+ C
requestD K
,K L
IRepositoryM X
<X Y
CatalogItemY d
>d e
itemRepositoryf t
)t u
{ 
var   
response   
=   
new   %
DeleteCatalogItemResponse   4
(  4 5
request  5 <
.  < =
CorrelationId  = J
(  J K
)  K L
)  L M
;  M N
var"" 
itemToDelete"" 
="" 
await""  
itemRepository""! /
.""/ 0
GetByIdAsync""0 <
(""< =
request""= D
.""D E
CatalogItemId""E R
)""R S
;""S T
if## 

(## 
itemToDelete## 
is## 
null##  
)##  !
return$$ 
Results$$ 
.$$ 
NotFound$$ #
($$# $
)$$$ %
;$$% &
await&& 
itemRepository&& 
.&& 
DeleteAsync&& (
(&&( )
itemToDelete&&) 5
)&&5 6
;&&6 7
return(( 
Results(( 
.(( 
Ok(( 
((( 
response(( "
)((" #
;((# $
})) 
}** ñ3
|/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CreateCatalogItemEndpoint.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class %
CreateCatalogItemEndpoint &
:' (
	IEndpoint) 2
<2 3
IResult3 :
,: ;$
CreateCatalogItemRequest< T
,T U
IRepositoryV a
<a b
CatalogItemb m
>m n
>n o
{ 
private 
readonly 
IUriComposer !
_uriComposer" .
;. /
public 
%
CreateCatalogItemEndpoint $
($ %
IUriComposer% 1
uriComposer2 =
)= >
{ 
_uriComposer 
= 
uriComposer "
;" #
} 
public 

void 
AddRoute 
( !
IEndpointRouteBuilder .
app/ 2
)2 3
{ 
app 
. 
MapPost 
( 
$str '
,' (
[ 
	Authorize 
( 
Roles 
= 
BlazorShared +
.+ ,
Authorization, 9
.9 :
	Constants: C
.C D
RolesD I
.I J
ADMINISTRATORSJ X
,X Y!
AuthenticationSchemesZ o
=p q
JwtBearerDefaults	r É
.
É Ñ"
AuthenticationScheme
Ñ ò
)
ò ô
]
ô ö
async
õ †
( $
CreateCatalogItemRequest %
request& -
,- .
IRepository/ :
<: ;
CatalogItem; F
>F G
itemRepositoryH V
)V W
=>X Z
{   
return!! 
await!! 
HandleAsync!! (
(!!( )
request!!) 0
,!!0 1
itemRepository!!2 @
)!!@ A
;!!A B
}"" 
)"" 
.## 
Produces## 
<## %
CreateCatalogItemResponse## /
>##/ 0
(##0 1
)##1 2
.$$ 
WithTags$$ 
($$ 
$str$$ ,
)$$, -
;$$- .
}%% 
public'' 

async'' 
Task'' 
<'' 
IResult'' 
>'' 
HandleAsync'' *
(''* +$
CreateCatalogItemRequest''+ C
request''D K
,''K L
IRepository''M X
<''X Y
CatalogItem''Y d
>''d e
itemRepository''f t
)''t u
{(( 
var)) 
response)) 
=)) 
new)) %
CreateCatalogItemResponse)) 4
())4 5
request))5 <
.))< =
CorrelationId))= J
())J K
)))K L
)))L M
;))M N
var++ (
catalogItemNameSpecification++ (
=++) *
new+++ .(
CatalogItemNameSpecification++/ K
(++K L
request++L S
.++S T
Name++T X
)++X Y
;++Y Z
var,,  
existingCataloogItem,,  
=,,! "
await,,# (
itemRepository,,) 7
.,,7 8

CountAsync,,8 B
(,,B C(
catalogItemNameSpecification,,C _
),,_ `
;,,` a
if-- 

(--  
existingCataloogItem--  
>--! "
$num--# $
)--$ %
{.. 	
throw// 
new// 
DuplicateException// (
(//( )
$"//) +
$str//+ C
{//C D
request//D K
.//K L
Name//L P
}//P Q
$str//Q `
"//` a
)//a b
;//b c
}00 	
var22 
newItem22 
=22 
new22 
CatalogItem22 %
(22% &
request22& -
.22- .
CatalogTypeId22. ;
,22; <
request22= D
.22D E
CatalogBrandId22E S
,22S T
request22U \
.22\ ]
Description22] h
,22h i
request22j q
.22q r
Name22r v
,22v w
request22x 
.	22 Ä
Price
22Ä Ö
,
22Ö Ü
request
22á é
.
22é è

PictureUri
22è ô
)
22ô ö
;
22ö õ
newItem33 
=33 
await33 
itemRepository33 &
.33& '
AddAsync33' /
(33/ 0
newItem330 7
)337 8
;338 9
if55 

(55 
newItem55 
.55 
Id55 
!=55 
$num55 
)55 
{66 	
newItem;; 
.;; 
UpdatePictureUri;; $
(;;$ %
$str;;% @
);;@ A
;;;A B
await<< 
itemRepository<<  
.<<  !
UpdateAsync<<! ,
(<<, -
newItem<<- 4
)<<4 5
;<<5 6
}== 	
var?? 
dto?? 
=?? 
new?? 
CatalogItemDto?? $
{@@ 	
IdAA 
=AA 
newItemAA 
.AA 
IdAA 
,AA 
CatalogBrandIdBB 
=BB 
newItemBB $
.BB$ %
CatalogBrandIdBB% 3
,BB3 4
CatalogTypeIdCC 
=CC 
newItemCC #
.CC# $
CatalogTypeIdCC$ 1
,CC1 2
DescriptionDD 
=DD 
newItemDD !
.DD! "
DescriptionDD" -
,DD- .
NameEE 
=EE 
newItemEE 
.EE 
NameEE 
,EE  

PictureUriFF 
=FF 
_uriComposerFF %
.FF% &
ComposePicUriFF& 3
(FF3 4
newItemFF4 ;
.FF; <

PictureUriFF< F
)FFF G
,FFG H
PriceGG 
=GG 
newItemGG 
.GG 
PriceGG !
}HH 	
;HH	 

responseII 
.II 
CatalogItemII 
=II 
dtoII "
;II" #
returnJJ 
ResultsJJ 
.JJ 
CreatedJJ 
(JJ 
$"JJ !
$strJJ! 3
{JJ3 4
dtoJJ4 7
.JJ7 8
IdJJ8 :
}JJ: ;
"JJ; <
,JJ< =
responseJJ> F
)JJF G
;JJG H
}KK 
}LL ˚
ñ/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CreateCatalogItemEndpoint.CreateCatalogItemResponse.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class %
CreateCatalogItemResponse &
:' (
BaseResponse) 5
{ 
public 
%
CreateCatalogItemResponse $
($ %
Guid% )
correlationId* 7
)7 8
:9 :
base; ?
(? @
correlationId@ M
)M N
{ 
}		 
public 
%
CreateCatalogItemResponse $
($ %
)% &
{ 
} 
public 

CatalogItemDto 
CatalogItem %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} »
ï/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CreateCatalogItemEndpoint.CreateCatalogItemRequest.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class $
CreateCatalogItemRequest %
:& '
BaseRequest( 3
{ 
public 

int 
CatalogBrandId 
{ 
get  #
;# $
set% (
;( )
}* +
public 

int 
CatalogTypeId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

string 
Description 
{ 
get  #
;# $
set% (
;( )
}* +
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public		 

string		 

PictureUri		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 

string

 
PictureBase64
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
string 
PictureName 
{ 
get  #
;# $
set% (
;( )
}* +
public 

decimal 
Price 
{ 
get 
; 
set  #
;# $
}% &
} Ó

ú/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CatalogItemListPagedEndpoint.ListPagedCatalogItemResponse.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class (
ListPagedCatalogItemResponse )
:* +
BaseResponse, 8
{ 
public 
(
ListPagedCatalogItemResponse '
(' (
Guid( ,
correlationId- :
): ;
:< =
base> B
(B C
correlationIdC P
)P Q
{		 
}

 
public 
(
ListPagedCatalogItemResponse '
(' (
)( )
{ 
} 
public 

List 
< 
CatalogItemDto 
> 
CatalogItems  ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
new= @
ListA E
<E F
CatalogItemDtoF T
>T U
(U V
)V W
;W X
public 

int 
	PageCount 
{ 
get 
; 
set  #
;# $
}% &
} Ö
õ/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CatalogItemListPagedEndpoint.ListPagedCatalogItemRequest.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class '
ListPagedCatalogItemRequest (
:) *
BaseRequest+ 6
{ 
public 

int 
PageSize 
{ 
get 
; 
init #
;# $
}% &
public 

int 
	PageIndex 
{ 
get 
; 
init  $
;$ %
}& '
public 

int 
? 
CatalogBrandId 
{  
get! $
;$ %
init& *
;* +
}, -
public 

int 
? 
CatalogTypeId 
{ 
get  #
;# $
init% )
;) *
}+ ,
public

 
'
ListPagedCatalogItemRequest

 &
(

& '
int

' *
?

* +
pageSize

, 4
,

4 5
int

6 9
?

9 :
	pageIndex

; D
,

D E
int

F I
?

I J
catalogBrandId

K Y
,

Y Z
int

[ ^
?

^ _
catalogTypeId

` m
)

m n
{ 
PageSize 
= 
pageSize 
?? 
$num  
;  !
	PageIndex 
= 
	pageIndex 
??  
$num! "
;" #
CatalogBrandId 
= 
catalogBrandId '
;' (
CatalogTypeId 
= 
catalogTypeId %
;% &
} 
} ‰3
/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CatalogItemListPagedEndpoint.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class (
CatalogItemListPagedEndpoint )
:* +
	IEndpoint, 5
<5 6
IResult6 =
,= >'
ListPagedCatalogItemRequest? Z
,Z [
IRepository\ g
<g h
CatalogItemh s
>s t
>t u
{ 
private 
readonly 
IUriComposer !
_uriComposer" .
;. /
private 
readonly 
IMapper 
_mapper $
;$ %
public 
(
CatalogItemListPagedEndpoint '
(' (
IUriComposer( 4
uriComposer5 @
,@ A
IMapperB I
mapperJ P
)P Q
{ 
_uriComposer 
= 
uriComposer "
;" #
_mapper 
= 
mapper 
; 
} 
public 

void 
AddRoute 
( !
IEndpointRouteBuilder .
app/ 2
)2 3
{ 
app 
. 
MapGet 
( 
$str &
,& '
async   
(   
int   
?   
pageSize    
,    !
int  " %
?  % &
	pageIndex  ' 0
,  0 1
int  2 5
?  5 6
catalogBrandId  7 E
,  E F
int  G J
?  J K
catalogTypeId  L Y
,  Y Z
IRepository  [ f
<  f g
CatalogItem  g r
>  r s
itemRepository	  t Ç
)
  Ç É
=>
  Ñ Ü
{!! 
return"" 
await"" 
HandleAsync"" (
(""( )
new"") ,'
ListPagedCatalogItemRequest""- H
(""H I
pageSize""I Q
,""Q R
	pageIndex""S \
,""\ ]
catalogBrandId""^ l
,""l m
catalogTypeId""n {
)""{ |
,""| }
itemRepository	""~ å
)
""å ç
;
""ç é
}## 
)## 
.$$ 
Produces$$ 
<$$ (
ListPagedCatalogItemResponse$$ 2
>$$2 3
($$3 4
)$$4 5
.%% 
WithTags%% 
(%% 
$str%% ,
)%%, -
;%%- .
}&& 
public(( 

async(( 
Task(( 
<(( 
IResult(( 
>(( 
HandleAsync(( *
(((* +'
ListPagedCatalogItemRequest((+ F
request((G N
,((N O
IRepository((P [
<(([ \
CatalogItem((\ g
>((g h
itemRepository((i w
)((w x
{)) 
await** 
Task** 
.** 
Delay** 
(** 
$num** 
)** 
;** 
var++ 
response++ 
=++ 
new++ (
ListPagedCatalogItemResponse++ 7
(++7 8
request++8 ?
.++? @
CorrelationId++@ M
(++M N
)++N O
)++O P
;++P Q
var-- 

filterSpec-- 
=-- 
new-- &
CatalogFilterSpecification-- 7
(--7 8
request--8 ?
.--? @
CatalogBrandId--@ N
,--N O
request--P W
.--W X
CatalogTypeId--X e
)--e f
;--f g
int.. 

totalItems.. 
=.. 
await.. 
itemRepository.. -
...- .

CountAsync... 8
(..8 9

filterSpec..9 C
)..C D
;..D E
var00 
	pagedSpec00 
=00 
new00 /
#CatalogFilterPaginatedSpecification00 ?
(00? @
skip11 
:11 
request11 
.11 
	PageIndex11 #
*11$ %
request11& -
.11- .
PageSize11. 6
,116 7
take22 
:22 
request22 
.22 
PageSize22 "
,22" #
brandId33 
:33 
request33 
.33 
CatalogBrandId33 +
,33+ ,
typeId44 
:44 
request44 
.44 
CatalogTypeId44 )
)44) *
;44* +
var66 
items66 
=66 
await66 
itemRepository66 (
.66( )
	ListAsync66) 2
(662 3
	pagedSpec663 <
)66< =
;66= >
response88 
.88 
CatalogItems88 
.88 
AddRange88 &
(88& '
items88' ,
.88, -
Select88- 3
(883 4
_mapper884 ;
.88; <
Map88< ?
<88? @
CatalogItemDto88@ N
>88N O
)88O P
)88P Q
;88Q R
foreach99 
(99 
CatalogItemDto99 
item99  $
in99% '
response99( 0
.990 1
CatalogItems991 =
)99= >
{:: 	
item;; 
.;; 

PictureUri;; 
=;; 
_uriComposer;; *
.;;* +
ComposePicUri;;+ 8
(;;8 9
item;;9 =
.;;= >

PictureUri;;> H
);;H I
;;;I J
}<< 	
if>> 

(>> 
request>> 
.>> 
PageSize>> 
>>> 
$num>>  
)>>  !
{?? 	
response@@ 
.@@ 
	PageCount@@ 
=@@  
int@@! $
.@@$ %
Parse@@% *
(@@* +
Math@@+ /
.@@/ 0
Ceiling@@0 7
(@@7 8
(@@8 9
decimal@@9 @
)@@@ A

totalItems@@A K
/@@L M
request@@N U
.@@U V
PageSize@@V ^
)@@^ _
.@@_ `
ToString@@` h
(@@h i
)@@i j
)@@j k
;@@k l
}AA 	
elseBB 
{CC 	
responseDD 
.DD 
	PageCountDD 
=DD  

totalItemsDD! +
>DD, -
$numDD. /
?DD0 1
$numDD2 3
:DD4 5
$numDD6 7
;DD7 8
}EE 	
returnGG 
ResultsGG 
.GG 
OkGG 
(GG 
responseGG "
)GG" #
;GG# $
}HH 
}II Ä
ò/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CatalogItemGetByIdEndpoint.GetByIdCatalogItemResponse.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class &
GetByIdCatalogItemResponse '
:( )
BaseResponse* 6
{ 
public 
&
GetByIdCatalogItemResponse %
(% &
Guid& *
correlationId+ 8
)8 9
:: ;
base< @
(@ A
correlationIdA N
)N O
{ 
}		 
public 
&
GetByIdCatalogItemResponse %
(% &
)& '
{ 
} 
public 

CatalogItemDto 
CatalogItem %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} ı
ó/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CatalogItemGetByIdEndpoint.GetByIdCatalogItemRequest.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class %
GetByIdCatalogItemRequest &
:' (
BaseRequest) 4
{ 
public 

int 
CatalogItemId 
{ 
get "
;" #
init$ (
;( )
}* +
public 
%
GetByIdCatalogItemRequest $
($ %
int% (
catalogItemId) 6
)6 7
{ 
CatalogItemId		 
=		 
catalogItemId		 %
;		% &
}

 
} Ã!
}/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CatalogItemGetByIdEndpoint.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 
	PublicApi		 &
.		& ' 
CatalogItemEndpoints		' ;
;		; <
public 
class &
CatalogItemGetByIdEndpoint '
:( )
	IEndpoint* 3
<3 4
IResult4 ;
,; <%
GetByIdCatalogItemRequest= V
,V W
IRepositoryX c
<c d
CatalogItemd o
>o p
>p q
{ 
private 
readonly 
IUriComposer !
_uriComposer" .
;. /
public 
&
CatalogItemGetByIdEndpoint %
(% &
IUriComposer& 2
uriComposer3 >
)> ?
{ 
_uriComposer 
= 
uriComposer "
;" #
} 
public 

void 
AddRoute 
( !
IEndpointRouteBuilder .
app/ 2
)2 3
{ 
app 
. 
MapGet 
( 
$str 6
,6 7
async 
( 
int 
catalogItemId $
,$ %
IRepository& 1
<1 2
CatalogItem2 =
>= >
itemRepository? M
)M N
=>O Q
{ 
return 
await 
HandleAsync (
(( )
new) ,%
GetByIdCatalogItemRequest- F
(F G
catalogItemIdG T
)T U
,U V
itemRepositoryW e
)e f
;f g
} 
) 
. 
Produces 
< &
GetByIdCatalogItemResponse 0
>0 1
(1 2
)2 3
. 
WithTags 
( 
$str ,
), -
;- .
}   
public"" 

async"" 
Task"" 
<"" 
IResult"" 
>"" 
HandleAsync"" *
(""* +%
GetByIdCatalogItemRequest""+ D
request""E L
,""L M
IRepository""N Y
<""Y Z
CatalogItem""Z e
>""e f
itemRepository""g u
)""u v
{## 
var$$ 
response$$ 
=$$ 
new$$ &
GetByIdCatalogItemResponse$$ 5
($$5 6
request$$6 =
.$$= >
CorrelationId$$> K
($$K L
)$$L M
)$$M N
;$$N O
var&& 
item&& 
=&& 
await&& 
itemRepository&& '
.&&' (
GetByIdAsync&&( 4
(&&4 5
request&&5 <
.&&< =
CatalogItemId&&= J
)&&J K
;&&K L
if'' 

('' 
item'' 
is'' 
null'' 
)'' 
return(( 
Results(( 
.(( 
NotFound(( #
(((# $
)(($ %
;((% &
response** 
.** 
CatalogItem** 
=** 
new** "
CatalogItemDto**# 1
{++ 	
Id,, 
=,, 
item,, 
.,, 
Id,, 
,,, 
CatalogBrandId-- 
=-- 
item-- !
.--! "
CatalogBrandId--" 0
,--0 1
CatalogTypeId.. 
=.. 
item..  
...  !
CatalogTypeId..! .
,... /
Description// 
=// 
item// 
.// 
Description// *
,//* +
Name00 
=00 
item00 
.00 
Name00 
,00 

PictureUri11 
=11 
_uriComposer11 %
.11% &
ComposePicUri11& 3
(113 4
item114 8
.118 9

PictureUri119 C
)11C D
,11D E
Price22 
=22 
item22 
.22 
Price22 
}33 	
;33	 

return44 
Results44 
.44 
Ok44 
(44 
response44 "
)44" #
;44# $
}55 
}66 ƒ
q/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogItemEndpoints/CatalogItemDto.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& ' 
CatalogItemEndpoints' ;
;; <
public 
class 
CatalogItemDto 
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
}# $
public 

string 
Description 
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
}% &
public		 

string		 

PictureUri		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 

int

 
CatalogTypeId
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

int 
CatalogBrandId 
{ 
get  #
;# $
set% (
;( )
}* +
} …	
ñ/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogBrandEndpoints/CatalogBrandListEndpoint.ListCatalogBrandsResponse.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& '!
CatalogBrandEndpoints' <
;< =
public 
class %
ListCatalogBrandsResponse &
:' (
BaseResponse) 5
{ 
public 
%
ListCatalogBrandsResponse $
($ %
Guid% )
correlationId* 7
)7 8
:9 :
base; ?
(? @
correlationId@ M
)M N
{		 
}

 
public 
%
ListCatalogBrandsResponse $
($ %
)% &
{ 
} 
public 

List 
< 
CatalogBrandDto 
>  
CatalogBrands! .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
new? B
ListC G
<G H
CatalogBrandDtoH W
>W X
(X Y
)Y Z
;Z [
} ˝
|/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogBrandEndpoints/CatalogBrandListEndpoint.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& '!
CatalogBrandEndpoints' <
;< =
public 
class $
CatalogBrandListEndpoint %
:& '
	IEndpoint( 1
<1 2
IResult2 9
,9 :
IRepository; F
<F G
CatalogBrandG S
>S T
>T U
{ 
private 
readonly 
IMapper 
_mapper $
;$ %
public 
$
CatalogBrandListEndpoint #
(# $
IMapper$ +
mapper, 2
)2 3
{ 
_mapper 
= 
mapper 
; 
} 
public 

void 
AddRoute 
( !
IEndpointRouteBuilder .
app/ 2
)2 3
{ 
app 
. 
MapGet 
( 
$str '
,' (
async 
( 
IRepository 
< 
CatalogBrand +
>+ ,"
catalogBrandRepository- C
)C D
=>E G
{ 
return 
await 
HandleAsync (
(( )"
catalogBrandRepository) ?
)? @
;@ A
} 
) 
.   
Produces   
<   %
ListCatalogBrandsResponse   .
>  . /
(  / 0
)  0 1
.!! 
WithTags!! 
(!! 
$str!! ,
)!!, -
;!!- .
}"" 
public$$ 

async$$ 
Task$$ 
<$$ 
IResult$$ 
>$$ 
HandleAsync$$ *
($$* +
IRepository$$+ 6
<$$6 7
CatalogBrand$$7 C
>$$C D"
catalogBrandRepository$$E [
)$$[ \
{%% 
var&& 
response&& 
=&& 
new&& %
ListCatalogBrandsResponse&& 4
(&&4 5
)&&5 6
;&&6 7
var(( 
items(( 
=(( 
await(( "
catalogBrandRepository(( 0
.((0 1
	ListAsync((1 :
(((: ;
)((; <
;((< =
response** 
.** 
CatalogBrands** 
.** 
AddRange** '
(**' (
items**( -
.**- .
Select**. 4
(**4 5
_mapper**5 <
.**< =
Map**= @
<**@ A
CatalogBrandDto**A P
>**P Q
)**Q R
)**R S
;**S T
return,, 
Results,, 
.,, 
Ok,, 
(,, 
response,, "
),," #
;,,# $
}-- 
}.. ¥
s/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/CatalogBrandEndpoints/CatalogBrandDto.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& '!
CatalogBrandEndpoints' <
;< =
public 
class 
CatalogBrandDto 
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
} Ø
Z/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/BaseResponse.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
;& '
public 
abstract 
class 
BaseResponse "
:# $
BaseMessage% 0
{		 
public

 

BaseResponse

 
(

 
Guid

 
correlationId

 *
)

* +
:

, -
base

. 2
(

2 3
)

3 4
{ 
base 
. 
_correlationId 
= 
correlationId +
;+ ,
} 
public 

BaseResponse 
( 
) 
{ 
} 
} ˜
Y/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/BaseRequest.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
;& '
public 
abstract 
class 
BaseRequest !
:" #
BaseMessage$ /
{ 
} †
Y/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/BaseMessage.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
;& '
public 
abstract 
class 
BaseMessage !
{		 
	protected 
Guid 
_correlationId !
=" #
Guid$ (
.( )
NewGuid) 0
(0 1
)1 2
;2 3
public 

Guid 
CorrelationId 
( 
) 
=>  "
_correlationId# 1
;1 2
} √
y/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/AuthEndpoints/AuthenticateEndpoint.UserInfo.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& '
AuthEndpoints' 4
;4 5
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
}		, -
=		. /
string		0 6
.		6 7
Empty		7 <
;		< =
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
, -
=

. /
string

0 6
.

6 7
Empty

7 <
;

< =
public 

IEnumerable 
< 

ClaimValue !
>! "
Claims# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
new: =
List> B
<B C

ClaimValueC M
>M N
(N O
)O P
;P Q
} ™!
p/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/AuthEndpoints/AuthenticateEndpoint.cs
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
 
	PublicApi

 &
.

& '
AuthEndpoints

' 4
;

4 5
public 
class  
AuthenticateEndpoint !
:" #
EndpointBaseAsync$ 5
. 
WithRequest 
< 
AuthenticateRequest $
>$ %
. 
WithActionResult 
<  
AuthenticateResponse *
>* +
{ 
private 
readonly 
SignInManager "
<" #
ApplicationUser# 2
>2 3
_signInManager4 B
;B C
private 
readonly 
ITokenClaimsService (
_tokenClaimsService) <
;< =
public 
 
AuthenticateEndpoint 
(  
SignInManager  -
<- .
ApplicationUser. =
>= >
signInManager? L
,L M
ITokenClaimsService 
tokenClaimsService .
). /
{ 
_signInManager 
= 
signInManager &
;& '
_tokenClaimsService 
= 
tokenClaimsService 0
;0 1
} 
[ 
HttpPost 
( 
$str  
)  !
]! "
[ 
SwaggerOperation 
( 
Summary 
= 
$str (
,( )
Description   
=   
$str   ,
,  , -
OperationId!! 
=!! 
$str!! )
,!!) *
Tags"" 
="" 
new"" 
["" 
]"" 
{"" 
$str"" &
}""' (
)""( )
]## 
public$$ 

override$$ 
async$$ 
Task$$ 
<$$ 
ActionResult$$ +
<$$+ , 
AuthenticateResponse$$, @
>$$@ A
>$$A B
HandleAsync$$C N
($$N O
AuthenticateRequest$$O b
request$$c j
,$$j k
CancellationToken%% 
cancellationToken%% +
=%%, -
default%%. 5
)%%5 6
{&& 
var'' 
response'' 
='' 
new''  
AuthenticateResponse'' /
(''/ 0
request''0 7
.''7 8
CorrelationId''8 E
(''E F
)''F G
)''G H
;''H I
var,, 
result,, 
=,, 
await,, 
_signInManager,, )
.,,) *
PasswordSignInAsync,,* =
(,,= >
request,,> E
.,,E F
Username,,F N
,,,N O
request,,P W
.,,W X
Password,,X `
,,,` a
false,,b g
,,,g h
true,,i m
),,m n
;,,n o
response.. 
... 
Result.. 
=.. 
result..  
...  !
	Succeeded..! *
;..* +
response// 
.// 
IsLockedOut// 
=// 
result// %
.//% &
IsLockedOut//& 1
;//1 2
response00 
.00 
IsNotAllowed00 
=00 
result00  &
.00& '
IsNotAllowed00' 3
;003 4
response11 
.11 
RequiresTwoFactor11 "
=11# $
result11% +
.11+ ,
RequiresTwoFactor11, =
;11= >
response22 
.22 
Username22 
=22 
request22 #
.22# $
Username22$ ,
;22, -
if44 

(44 
result44 
.44 
	Succeeded44 
)44 
{55 	
response66 
.66 
Token66 
=66 
await66 "
_tokenClaimsService66# 6
.666 7
GetTokenAsync667 D
(66D E
request66E L
.66L M
Username66M U
)66U V
;66V W
}77 	
return99 
response99 
;99 
}:: 
};; è

{/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/AuthEndpoints/AuthenticateEndpoint.ClaimValue.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& '
AuthEndpoints' 4
;4 5
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
}# $
=% &
string' -
.- .
Empty. 3
;3 4
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
=& '
string( .
.. /
Empty/ 4
;4 5
} ƒ
Ö/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/AuthEndpoints/AuthenticateEndpoint.AuthenticateResponse.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& '
AuthEndpoints' 4
;4 5
public 
class  
AuthenticateResponse !
:" #
BaseResponse$ 0
{ 
public 
 
AuthenticateResponse 
(  
Guid  $
correlationId% 2
)2 3
:4 5
base6 :
(: ;
correlationId; H
)H I
{ 
}		 
public 
 
AuthenticateResponse 
(  
)  !
{ 
} 
public 

bool 
Result 
{ 
get 
; 
set !
;! "
}# $
=% &
false' ,
;, -
public 

string 
Token 
{ 
get 
; 
set "
;" #
}$ %
=& '
string( .
.. /
Empty/ 4
;4 5
public 

string 
Username 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 

bool 
IsLockedOut 
{ 
get !
;! "
set# &
;& '
}( )
=* +
false, 1
;1 2
public 

bool 
IsNotAllowed 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
false- 2
;2 3
public 

bool 
RequiresTwoFactor !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
false2 7
;7 8
} ˜
Ñ/Users/james.amable/Source Code/dotNet/eShopOnWeb/eShopOnWeb/src/PublicApi/AuthEndpoints/AuthenticateEndpoint.AuthenticateRequest.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
	PublicApi &
.& '
AuthEndpoints' 4
;4 5
public 
class 
AuthenticateRequest  
:! "
BaseRequest# .
{ 
public 

string 
Username 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
Password 
{ 
get  
;  !
set" %
;% &
}' (
} 