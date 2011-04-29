.class public Lcom/android/internal/util/CurrentReader;
.super Ljava/lang/Object;
.source "CurrentReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/CurrentReader$ReadInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CurrentReader"

.field private static sInstance:Lcom/android/internal/util/CurrentReader;


# instance fields
.field private mReadInfo:Lcom/android/internal/util/CurrentReader$ReadInfo;

.field private mReadInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/CurrentReader$ReadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/CurrentReader;->mReadInfos:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lcom/android/internal/util/CurrentReader;->mReadInfos:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/util/CurrentReader$ReadInfo;

    const-string v2, "/sys/class/power_supply/battery/current_now"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/util/CurrentReader$ReadInfo;-><init>(Lcom/android/internal/util/CurrentReader;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/android/internal/util/CurrentReader;->mReadInfos:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/util/CurrentReader$ReadInfo;

    const-string v2, "/sys/class/power_supply/battery/batt_current"

    const/16 v3, 0x3e8

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/util/CurrentReader$ReadInfo;-><init>(Lcom/android/internal/util/CurrentReader;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-direct {p0}, Lcom/android/internal/util/CurrentReader;->init()Z

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/android/internal/util/CurrentReader;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/internal/util/CurrentReader;->sInstance:Lcom/android/internal/util/CurrentReader;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/internal/util/CurrentReader;

    invoke-direct {v0}, Lcom/android/internal/util/CurrentReader;-><init>()V

    sput-object v0, Lcom/android/internal/util/CurrentReader;->sInstance:Lcom/android/internal/util/CurrentReader;

    .line 46
    :cond_0
    sget-object v0, Lcom/android/internal/util/CurrentReader;->sInstance:Lcom/android/internal/util/CurrentReader;

    return-object v0
.end method

.method private init()Z
    .locals 6

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/internal/util/CurrentReader;->mReadInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/CurrentReader$ReadInfo;

    .line 55
    .local v1, info:Lcom/android/internal/util/CurrentReader$ReadInfo;
    invoke-static {v1}, Lcom/android/internal/util/CurrentReader;->readCurrent(Lcom/android/internal/util/CurrentReader$ReadInfo;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 56
    iput-object v1, p0, Lcom/android/internal/util/CurrentReader;->mReadInfo:Lcom/android/internal/util/CurrentReader$ReadInfo;

    .line 57
    const/4 v2, 0x1

    .line 60
    .end local v1           #info:Lcom/android/internal/util/CurrentReader$ReadInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static readCurrent(Lcom/android/internal/util/CurrentReader$ReadInfo;)J
    .locals 9
    .parameter "info"

    .prologue
    const-wide/16 v7, -0x1

    const-string v6, "CurrentReader"

    .line 75
    if-nez p0, :cond_0

    move-wide v3, v7

    .line 96
    :goto_0
    return-wide v3

    .line 79
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/internal/util/CurrentReader$ReadInfo;->fileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    .local v0, buf:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 82
    const-string v3, "CurrentReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read current string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    :cond_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget v5, p0, Lcom/android/internal/util/CurrentReader$ReadInfo;->unitScale:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    int-to-long v5, v5

    mul-long/2addr v3, v5

    goto :goto_0

    .line 88
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 89
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v3, "CurrentReader"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    move-wide v3, v7

    .line 96
    goto :goto_0

    .line 90
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 91
    .local v1, e:Ljava/io/IOException;
    const-string v3, "CurrentReader"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 93
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "CurrentReader"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public canRead()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/util/CurrentReader;->mReadInfo:Lcom/android/internal/util/CurrentReader$ReadInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/util/CurrentReader;->mReadInfo:Lcom/android/internal/util/CurrentReader$ReadInfo;

    invoke-static {v0}, Lcom/android/internal/util/CurrentReader;->readCurrent(Lcom/android/internal/util/CurrentReader$ReadInfo;)J

    move-result-wide v0

    return-wide v0
.end method
