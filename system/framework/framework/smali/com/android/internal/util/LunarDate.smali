.class public Lcom/android/internal/util/LunarDate;
.super Ljava/lang/Object;
.source "LunarDate.java"


# static fields
.field private static final luYearData:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/util/LunarDate;->luYearData:[J

    return-void

    :array_0
    .array-data 0x8
        0xd8t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x54t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x65t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xd2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa2t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0x49t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xabt 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf2t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x95t 0x6et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe3t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0xc8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xd8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb4t 0xa5t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0x53t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x73t 0x45t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa8t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xaet 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe4t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x63t 0xf2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd4t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0x95t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x74t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7at 0xb2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x46t 0xaft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf5t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x74t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0x6bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb7t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa4t 0xbat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd9t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x76t 0x51t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x79t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe6t 0xa6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x76t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xd0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x45t 0xddt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xb2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final calLunar(III)[J
    .locals 8
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    .line 64
    const/4 v0, 0x7

    new-array v1, v0, [J

    .line 65
    .local v1, lunar_date:[J
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, temp:I
    const/4 v0, 0x0

    .line 66
    .local v0, leap:I
    new-instance v0, Ljava/util/GregorianCalendar;

    .end local v0           #leap:I
    const/16 v3, 0x76c

    const/4 v4, 0x0

    const/16 v5, 0x1f

    invoke-direct {v0, v3, v4, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 67
    .local v0, firstDate:Ljava/util/Date;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 68
    .local p0, curDate:Ljava/util/Date;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .end local p0           #curDate:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr p0, v3

    const-wide/32 v3, 0x5265c00

    div-long p1, p0, v3

    .line 69
    .end local p2
    .local p1, offset:J
    const/4 p0, 0x5

    const-wide/16 v3, 0x28

    add-long/2addr v3, p1

    aput-wide v3, v1, p0

    .line 70
    const/4 p0, 0x4

    const-wide/16 v3, 0xe

    aput-wide v3, v1, p0

    .line 72
    const/16 p0, 0x76c

    .local p0, i:I
    move v0, v2

    .end local v2           #temp:I
    .local v0, temp:I
    :goto_0
    const/16 v2, 0x802

    if-ge p0, v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 73
    invoke-static {p0}, Lcom/android/internal/util/LunarDate;->yrDays(I)I

    move-result v0

    .line 74
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 75
    const/4 v2, 0x4

    aget-wide v3, v1, v2

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 72
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 78
    int-to-long v2, v0

    add-long/2addr p1, v2

    .line 79
    add-int/lit8 p0, p0, -0x1

    .line 80
    const/4 v2, 0x4

    aget-wide v3, v1, v2

    const-wide/16 v5, 0xc

    sub-long/2addr v3, v5

    aput-wide v3, v1, v2

    :cond_1
    move-wide v2, p1

    .line 82
    .end local p1           #offset:J
    .local v2, offset:J
    const/4 p1, 0x0

    int-to-long v4, p0

    aput-wide v4, v1, p1

    .line 83
    const/4 p1, 0x3

    const/16 p2, 0x748

    sub-int p2, p0, p2

    int-to-long v4, p2

    aput-wide v4, v1, p1

    .line 84
    invoke-static {p0}, Lcom/android/internal/util/LunarDate;->rMonth(I)I

    move-result p1

    .line 85
    .local p1, leap:I
    const/4 p0, 0x6

    const-wide/16 v4, 0x0

    aput-wide v4, v1, p0

    .line 87
    .end local p0           #i:I
    const/4 p0, 0x1

    .restart local p0       #i:I
    move p2, v0

    .end local v0           #temp:I
    .local p2, temp:I
    :goto_1
    const/16 v0, 0xd

    if-ge p0, v0, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 88
    if-lez p1, :cond_4

    add-int/lit8 p2, p1, 0x1

    if-ne p0, p2, :cond_4

    .end local p2           #temp:I
    const/4 p2, 0x6

    aget-wide v4, v1, p2

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_4

    .line 89
    add-int/lit8 p0, p0, -0x1

    .line 90
    const/4 p2, 0x6

    const-wide/16 v4, 0x1

    aput-wide v4, v1, p2

    .line 91
    const/4 p2, 0x0

    aget-wide v4, v1, p2

    long-to-int p2, v4

    invoke-static {p2}, Lcom/android/internal/util/LunarDate;->rMthDays(I)I

    move-result p2

    .line 96
    .restart local p2       #temp:I
    :goto_2
    const/4 v0, 0x6

    aget-wide v4, v1, v0

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    if-ne p0, v0, :cond_2

    .line 97
    const/4 v0, 0x6

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v0

    .line 98
    :cond_2
    int-to-long v4, p2

    sub-long/2addr v2, v4

    .line 99
    const/4 v0, 0x6

    aget-wide v4, v1, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 100
    const/4 v0, 0x4

    aget-wide v4, v1, v0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 87
    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 93
    .end local p2           #temp:I
    :cond_4
    const/4 p2, 0x0

    aget-wide v4, v1, p2

    long-to-int p2, v4

    invoke-static {p2, p0}, Lcom/android/internal/util/LunarDate;->mthDays(II)I

    move-result p2

    .restart local p2       #temp:I
    goto :goto_2

    .line 103
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    if-lez p1, :cond_6

    add-int/lit8 p1, p1, 0x1

    if-ne p0, p1, :cond_6

    .line 104
    .end local p1           #leap:I
    const/4 p1, 0x6

    aget-wide v4, v1, p1

    const-wide/16 v6, 0x1

    cmp-long p1, v4, v6

    if-nez p1, :cond_7

    .line 105
    const/4 p1, 0x6

    const-wide/16 v4, 0x0

    aput-wide v4, v1, p1

    .line 112
    :cond_6
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_8

    .line 113
    int-to-long p1, p2

    add-long/2addr p1, v2

    .line 114
    .end local v2           #offset:J
    .end local p2           #temp:I
    .local p1, offset:J
    add-int/lit8 p0, p0, -0x1

    .line 115
    const/4 v0, 0x4

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 117
    :goto_4
    const/4 v0, 0x1

    int-to-long v2, p0

    aput-wide v2, v1, v0

    .line 118
    const/4 p0, 0x2

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    aput-wide p1, v1, p0

    .line 119
    .end local p0           #i:I
    .end local p1           #offset:J
    return-object v1

    .line 107
    .restart local v2       #offset:J
    .restart local p0       #i:I
    .restart local p2       #temp:I
    :cond_7
    const/4 p1, 0x6

    const-wide/16 v4, 0x1

    aput-wide v4, v1, p1

    .line 108
    add-int/lit8 p0, p0, -0x1

    .line 109
    const/4 p1, 0x4

    aget-wide v4, v1, p1

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    aput-wide v4, v1, p1

    goto :goto_3

    :cond_8
    move-wide p1, v2

    .end local v2           #offset:J
    .end local p2           #temp:I
    .restart local p1       #offset:J
    goto :goto_4
.end method

.method public static final getDayString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 5
    .parameter "res"
    .parameter "day"

    .prologue
    const v4, 0x104039b

    .line 123
    const-string v0, ""

    .line 124
    .local v0, a:Ljava/lang/String;
    const/16 v3, 0xa

    if-ne p1, v3, :cond_0

    .line 125
    const v3, 0x10403a5

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    :goto_0
    return-object v3

    .line 126
    :cond_0
    const/16 v3, 0x14

    if-ne p1, v3, :cond_1

    .line 127
    const v3, 0x10403a6

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 128
    :cond_1
    const/16 v3, 0x1e

    if-ne p1, v3, :cond_2

    .line 129
    const v3, 0x10403a7

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 130
    :cond_2
    div-int/lit8 v2, p1, 0xa

    .line 131
    .local v2, two:I
    if-nez v2, :cond_3

    .line 132
    const v3, 0x10403a8

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 134
    const v3, 0x10403a2

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 136
    const v3, 0x10403a9

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 138
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_6
    rem-int/lit8 v1, p1, 0xa

    .line 140
    .local v1, one:I
    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object v3, v0

    .line 169
    goto :goto_0

    .line 142
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x1040399

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    goto :goto_1

    .line 145
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x104039a

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    goto :goto_1

    .line 148
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    goto :goto_1

    .line 151
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x104039c

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    goto :goto_1

    .line 154
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x104039d

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    goto :goto_1

    .line 157
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x104039e

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    goto/16 :goto_1

    .line 160
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x104039f

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    goto/16 :goto_1

    .line 163
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x10403a0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    goto/16 :goto_1

    .line 166
    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x10403a1

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getMonthString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "k"

    .prologue
    const/4 v1, 0x0

    .line 173
    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    move-object v0, v1

    .line 205
    :goto_0
    return-object v0

    .line 176
    :cond_0
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 205
    goto :goto_0

    .line 178
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 180
    :pswitch_1
    const v0, 0x1040398

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_2
    const v0, 0x104039a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_3
    const v0, 0x104039b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :pswitch_4
    const v0, 0x104039c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_5
    const v0, 0x104039d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :pswitch_6
    const v0, 0x104039e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_7
    const v0, 0x104039f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :pswitch_8
    const v0, 0x10403a0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_9
    const v0, 0x10403a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_a
    const v0, 0x10403a2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_b
    const v0, 0x10403a3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_c
    const v0, 0x10403a4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static final mthDays(II)I
    .locals 4
    .parameter "y"
    .parameter "m"

    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/util/LunarDate;->luYearData:[J

    const/16 v1, 0x76c

    sub-int v1, p0, v1

    aget-wide v0, v0, v1

    const/high16 v2, 0x1

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 58
    const/16 v0, 0x1d

    .line 60
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static final rMonth(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 53
    sget-object v0, Lcom/android/internal/util/LunarDate;->luYearData:[J

    const/16 v1, 0x76c

    sub-int v1, p0, v1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static final rMthDays(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/internal/util/LunarDate;->rMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/android/internal/util/LunarDate;->luYearData:[J

    const/16 v1, 0x76c

    sub-int v1, p0, v1

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 45
    const/16 v0, 0x1e

    .line 49
    :goto_0
    return v0

    .line 47
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static solar2lunar(Landroid/content/res/Resources;III)Ljava/lang/String;
    .locals 4
    .parameter "res"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 210
    invoke-static {p1, p2, p3}, Lcom/android/internal/util/LunarDate;->calLunar(III)[J

    move-result-object v0

    .line 211
    .local v0, l:[J
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    .local v1, sLunar:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    :try_start_0
    aget-wide v2, v0, v2

    long-to-int v2, v2

    invoke-static {p0, v2}, Lcom/android/internal/util/LunarDate;->getMonthString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const v2, 0x10403aa

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const/4 v2, 0x2

    aget-wide v2, v0, v2

    long-to-int v2, v2

    invoke-static {p0, v2}, Lcom/android/internal/util/LunarDate;->getDayString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 218
    const/4 v1, 0x0

    return-object v2

    :catchall_0
    move-exception v2

    const/4 v1, 0x0

    throw v2
.end method

.method private static final yrDays(I)I
    .locals 6
    .parameter "y"

    .prologue
    .line 34
    const/16 v1, 0x15c

    .line 35
    .local v1, sum:I
    const v0, 0x8000

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 36
    sget-object v2, Lcom/android/internal/util/LunarDate;->luYearData:[J

    const/16 v3, 0x76c

    sub-int v3, p0, v3

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 35
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/LunarDate;->rMthDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method
