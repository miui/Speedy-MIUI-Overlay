.class public final Landroid/provider/Traffic$Sms;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation


# static fields
.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/traffic-sms"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final SUMMARY_URI:Landroid/net/Uri; = null

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_MMS:I = 0x1

.field public static final TYPE_SMS:I = 0x0

.field public static final UID:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://traffic/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Traffic$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    const-string v0, "content://traffic/sms-summary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Traffic$Sms;->SUMMARY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
