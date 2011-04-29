.class public final Landroid/provider/ContactsContract$CommonDataKinds$Nickname;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Nickname"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/nickname"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/nickname"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_INITIALS:I = 0x5

.field public static final TYPE_MAIDEN_NAME:I = 0x3

.field public static final TYPE_MAINDEN_NAME:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_OTHER_NAME:I = 0x2

.field public static final TYPE_SHORT_NAME:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3622
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "nickname"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Nickname;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
