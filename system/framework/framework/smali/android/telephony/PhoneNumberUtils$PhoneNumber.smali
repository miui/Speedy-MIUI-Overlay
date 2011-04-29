.class public Landroid/telephony/PhoneNumberUtils$PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumber"
.end annotation


# static fields
.field private static final COUNTRY_CODE_CHINA:Ljava/lang/String; = "86"

.field private static COUNTRY_PATTERN_STARTS_WITH_1:Ljava/util/regex/Pattern;

.field private static PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final countryCode2Name:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreaCode:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mEffectiveNumber:Ljava/lang/String;

.field private mOriginalPhoneNumber:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    .line 2410
    const-string v0, "^(17901|17911|17951|17961|12593|12520|10657|10656|10650|10651|10659)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 2426
    const-string v0, "^(242|246|264|268|345|441|664|670|671|758|784|787|809|876|890)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->COUNTRY_PATTERN_STARTS_WITH_1:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x2

    const-string v8, "233"

    const-string v7, "00"

    const-string v4, ""

    .line 2380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2143
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2144
    .local v0, res:Landroid/content/res/Resources;
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1"

    const v3, 0x10403b7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1246"

    const v3, 0x10403b8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1264"

    const v3, 0x10403b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1268"

    const v3, 0x10403ba

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1345"

    const v3, 0x10403bb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1441"

    const v3, 0x10403bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1664"

    const v3, 0x10403bd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1670"

    const v3, 0x10403be

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1671"

    const v3, 0x10403bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1758"

    const v3, 0x10403c0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1784"

    const v3, 0x10403c1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1787"

    const v3, 0x10403c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1809"

    const v3, 0x10403c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1876"

    const v3, 0x10403c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "1890"

    const v3, 0x10403c5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "20"

    const v3, 0x10403c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "212"

    const v3, 0x10403c7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "213"

    const v3, 0x10403c8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "216"

    const v3, 0x10403c9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "218"

    const v3, 0x10403ca

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "220"

    const v3, 0x10403cb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "221"

    const v3, 0x10403cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "223"

    const v3, 0x10403cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "224"

    const v3, 0x10403ce

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "225"

    const v3, 0x10403cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "226"

    const v3, 0x10403d0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "227"

    const v3, 0x10403d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "228"

    const v3, 0x10403d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "229"

    const v3, 0x10403d3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "230"

    const v3, 0x10403d4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "231"

    const v3, 0x10403d5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "232"

    const v3, 0x10403d6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2176
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "233"

    const v2, 0x10403d7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "233"

    const v2, 0x10403d8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "234"

    const v3, 0x10403d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "235"

    const v3, 0x10403da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "236"

    const v3, 0x10403db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "237"

    const v3, 0x10403dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "239"

    const v3, 0x10403dd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "241"

    const v3, 0x10403de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "242"

    const v3, 0x10403df

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "243"

    const v3, 0x10403e0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "244"

    const v3, 0x10403e1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "247"

    const v3, 0x10403e2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "248"

    const v3, 0x10403e3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "249"

    const v3, 0x10403e4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "251"

    const v3, 0x10403e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "252"

    const v3, 0x10403e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "253"

    const v3, 0x10403e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2193
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "254"

    const v3, 0x10403e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2194
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "255"

    const v3, 0x10403e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "256"

    const v3, 0x10403ea

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "257"

    const v3, 0x10403eb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "258"

    const v3, 0x10403ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "260"

    const v3, 0x10403ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "261"

    const v3, 0x10403ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "262"

    const v3, 0x10403ef

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "263"

    const v3, 0x10403f0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "264"

    const v3, 0x10403f1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "265"

    const v3, 0x10403f2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "266"

    const v3, 0x10403f3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2205
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "267"

    const v3, 0x10403f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "268"

    const v3, 0x10403f5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "27"

    const v3, 0x10403f6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "30"

    const v3, 0x10403f7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "31"

    const v3, 0x10403f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "327"

    const v3, 0x10403f9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "32"

    const v3, 0x10403fa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "331"

    const v3, 0x10403fb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "33"

    const v3, 0x10403fc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "34"

    const v3, 0x10403fd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2215
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "350"

    const v3, 0x10403fe

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "351"

    const v3, 0x10403ff

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "352"

    const v3, 0x1040400

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "353"

    const v3, 0x1040401

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "354"

    const v3, 0x1040402

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2220
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "355"

    const v3, 0x1040403

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "356"

    const v3, 0x1040404

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "357"

    const v3, 0x1040405

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "358"

    const v3, 0x1040406

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "359"

    const v3, 0x1040407

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "36"

    const v3, 0x1040408

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "370"

    const v3, 0x1040409

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "371"

    const v3, 0x104040a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "372"

    const v3, 0x104040b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "373"

    const v3, 0x104040c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "374"

    const v3, 0x104040d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "375"

    const v3, 0x104040e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "376"

    const v3, 0x104040f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "377"

    const v3, 0x1040410

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "378"

    const v3, 0x1040411

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "380"

    const v3, 0x1040412

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "381"

    const v3, 0x1040413

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "386"

    const v3, 0x1040414

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "39"

    const v3, 0x1040415

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "40"

    const v3, 0x1040416

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "41"

    const v3, 0x1040417

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "420"

    const v3, 0x1040418

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "421"

    const v3, 0x1040419

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "423"

    const v3, 0x104041a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "43"

    const v3, 0x104041b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "44"

    const v3, 0x104041c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "45"

    const v3, 0x104041d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "46"

    const v3, 0x104041e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "47"

    const v3, 0x104041f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "48"

    const v3, 0x1040420

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "49"

    const v3, 0x1040421

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "501"

    const v3, 0x1040422

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "502"

    const v3, 0x1040423

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "503"

    const v3, 0x1040424

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "504"

    const v3, 0x1040425

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "505"

    const v3, 0x1040426

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "506"

    const v3, 0x1040427

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "507"

    const v3, 0x1040428

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "509"

    const v3, 0x1040429

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "51"

    const v3, 0x104042a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "52"

    const v3, 0x104042b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "53"

    const v3, 0x104042c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "54"

    const v3, 0x104042d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "55"

    const v3, 0x104042e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "56"

    const v3, 0x104042f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "57"

    const v3, 0x1040430

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "58"

    const v3, 0x1040431

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "591"

    const v3, 0x1040432

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "592"

    const v3, 0x1040433

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "593"

    const v3, 0x1040434

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "594"

    const v3, 0x1040435

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "595"

    const v3, 0x1040436

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "596"

    const v3, 0x1040437

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "597"

    const v3, 0x1040438

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "598"

    const v3, 0x1040439

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2275
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "599"

    const v3, 0x104043a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "60"

    const v3, 0x104043b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2277
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "61"

    const v3, 0x104043c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "62"

    const v3, 0x104043d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "63"

    const v3, 0x104043e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "64"

    const v3, 0x104043f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "65"

    const v3, 0x1040440

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2282
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "66"

    const v3, 0x1040441

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "673"

    const v3, 0x1040442

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "674"

    const v3, 0x1040443

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "675"

    const v3, 0x1040444

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "676"

    const v3, 0x1040445

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "677"

    const v3, 0x1040446

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "679"

    const v3, 0x1040447

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "682"

    const v3, 0x1040448

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "684"

    const v3, 0x1040449

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "685"

    const v3, 0x104044a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "689"

    const v3, 0x104044b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "7"

    const v3, 0x104044c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "81"

    const v3, 0x104044d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "82"

    const v3, 0x104044e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "84"

    const v3, 0x104044f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "850"

    const v3, 0x1040450

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "852"

    const v3, 0x1040451

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "853"

    const v3, 0x1040452

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "855"

    const v3, 0x1040453

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "856"

    const v3, 0x1040454

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "86"

    const v3, 0x1040455

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "880"

    const v3, 0x1040456

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "886"

    const v3, 0x1040457

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "90"

    const v3, 0x1040458

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "91"

    const v3, 0x1040459

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "92"

    const v3, 0x104045a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "93"

    const v3, 0x104045b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "94"

    const v3, 0x104045c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "95"

    const v3, 0x104045d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "960"

    const v3, 0x104045e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "961"

    const v3, 0x104045f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "962"

    const v3, 0x1040460

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "963"

    const v3, 0x1040461

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "964"

    const v3, 0x1040462

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "965"

    const v3, 0x1040463

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2317
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "966"

    const v3, 0x1040464

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "967"

    const v3, 0x1040465

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "968"

    const v3, 0x1040466

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2320
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "971"

    const v3, 0x1040467

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "972"

    const v3, 0x1040468

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "973"

    const v3, 0x1040469

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "974"

    const v3, 0x104046a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "976"

    const v3, 0x104046b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "977"

    const v3, 0x104046c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "98"

    const v3, 0x104046d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "992"

    const v3, 0x104046e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "993"

    const v3, 0x104046f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "994"

    const v3, 0x1040470

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    const-string v2, "995"

    const v3, 0x1040471

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mOriginalPhoneNumber:Ljava/lang/String;

    .line 2382
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mOriginalPhoneNumber:Ljava/lang/String;

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 2383
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 2384
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1

    .line 2385
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const-string v2, "+00"

    const-string v3, "00"

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 2390
    :cond_0
    :goto_0
    const-string v1, ""

    iput-object v4, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 2391
    const-string v1, ""

    iput-object v4, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 2392
    const-string v1, ""

    iput-object v4, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 2393
    return-void

    .line 2387
    :cond_1
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const-string v2, "+"

    const-string v3, "00"

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2132
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2132
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/PhoneNumberUtils$PhoneNumber;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2132
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "countryCode"

    .prologue
    .line 2359
    if-eqz p0, :cond_0

    .line 2360
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->countryCode2Name:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2361
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2366
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static isChineseOperator()Z
    .locals 2

    .prologue
    .line 2370
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 2371
    .local v0, simOperator:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2372
    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 2377
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    .locals 3
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x0

    .line 2401
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 2407
    :goto_0
    return-object v1

    .line 2403
    :cond_0
    new-instance v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;-><init>(Ljava/lang/String;)V

    .line 2404
    .local v0, pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    iget-object v1, v0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parsePrefix()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parseCountryCode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parseAreaCode()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 2405
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 2407
    goto :goto_0
.end method

.method private parseAreaCode()Z
    .locals 2

    .prologue
    .line 2593
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2594
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parseChineseNumber()Z

    move-result v0

    .line 2600
    :goto_0
    return v0

    .line 2596
    :cond_0
    const-string v0, "86"

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 2598
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parseChineseNumber()Z

    move-result v0

    goto :goto_0

    .line 2600
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseChineseNumber()Z
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2604
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 2634
    :goto_0
    return v0

    .line 2607
    :cond_0
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    .line 2608
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_1

    move v0, v1

    .line 2609
    goto :goto_0

    .line 2611
    :cond_1
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 2612
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2626
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_3

    move v0, v1

    .line 2627
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 2614
    goto :goto_0

    .line 2616
    :pswitch_1
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    .line 2617
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 2618
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    :cond_2
    :goto_1
    move v0, v2

    .line 2634
    goto :goto_0

    .line 2622
    :pswitch_2
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 2623
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_1

    .line 2629
    :cond_3
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    .line 2630
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    goto :goto_1

    .line 2612
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseCountryCode()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2430
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 2589
    :goto_0
    return v2

    .line 2433
    :cond_0
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    .line 2434
    const/4 v0, 0x0

    .line 2435
    .local v0, countryCodeLength:I
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 2436
    goto :goto_0

    .line 2438
    :cond_1
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v4

    .line 2585
    goto :goto_0

    .line 2440
    :pswitch_0
    sget-object v2, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->COUNTRY_PATTERN_STARTS_WITH_1:Ljava/util/regex/Pattern;

    iget-object v3, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2441
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2442
    const/4 v0, 0x1

    .line 2587
    .end local v1           #m:Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    .line 2588
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    move v2, v5

    .line 2589
    goto :goto_0

    .line 2444
    .restart local v1       #m:Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 2446
    goto :goto_1

    .line 2448
    .end local v1           #m:Ljava/util/regex/Matcher;
    :pswitch_1
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_4

    move v2, v4

    .line 2449
    goto :goto_0

    .line 2451
    :cond_4
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2457
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_5

    move v2, v4

    .line 2458
    goto :goto_0

    .line 2454
    :sswitch_0
    const/4 v0, 0x2

    .line 2455
    goto :goto_1

    .line 2460
    :cond_5
    const/4 v0, 0x3

    .line 2461
    goto :goto_1

    .line 2465
    :pswitch_2
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_6

    move v2, v4

    .line 2466
    goto :goto_0

    .line 2468
    :cond_6
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 2489
    :pswitch_3
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_7

    move v2, v4

    .line 2490
    goto/16 :goto_0

    .line 2474
    :pswitch_4
    const/4 v0, 0x2

    .line 2475
    goto :goto_1

    .line 2477
    :pswitch_5
    const/4 v0, 0x2

    .line 2478
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_2

    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x37

    if-ne v2, v3, :cond_2

    .line 2479
    const/4 v0, 0x3

    goto :goto_1

    .line 2483
    :pswitch_6
    const/4 v0, 0x2

    .line 2484
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_2

    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    .line 2485
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 2492
    :cond_7
    const/4 v0, 0x3

    .line 2493
    goto/16 :goto_1

    .line 2497
    :pswitch_7
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_8

    move v2, v4

    .line 2498
    goto/16 :goto_0

    .line 2500
    :cond_8
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 2508
    const/4 v0, 0x2

    .line 2509
    goto/16 :goto_1

    .line 2502
    :pswitch_8
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_9

    move v2, v4

    .line 2503
    goto/16 :goto_0

    .line 2505
    :cond_9
    const/4 v0, 0x3

    .line 2506
    goto/16 :goto_1

    .line 2513
    :pswitch_9
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_a

    move v2, v4

    .line 2514
    goto/16 :goto_0

    .line 2516
    :cond_a
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 2525
    const/4 v0, 0x2

    .line 2526
    goto/16 :goto_1

    .line 2519
    :sswitch_1
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_b

    move v2, v4

    .line 2520
    goto/16 :goto_0

    .line 2522
    :cond_b
    const/4 v0, 0x3

    .line 2523
    goto/16 :goto_1

    .line 2530
    :pswitch_a
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_c

    move v2, v4

    .line 2531
    goto/16 :goto_0

    .line 2533
    :cond_c
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_3

    .line 2542
    const/4 v0, 0x2

    .line 2543
    goto/16 :goto_1

    .line 2536
    :pswitch_b
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_d

    move v2, v4

    .line 2537
    goto/16 :goto_0

    .line 2539
    :cond_d
    const/4 v0, 0x3

    .line 2540
    goto/16 :goto_1

    .line 2547
    :pswitch_c
    const/4 v0, 0x1

    .line 2548
    goto/16 :goto_1

    .line 2550
    :pswitch_d
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_e

    move v2, v4

    .line 2551
    goto/16 :goto_0

    .line 2553
    :cond_e
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_4

    .line 2562
    :pswitch_e
    const/4 v0, 0x2

    .line 2563
    goto/16 :goto_1

    .line 2556
    :pswitch_f
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_f

    move v2, v4

    .line 2557
    goto/16 :goto_0

    .line 2559
    :cond_f
    const/4 v0, 0x3

    .line 2560
    goto/16 :goto_1

    .line 2567
    :pswitch_10
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_10

    move v2, v4

    .line 2568
    goto/16 :goto_0

    .line 2570
    :cond_10
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_5

    .line 2580
    :pswitch_11
    const/4 v0, 0x2

    .line 2581
    goto/16 :goto_1

    .line 2574
    :pswitch_12
    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_11

    move v2, v4

    .line 2575
    goto/16 :goto_0

    .line 2577
    :cond_11
    const/4 v0, 0x3

    .line 2578
    goto/16 :goto_1

    .line 2438
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_10
    .end packed-switch

    .line 2451
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x37 -> :sswitch_0
    .end sparse-switch

    .line 2468
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2500
    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_8
    .end packed-switch

    .line 2516
    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_1
        0x39 -> :sswitch_1
    .end sparse-switch

    .line 2533
    :pswitch_data_3
    .packed-switch 0x37
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 2553
    :pswitch_data_4
    .packed-switch 0x35
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 2570
    :pswitch_data_5
    .packed-switch 0x36
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private parsePrefix()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2414
    invoke-static {}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 2423
    :goto_0
    return v1

    .line 2418
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->PREFIX_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2419
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2420
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    .line 2421
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    :cond_1
    move v1, v3

    .line 2423
    goto :goto_0
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2334
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectiveNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2355
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2346
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mOriginalPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2342
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isChineseNumber()Z
    .locals 2

    .prologue
    .line 2638
    const-string v0, "86"

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalMobileNumber()Z
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2643
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2644
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2645
    .local v0, c:C
    const/16 v1, 0x31

    if-ne v0, v1, :cond_3

    .line 2646
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2647
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v3

    .line 2664
    .end local v0           #c:C
    :goto_0
    return v1

    .line 2650
    .restart local v0       #c:C
    :pswitch_1
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 2653
    :pswitch_2
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-eq v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :pswitch_3
    move v1, v4

    .line 2657
    goto :goto_0

    .end local v0           #c:C
    :cond_3
    move v1, v3

    .line 2664
    goto :goto_0

    .line 2647
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isServiceNumber()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x30

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2668
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2669
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2670
    .local v0, c:C
    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    .line 2671
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2672
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v4

    .line 2699
    .end local v0           #c:C
    :goto_0
    return v1

    .restart local v0       #c:C
    :pswitch_1
    move v1, v3

    .line 2678
    goto :goto_0

    .line 2681
    :pswitch_2
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    .line 2687
    :pswitch_3
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    .line 2691
    :cond_2
    const/16 v1, 0x39

    if-ne v0, v1, :cond_3

    move v1, v3

    .line 2693
    goto :goto_0

    .line 2694
    :cond_3
    const/16 v1, 0x32

    if-lt v0, v1, :cond_5

    const/16 v1, 0x38

    if-gt v0, v1, :cond_5

    .line 2696
    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->mEffectiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0

    .end local v0           #c:C
    :cond_5
    move v1, v4

    .line 2699
    goto :goto_0

    .line 2672
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
