.class public Landroid/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Calls;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "call_log"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final MAX_NUMBER_LENGTH:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "content://call_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(JII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Landroid/provider/CallLog;->noteTraffic(JII)V

    return-void
.end method

.method public static makeFakeId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 10
    .parameter "number"

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0xb

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 317
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 340
    :goto_0
    return-object v3

    .line 319
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 322
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 323
    .local v0, c:C
    if-lt v0, v9, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 324
    invoke-virtual {v2, v5, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lt v3, v8, :cond_2

    .line 332
    .end local v0           #c:C
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_3

    .line 333
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 321
    .restart local v0       #c:C
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 336
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 337
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 340
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0
.end method

.method private static noteTraffic(JII)V
    .locals 7
    .parameter "date"
    .parameter "type"
    .parameter "duration"

    .prologue
    .line 298
    add-int/lit8 v0, p3, 0x3b

    :try_start_0
    div-int/lit8 v0, v0, 0x3c

    mul-int/lit8 p3, v0, 0x3c

    .line 299
    invoke-static {}, Landroid/net/TrafficStats;->getService()Lcom/android/internal/app/ITraffic;

    move-result-object v0

    int-to-long v4, p3

    move-wide v1, p0

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/ITraffic;->notePhoneCall(JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 301
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "CallLog"

    const-string v1, "RemoteException:"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
