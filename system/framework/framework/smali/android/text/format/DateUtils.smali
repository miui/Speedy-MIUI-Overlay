.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final FAST_FORMAT_HMMSS:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_MMSS:Ljava/lang/String; = "%1$02d:%2$02d"

.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000

.field public static final FORMAT_CAP_NOON:I = 0x400

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"

.field public static final LENGTH_LONG:I = 0xa

.field public static final LENGTH_MEDIUM:I = 0x14

.field public static final LENGTH_SHORT:I = 0x1e

.field public static final LENGTH_SHORTER:I = 0x28

.field public static final LENGTH_SHORTEST:I = 0x32

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TIME_PADDING:C = '0'

.field private static final TIME_SEPARATOR:C = ':'

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static final sAmPm:[I

.field private static final sDaysLong:[I

.field private static final sDaysMedium:[I

.field private static final sDaysShort:[I

.field private static final sDaysShortest:[I

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static final sMonthsLong:[I

.field private static final sMonthsMedium:[I

.field private static final sMonthsShortest:[I

.field private static final sMonthsStandaloneLong:[I

.field private static sNowTime:Landroid/text/format/Time;

.field private static sStatusTimeFormat:Ljava/text/DateFormat;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .line 76
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 90
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .line 104
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 118
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroid/text/format/DateUtils;->sAmPm:[I

    .line 211
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 237
    new-array v0, v3, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

    .line 40
    nop

    :array_0
    .array-data 0x4
        0x4ct 0x0t 0x4t 0x1t
        0x4dt 0x0t 0x4t 0x1t
        0x4et 0x0t 0x4t 0x1t
        0x4ft 0x0t 0x4t 0x1t
        0x50t 0x0t 0x4t 0x1t
        0x51t 0x0t 0x4t 0x1t
        0x52t 0x0t 0x4t 0x1t
    .end array-data

    .line 49
    :array_1
    .array-data 0x4
        0x53t 0x0t 0x4t 0x1t
        0x54t 0x0t 0x4t 0x1t
        0x55t 0x0t 0x4t 0x1t
        0x56t 0x0t 0x4t 0x1t
        0x57t 0x0t 0x4t 0x1t
        0x58t 0x0t 0x4t 0x1t
        0x59t 0x0t 0x4t 0x1t
    .end array-data

    .line 58
    :array_2
    .array-data 0x4
        0x5at 0x0t 0x4t 0x1t
        0x5bt 0x0t 0x4t 0x1t
        0x5ct 0x0t 0x4t 0x1t
        0x5dt 0x0t 0x4t 0x1t
        0x5et 0x0t 0x4t 0x1t
        0x5ft 0x0t 0x4t 0x1t
        0x60t 0x0t 0x4t 0x1t
    .end array-data

    .line 67
    :array_3
    .array-data 0x4
        0x61t 0x0t 0x4t 0x1t
        0x62t 0x0t 0x4t 0x1t
        0x63t 0x0t 0x4t 0x1t
        0x64t 0x0t 0x4t 0x1t
        0x65t 0x0t 0x4t 0x1t
        0x66t 0x0t 0x4t 0x1t
        0x67t 0x0t 0x4t 0x1t
    .end array-data

    .line 76
    :array_4
    .array-data 0x4
        0x1ct 0x0t 0x4t 0x1t
        0x1dt 0x0t 0x4t 0x1t
        0x1et 0x0t 0x4t 0x1t
        0x1ft 0x0t 0x4t 0x1t
        0x20t 0x0t 0x4t 0x1t
        0x21t 0x0t 0x4t 0x1t
        0x22t 0x0t 0x4t 0x1t
        0x23t 0x0t 0x4t 0x1t
        0x24t 0x0t 0x4t 0x1t
        0x25t 0x0t 0x4t 0x1t
        0x26t 0x0t 0x4t 0x1t
        0x27t 0x0t 0x4t 0x1t
    .end array-data

    .line 90
    :array_5
    .array-data 0x4
        0x28t 0x0t 0x4t 0x1t
        0x29t 0x0t 0x4t 0x1t
        0x2at 0x0t 0x4t 0x1t
        0x2bt 0x0t 0x4t 0x1t
        0x2ct 0x0t 0x4t 0x1t
        0x2dt 0x0t 0x4t 0x1t
        0x2et 0x0t 0x4t 0x1t
        0x2ft 0x0t 0x4t 0x1t
        0x30t 0x0t 0x4t 0x1t
        0x31t 0x0t 0x4t 0x1t
        0x32t 0x0t 0x4t 0x1t
        0x33t 0x0t 0x4t 0x1t
    .end array-data

    .line 104
    :array_6
    .array-data 0x4
        0x34t 0x0t 0x4t 0x1t
        0x35t 0x0t 0x4t 0x1t
        0x36t 0x0t 0x4t 0x1t
        0x37t 0x0t 0x4t 0x1t
        0x38t 0x0t 0x4t 0x1t
        0x39t 0x0t 0x4t 0x1t
        0x3at 0x0t 0x4t 0x1t
        0x3bt 0x0t 0x4t 0x1t
        0x3ct 0x0t 0x4t 0x1t
        0x3dt 0x0t 0x4t 0x1t
        0x3et 0x0t 0x4t 0x1t
        0x3ft 0x0t 0x4t 0x1t
    .end array-data

    .line 118
    :array_7
    .array-data 0x4
        0x40t 0x0t 0x4t 0x1t
        0x41t 0x0t 0x4t 0x1t
        0x42t 0x0t 0x4t 0x1t
        0x43t 0x0t 0x4t 0x1t
        0x44t 0x0t 0x4t 0x1t
        0x45t 0x0t 0x4t 0x1t
        0x46t 0x0t 0x4t 0x1t
        0x47t 0x0t 0x4t 0x1t
        0x48t 0x0t 0x4t 0x1t
        0x49t 0x0t 0x4t 0x1t
        0x4at 0x0t 0x4t 0x1t
        0x4bt 0x0t 0x4t 0x1t
    .end array-data

    .line 132
    :array_8
    .array-data 0x4
        0x68t 0x0t 0x4t 0x1t
        0x69t 0x0t 0x4t 0x1t
    .end array-data

    .line 211
    :array_9
    .array-data 0x4
        0x91t 0x0t 0x4t 0x1t
        0x92t 0x0t 0x4t 0x1t
        0x9et 0x0t 0x4t 0x1t
        0xa0t 0x0t 0x4t 0x1t
        0x93t 0x0t 0x4t 0x1t
        0x95t 0x0t 0x4t 0x1t
        0x97t 0x0t 0x4t 0x1t
        0x99t 0x0t 0x4t 0x1t
        0x83t 0x0t 0x4t 0x1t
        0x84t 0x0t 0x4t 0x1t
        0x85t 0x0t 0x4t 0x1t
        0x86t 0x0t 0x4t 0x1t
        0x88t 0x0t 0x4t 0x1t
        0x89t 0x0t 0x4t 0x1t
        0x8at 0x0t 0x4t 0x1t
        0x87t 0x0t 0x4t 0x1t
    .end array-data

    .line 237
    :array_a
    .array-data 0x4
        0x9ct 0x0t 0x4t 0x1t
        0x9dt 0x0t 0x4t 0x1t
        0x9ft 0x0t 0x4t 0x1t
        0x9bt 0x0t 0x4t 0x1t
        0x94t 0x0t 0x4t 0x1t
        0x96t 0x0t 0x4t 0x1t
        0x98t 0x0t 0x4t 0x1t
        0x9at 0x0t 0x4t 0x1t
        0x83t 0x0t 0x4t 0x1t
        0x84t 0x0t 0x4t 0x1t
        0x85t 0x0t 0x4t 0x1t
        0x86t 0x0t 0x4t 0x1t
        0x88t 0x0t 0x4t 0x1t
        0x89t 0x0t 0x4t 0x1t
        0x8at 0x0t 0x4t 0x1t
        0x87t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assign(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .parameter "lval"
    .parameter "rval"

    .prologue
    .line 945
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 946
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 947
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 970
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 971
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 994
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 29
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timeZone"

    .prologue
    .line 1154
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    .line 1155
    .local v18, res:Landroid/content/res/Resources;
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 1156
    .local v19, showTime:Z
    :goto_0
    and-int/lit8 v4, p6, 0x2

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 1157
    .local v20, showWeekDay:Z
    :goto_1
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 1158
    .local v21, showYear:Z
    :goto_2
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 1159
    .local v16, noYear:Z
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move v4, v0

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v7, v4

    .line 1160
    .local v7, useUTC:Z
    :goto_4
    const v4, 0x88000

    and-int v4, v4, p6

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move v5, v4

    .line 1161
    .local v5, abbrevWeekDay:Z
    :goto_5
    const/high16 v4, 0x9

    and-int v4, v4, p6

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    .line 1162
    .local v4, abbrevMonth:Z
    :goto_6
    and-int/lit8 v6, p6, 0x20

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    move v14, v6

    .line 1163
    .local v14, noMonthDay:Z
    :goto_7
    const/high16 v6, 0x2

    and-int v6, v6, p6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    move/from16 v17, v6

    .line 1165
    .local v17, numericDate:Z
    :goto_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "zh"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 1170
    .local v11, isChinese:Z
    cmp-long v6, p2, p4

    if-nez v6, :cond_c

    const/4 v6, 0x1

    move v12, v6

    .line 1173
    .local v12, isInstant:Z
    :goto_9
    if-eqz p7, :cond_d

    .line 1174
    new-instance v6, Landroid/text/format/Time;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v6, startDate:Landroid/text/format/Time;
    move-object/from16 v22, v6

    .line 1180
    .end local v6           #startDate:Landroid/text/format/Time;
    .local v22, startDate:Landroid/text/format/Time;
    :goto_a
    move-object/from16 v0, v22

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1184
    if-eqz v12, :cond_f

    .line 1185
    move-object/from16 p3, v22

    .line 1186
    .end local p2
    .local p3, endDate:Landroid/text/format/Time;
    const/16 p2, 0x0

    .local p2, dayDistance:I
    move-object/from16 p7, p3

    .line 1215
    .end local p3           #endDate:Landroid/text/format/Time;
    .local p7, endDate:Landroid/text/format/Time;
    :goto_b
    if-nez v12, :cond_1

    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p3, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 p4, v0

    .end local p4
    or-int p3, p3, p4

    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 p4, v0

    or-int p3, p3, p4

    if-nez p3, :cond_1

    if-eqz v19, :cond_0

    const/16 p3, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    if-gt v0, v1, :cond_1

    .line 1218
    :cond_0
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 p2, v0

    .end local p2           #dayDistance:I
    const/16 p3, 0x1

    sub-int p2, p2, p3

    move/from16 v0, p2

    move-object/from16 v1, p7

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1219
    const/16 p2, 0x1

    move-object/from16 v0, p7

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1222
    :cond_1
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v23, v0

    .line 1223
    .local v23, startDay:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v24, v0

    .line 1224
    .local v24, startMonthNum:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v28, v0

    .line 1226
    .local v28, startYear:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v6, v0

    .line 1227
    .local v6, endDay:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v7, v0

    .line 1228
    .local v7, endMonthNum:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v10, v0

    .line 1230
    .local v10, endYear:I
    const-string p3, ""

    .line 1231
    .local p3, startWeekDayString:Ljava/lang/String;
    const-string p2, ""

    .line 1232
    .local p2, endWeekDayString:Ljava/lang/String;
    if-eqz v20, :cond_60

    .line 1233
    const-string p2, ""

    .line 1234
    .local p2, weekDayFormat:Ljava/lang/String;
    if-eqz v5, :cond_12

    .line 1235
    const-string p2, "%a"

    .line 1239
    :goto_c
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1240
    if-eqz v12, :cond_13

    move-object/from16 p2, p3

    .local p2, endWeekDayString:Ljava/lang/String;
    :goto_d
    move-object/from16 v9, p2

    .end local p2           #endWeekDayString:Ljava/lang/String;
    .local v9, endWeekDayString:Ljava/lang/String;
    move-object/from16 v27, p3

    .line 1243
    .end local p3           #startWeekDayString:Ljava/lang/String;
    .local v27, startWeekDayString:Ljava/lang/String;
    :goto_e
    const-string p3, ""

    .line 1244
    .local p3, startTimeString:Ljava/lang/String;
    const-string p2, ""

    .line 1245
    .local p2, endTimeString:Ljava/lang/String;
    if-eqz v19, :cond_5f

    .line 1246
    const-string p2, ""

    .line 1247
    .local p2, startTimeFormat:Ljava/lang/String;
    const-string v8, ""

    .line 1248
    .local v8, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 p2, v0

    if-eqz p2, :cond_14

    .end local p2           #startTimeFormat:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 p3, p2

    .line 1249
    .local p3, force24Hour:Z
    :goto_f
    and-int/lit8 p2, p6, 0x40

    if-eqz p2, :cond_15

    const/16 p2, 0x1

    .line 1251
    .local p2, force12Hour:Z
    :goto_10
    if-eqz p3, :cond_16

    .line 1252
    const/16 p2, 0x1

    .line 1263
    .local p2, use24Hour:Z
    :goto_11
    if-eqz p2, :cond_1a

    .line 1264
    const p2, 0x104006d

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #use24Hour:Z
    move-result-object p2

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p2, endTimeFormat:Ljava/lang/String;
    move-object/from16 p3, p2

    .line 1336
    .end local v5           #abbrevWeekDay:Z
    .local p3, startTimeFormat:Ljava/lang/String;
    :goto_12
    if-eqz v11, :cond_2

    .line 1337
    const-string p4, "%p"

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p5, v0

    invoke-static/range {p5 .. p5}, Ljava/text/SimpleDateFormat;->getChineseAMPMString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual/range {p3 .. p5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1340
    :cond_2
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1341
    .local p3, startTimeString:Ljava/lang/String;
    if-eqz v12, :cond_30

    move-object/from16 p2, p3

    .local p2, endTimeString:Ljava/lang/String;
    :goto_13
    move-object/from16 p4, p2

    .end local p2           #endTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    move-object/from16 v11, p3

    .line 1348
    .end local p3           #startTimeString:Ljava/lang/String;
    .local v11, startTimeString:Ljava/lang/String;
    :goto_14
    if-eqz v21, :cond_31

    move/from16 v5, v21

    .line 1365
    .end local v21           #showYear:Z
    .end local p0
    .local v5, showYear:I
    :goto_15
    if-eqz v17, :cond_35

    .line 1366
    const p0, 0x1040072

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 1397
    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    :goto_16
    if-eqz v20, :cond_3e

    .line 1398
    if-eqz v19, :cond_3d

    .line 1399
    const p0, 0x104008b

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .line 1411
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    :goto_17
    if-eqz v14, :cond_40

    move/from16 v0, v24

    move v1, v7

    if-ne v0, v1, :cond_40

    .line 1413
    const-string p0, "%s"

    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    .end local p4           #endTimeString:Ljava/lang/String;
    const/16 p5, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    aput-object p2, p4, p5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .line 1549
    .end local v4           #abbrevMonth:Z
    .end local v10           #endYear:I
    .end local p1
    .end local p3           #fullFormat:Ljava/lang/String;
    .end local p6
    .end local p7           #endDate:Landroid/text/format/Time;
    .restart local p0       #fullFormat:Ljava/lang/String;
    :goto_18
    return-object p1

    .line 1155
    .end local v5           #showYear:I
    .end local v6           #endDay:I
    .end local v7           #endMonthNum:I
    .end local v9           #endWeekDayString:Ljava/lang/String;
    .end local v11           #startTimeString:Ljava/lang/String;
    .end local v12           #isInstant:Z
    .end local v14           #noMonthDay:Z
    .end local v16           #noYear:Z
    .end local v17           #numericDate:Z
    .end local v19           #showTime:Z
    .end local v20           #showWeekDay:Z
    .end local v22           #startDate:Landroid/text/format/Time;
    .end local v23           #startDay:I
    .end local v24           #startMonthNum:I
    .end local v27           #startWeekDayString:Ljava/lang/String;
    .end local v28           #startYear:I
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p2, startMillis:J
    .local p4, endMillis:J
    .restart local p6
    .local p7, timeZone:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    move/from16 v19, v4

    goto/16 :goto_0

    .line 1156
    .restart local v19       #showTime:Z
    :cond_4
    const/4 v4, 0x0

    move/from16 v20, v4

    goto/16 :goto_1

    .line 1157
    .restart local v20       #showWeekDay:Z
    :cond_5
    const/4 v4, 0x0

    move/from16 v21, v4

    goto/16 :goto_2

    .line 1158
    .restart local v21       #showYear:Z
    :cond_6
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_3

    .line 1159
    .restart local v16       #noYear:Z
    :cond_7
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_4

    .line 1160
    .local v7, useUTC:Z
    :cond_8
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_5

    .line 1161
    .local v5, abbrevWeekDay:Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1162
    .restart local v4       #abbrevMonth:Z
    :cond_a
    const/4 v6, 0x0

    move v14, v6

    goto/16 :goto_7

    .line 1163
    .restart local v14       #noMonthDay:Z
    :cond_b
    const/4 v6, 0x0

    move/from16 v17, v6

    goto/16 :goto_8

    .line 1170
    .local v11, isChinese:Z
    .restart local v17       #numericDate:Z
    :cond_c
    const/4 v6, 0x0

    move v12, v6

    goto/16 :goto_9

    .line 1175
    .restart local v12       #isInstant:Z
    :cond_d
    if-eqz v7, :cond_e

    .line 1176
    new-instance v6, Landroid/text/format/Time;

    const-string v8, "UTC"

    invoke-direct {v6, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v6, startDate:Landroid/text/format/Time;
    move-object/from16 v22, v6

    .end local v6           #startDate:Landroid/text/format/Time;
    .restart local v22       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1178
    .end local v22           #startDate:Landroid/text/format/Time;
    :cond_e
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .restart local v6       #startDate:Landroid/text/format/Time;
    move-object/from16 v22, v6

    .end local v6           #startDate:Landroid/text/format/Time;
    .restart local v22       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1188
    :cond_f
    if-eqz p7, :cond_10

    .line 1189
    new-instance v6, Landroid/text/format/Time;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v6, endDate:Landroid/text/format/Time;
    move-object/from16 p7, v6

    .line 1195
    .end local v6           #endDate:Landroid/text/format/Time;
    .local p7, endDate:Landroid/text/format/Time;
    :goto_19
    move-object/from16 v0, p7

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1196
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v6, v0

    move-wide/from16 v0, p2

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p3

    .line 1197
    .end local p2           #startMillis:J
    .local p3, startJulianDay:I
    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v6, v0

    move-wide/from16 v0, p4

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p2

    .line 1198
    .local p2, endJulianDay:I
    sub-int p2, p2, p3

    .local p2, dayDistance:I
    goto/16 :goto_b

    .line 1190
    .end local p3           #startJulianDay:I
    .local p2, startMillis:J
    .local p7, timeZone:Ljava/lang/String;
    :cond_10
    if-eqz v7, :cond_11

    .line 1191
    new-instance p7, Landroid/text/format/Time;

    .end local p7           #timeZone:Ljava/lang/String;
    const-string v6, "UTC"

    move-object/from16 v0, p7

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local p7, endDate:Landroid/text/format/Time;
    goto :goto_19

    .line 1193
    .local p7, timeZone:Ljava/lang/String;
    :cond_11
    new-instance p7, Landroid/text/format/Time;

    .end local p7           #timeZone:Ljava/lang/String;
    invoke-direct/range {p7 .. p7}, Landroid/text/format/Time;-><init>()V

    .local p7, endDate:Landroid/text/format/Time;
    goto :goto_19

    .line 1237
    .end local p4           #endMillis:J
    .local v6, endDay:I
    .local v7, endMonthNum:I
    .restart local v10       #endYear:I
    .restart local v23       #startDay:I
    .restart local v24       #startMonthNum:I
    .restart local v28       #startYear:I
    .local p2, weekDayFormat:Ljava/lang/String;
    .local p3, startWeekDayString:Ljava/lang/String;
    :cond_12
    const-string p2, "%A"

    goto/16 :goto_c

    .line 1240
    :cond_13
    move-object/from16 v0, p7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_d

    .line 1248
    .end local p2           #weekDayFormat:Ljava/lang/String;
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .restart local v9       #endWeekDayString:Ljava/lang/String;
    .restart local v27       #startWeekDayString:Ljava/lang/String;
    .local p3, startTimeString:Ljava/lang/String;
    :cond_14
    const/16 p2, 0x0

    move/from16 p3, p2

    goto/16 :goto_f

    .line 1249
    .local p3, force24Hour:Z
    :cond_15
    const/16 p2, 0x0

    goto/16 :goto_10

    .line 1253
    .local p2, force12Hour:Z
    :cond_16
    if-eqz p2, :cond_17

    .line 1254
    const/16 p2, 0x0

    .local p2, use24Hour:Z
    goto/16 :goto_11

    .line 1256
    .local p2, force12Hour:Z
    :cond_17
    if-nez p0, :cond_18

    .line 1258
    invoke-static {}, Landroid/app/ActivityThread;->currentMainActivityThread()Landroid/app/ActivityThread;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1261
    .restart local p0       #context:Landroid/content/Context;
    :cond_18
    if-nez p0, :cond_19

    const/16 p2, 0x0

    .local p2, use24Hour:Z
    :goto_1a
    goto/16 :goto_11

    .local p2, force12Hour:Z
    :cond_19
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    goto :goto_1a

    .line 1268
    .local p2, use24Hour:Z
    :cond_1a
    const p2, 0x84000

    and-int p2, p2, p6

    if-eqz p2, :cond_1e

    .end local p2           #use24Hour:Z
    const/16 p2, 0x1

    .line 1269
    .local p2, abbrevTime:Z
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 p3, v0

    if-eqz p3, :cond_1f

    .end local p3           #force24Hour:Z
    if-nez v11, :cond_1f

    const/16 p3, 0x1

    .line 1270
    .local p3, capAMPM:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 p4, v0

    if-nez p4, :cond_1b

    if-eqz v11, :cond_20

    :cond_1b
    const/16 p4, 0x1

    move/from16 v15, p4

    .line 1271
    .local v15, noNoon:Z
    :goto_1d
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 p4, v0

    if-eqz p4, :cond_21

    const/16 p4, 0x1

    move/from16 p5, p4

    .line 1272
    .local p5, capNoon:Z
    :goto_1e
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 p4, v0

    if-nez p4, :cond_1c

    if-eqz v11, :cond_22

    :cond_1c
    const/16 p4, 0x1

    move/from16 v13, p4

    .line 1273
    .local v13, noMidnight:Z
    :goto_1f
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 p4, v0

    if-eqz p4, :cond_23

    const/16 p4, 0x1

    .line 1275
    .local p4, capMidnight:Z
    :goto_20
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    .end local v5           #abbrevWeekDay:Z
    if-nez v5, :cond_24

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_24

    const/4 v5, 0x1

    move/from16 v25, v5

    .line 1276
    .local v25, startOnTheHour:Z
    :goto_21
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    if-nez v5, :cond_25

    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_25

    const/4 v5, 0x1

    .line 1277
    .local v5, endOnTheHour:Z
    :goto_22
    if-eqz p2, :cond_27

    if-eqz v25, :cond_27

    .line 1278
    if-eqz p3, :cond_26

    .line 1279
    const v26, 0x10402a9

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1295
    .local v26, startTimeFormat:Ljava/lang/String;
    :goto_23
    if-nez v12, :cond_5e

    .line 1296
    if-eqz p2, :cond_2a

    if-eqz v5, :cond_2a

    .line 1297
    if-eqz p3, :cond_29

    .line 1298
    const p2, 0x10402a9

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #abbrevTime:Z
    move-result-object p2

    .line 1310
    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p2, endTimeFormat:Ljava/lang/String;
    :goto_24
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p3, v0

    .end local p3           #capAMPM:Z
    const/16 v8, 0xc

    move/from16 v0, p3

    move v1, v8

    if-ne v0, v1, :cond_2d

    if-eqz v5, :cond_2d

    if-nez v15, :cond_2d

    .line 1311
    if-eqz p5, :cond_2c

    .line 1312
    const p2, 0x10402dc

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #endTimeFormat:Ljava/lang/String;
    move-result-object p2

    .line 1325
    .restart local p2       #endTimeFormat:Ljava/lang/String;
    :cond_1d
    :goto_25
    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p3, v0

    const/16 p4, 0xc

    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_5d

    .end local p4           #capMidnight:Z
    if-eqz v25, :cond_5d

    if-nez v15, :cond_5d

    .line 1326
    if-eqz p5, :cond_2f

    .line 1327
    const p3, 0x10402dc

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .end local v26           #startTimeFormat:Ljava/lang/String;
    .local p3, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_12

    .line 1268
    .end local v13           #noMidnight:Z
    .end local v15           #noNoon:Z
    .end local v25           #startOnTheHour:Z
    .end local p2           #endTimeFormat:Ljava/lang/String;
    .end local p5           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .local p3, force24Hour:Z
    :cond_1e
    const/16 p2, 0x0

    goto/16 :goto_1b

    .line 1269
    .end local p3           #force24Hour:Z
    .local p2, abbrevTime:Z
    :cond_1f
    const/16 p3, 0x0

    goto/16 :goto_1c

    .line 1270
    .local p3, capAMPM:Z
    :cond_20
    const/16 p4, 0x0

    move/from16 v15, p4

    goto/16 :goto_1d

    .line 1271
    .restart local v15       #noNoon:Z
    :cond_21
    const/16 p4, 0x0

    move/from16 p5, p4

    goto/16 :goto_1e

    .line 1272
    .restart local p5       #capNoon:Z
    :cond_22
    const/16 p4, 0x0

    move/from16 v13, p4

    goto/16 :goto_1f

    .line 1273
    .restart local v13       #noMidnight:Z
    :cond_23
    const/16 p4, 0x0

    goto/16 :goto_20

    .line 1275
    .end local v5           #abbrevWeekDay:Z
    .restart local p4       #capMidnight:Z
    :cond_24
    const/4 v5, 0x0

    move/from16 v25, v5

    goto/16 :goto_21

    .line 1276
    .restart local v25       #startOnTheHour:Z
    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_22

    .line 1281
    .local v5, endOnTheHour:Z
    :cond_26
    const v26, 0x10402a8

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .restart local v26       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_23

    .line 1284
    .end local v26           #startTimeFormat:Ljava/lang/String;
    :cond_27
    if-eqz p3, :cond_28

    .line 1285
    const v26, 0x104006f

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .restart local v26       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_23

    .line 1287
    .end local v26           #startTimeFormat:Ljava/lang/String;
    :cond_28
    const v26, 0x104006e

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .restart local v26       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_23

    .line 1300
    :cond_29
    const p2, 0x10402a8

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #abbrevTime:Z
    move-result-object p2

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p2, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1303
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .local p2, abbrevTime:Z
    :cond_2a
    if-eqz p3, :cond_2b

    .line 1304
    const p2, 0x104006f

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #abbrevTime:Z
    move-result-object p2

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p2, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1306
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .local p2, abbrevTime:Z
    :cond_2b
    const p2, 0x104006e

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #abbrevTime:Z
    move-result-object p2

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p2, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1314
    .end local p3           #capAMPM:Z
    :cond_2c
    const p2, 0x10402db

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #endTimeFormat:Ljava/lang/String;
    move-result-object p2

    .restart local p2       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_25

    .line 1316
    :cond_2d
    move-object/from16 v0, p7

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p3, v0

    if-nez p3, :cond_1d

    if-eqz v5, :cond_1d

    if-nez v13, :cond_1d

    .line 1317
    if-eqz p4, :cond_2e

    .line 1318
    const p2, 0x10402de

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #endTimeFormat:Ljava/lang/String;
    move-result-object p2

    .restart local p2       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_25

    .line 1320
    :cond_2e
    const p2, 0x10402dd

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #endTimeFormat:Ljava/lang/String;
    move-result-object p2

    .restart local p2       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_25

    .line 1329
    .end local p4           #capMidnight:Z
    :cond_2f
    const p3, 0x10402db

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .end local v26           #startTimeFormat:Ljava/lang/String;
    .local p3, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_12

    .line 1341
    .end local v5           #endOnTheHour:Z
    .end local v13           #noMidnight:Z
    .end local v15           #noNoon:Z
    .end local v25           #startOnTheHour:Z
    .end local p5           #capNoon:Z
    .local p3, startTimeString:Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_13

    .line 1352
    .end local p2           #endTimeFormat:Ljava/lang/String;
    .end local p3           #startTimeString:Ljava/lang/String;
    .local v11, startTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    :cond_31
    if-eqz v16, :cond_32

    .line 1354
    const/16 p0, 0x0

    .end local v21           #showYear:Z
    .local p0, showYear:Z
    move/from16 v5, p0

    .local v5, showYear:I
    goto/16 :goto_15

    .line 1355
    .end local v5           #showYear:I
    .restart local v21       #showYear:Z
    .local p0, context:Landroid/content/Context;
    :cond_32
    move/from16 v0, v28

    move v1, v10

    if-eq v0, v1, :cond_33

    .line 1356
    const/16 p0, 0x1

    .end local v21           #showYear:Z
    .local p0, showYear:Z
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_15

    .line 1359
    .end local v5           #showYear:I
    .restart local v21       #showYear:Z
    .local p0, context:Landroid/content/Context;
    :cond_33
    new-instance p0, Landroid/text/format/Time;

    .end local p0           #context:Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Landroid/text/format/Time;-><init>()V

    .line 1360
    .local p0, currentTime:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Landroid/text/format/Time;->setToNow()V

    .line 1361
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 p0, v0

    .end local p0           #currentTime:Landroid/text/format/Time;
    move/from16 v0, v28

    move/from16 v1, p0

    if-eq v0, v1, :cond_34

    const/16 p0, 0x1

    .end local v21           #showYear:Z
    .local p0, showYear:Z
    :goto_26
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_15

    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v21       #showYear:Z
    :cond_34
    const/16 p0, 0x0

    goto :goto_26

    .line 1367
    .end local v21           #showYear:Z
    .restart local v5       #showYear:I
    :cond_35
    if-eqz v5, :cond_39

    .line 1368
    if-eqz v4, :cond_37

    .line 1369
    if-eqz v14, :cond_36

    .line 1370
    const p0, 0x1040080

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1372
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_36
    const p0, 0x104007a

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1375
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_37
    if-eqz v14, :cond_38

    .line 1376
    const p0, 0x104007d

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1378
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_38
    const p0, 0x1040075

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1382
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_39
    if-eqz v4, :cond_3b

    .line 1383
    if-eqz v14, :cond_3a

    .line 1384
    const p0, 0x104007f

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1386
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_3a
    const p0, 0x104007e

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1389
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_3b
    if-eqz v14, :cond_3c

    .line 1390
    const p0, 0x104007c

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1392
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_3c
    const p0, 0x104007b

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1401
    :cond_3d
    const p0, 0x104008c

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    goto/16 :goto_17

    .line 1404
    .end local p3           #fullFormat:Ljava/lang/String;
    :cond_3e
    if-eqz v19, :cond_3f

    .line 1405
    const p0, 0x104008d

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    goto/16 :goto_17

    .line 1407
    .end local p3           #fullFormat:Ljava/lang/String;
    :cond_3f
    const p0, 0x1040082

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    goto/16 :goto_17

    .line 1416
    :cond_40
    move/from16 v0, v28

    move v1, v10

    if-ne v0, v1, :cond_41

    if-eqz v14, :cond_42

    .line 1420
    :cond_41
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 1421
    .local p5, startDateString:Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1425
    .local p0, endDateString:Ljava/lang/String;
    const/16 p2, 0x6

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p6, 0x0

    aput-object v27, p2, p6

    .end local p6
    const/16 p6, 0x1

    aput-object p5, p2, p6

    const/16 p5, 0x2

    aput-object v11, p2, p5

    .end local p5           #startDateString:Ljava/lang/String;
    const/16 p5, 0x3

    aput-object v9, p2, p5

    const/16 p5, 0x4

    aput-object p0, p2, p5

    const/16 p0, 0x5

    aput-object p4, p2, p0

    .end local p0           #endDateString:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1432
    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p6
    :cond_42
    if-eqz v17, :cond_47

    .line 1433
    const-string p0, "%m"

    .line 1440
    .local p0, monthFormat:Ljava/lang/String;
    :goto_27
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1441
    .local v8, startMonthString:Ljava/lang/String;
    const-string p3, "%-d"

    .end local p3           #fullFormat:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1442
    .local v4, startMonthDayString:Ljava/lang/String;
    const-string p3, "%Y"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1444
    .local v10, startYearString:Ljava/lang/String;
    if-eqz v12, :cond_49

    const/16 p0, 0x0

    move-object/from16 p3, p0

    .line 1445
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    :goto_28
    if-eqz v12, :cond_4a

    const/16 p0, 0x0

    .line 1446
    .local p0, endMonthDayString:Ljava/lang/String;
    :goto_29
    if-eqz v12, :cond_4b

    const/16 p5, 0x0

    .line 1448
    .local p5, endYearString:Ljava/lang/String;
    :goto_2a
    move/from16 v0, v24

    move v1, v7

    if-eq v0, v1, :cond_4c

    .line 1454
    const/16 p2, 0x0

    .line 1455
    .local p2, index:I
    if-eqz v20, :cond_43

    const/16 p2, 0x1

    .line 1456
    :cond_43
    if-eqz v5, :cond_44

    add-int/lit8 p2, p2, 0x2

    .line 1457
    :cond_44
    if-eqz v19, :cond_45

    add-int/lit8 p2, p2, 0x4

    .line 1458
    :cond_45
    if-eqz v17, :cond_46

    add-int/lit8 p2, p2, 0x8

    .line 1459
    :cond_46
    sget-object p6, Landroid/text/format/DateUtils;->sameYearTable:[I

    .end local p6
    aget p2, p6, p2

    .line 1460
    .local p2, resId:I
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1464
    .local p2, fullFormat:Ljava/lang/String;
    const/16 p6, 0xa

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p6, v0

    const/16 p7, 0x0

    aput-object v27, p6, p7

    .end local p7           #endDate:Landroid/text/format/Time;
    const/16 p7, 0x1

    aput-object v8, p6, p7

    const/16 p7, 0x2

    aput-object v4, p6, p7

    const/16 p7, 0x3

    aput-object v10, p6, p7

    const/16 p7, 0x4

    aput-object v11, p6, p7

    const/16 p7, 0x5

    aput-object v9, p6, p7

    const/16 p7, 0x6

    aput-object p3, p6, p7

    const/16 p3, 0x7

    aput-object p0, p6, p3

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p5, p6, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p4, p6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1434
    .end local v8           #startMonthString:Ljava/lang/String;
    .end local p0           #fullFormat:Ljava/lang/String;
    .end local p5           #endYearString:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .local v10, endYear:I
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    .restart local p6
    .restart local p7       #endDate:Landroid/text/format/Time;
    :cond_47
    if-eqz v4, :cond_48

    .line 1435
    const p0, 0x10400a1

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, monthFormat:Ljava/lang/String;
    goto/16 :goto_27

    .line 1438
    .end local p0           #monthFormat:Ljava/lang/String;
    :cond_48
    const-string p0, "%B"

    .restart local p0       #monthFormat:Ljava/lang/String;
    goto/16 :goto_27

    .line 1444
    .end local p3           #fullFormat:Ljava/lang/String;
    .local v4, startMonthDayString:Ljava/lang/String;
    .restart local v8       #startMonthString:Ljava/lang/String;
    .local v10, startYearString:Ljava/lang/String;
    :cond_49
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 p3, p0

    goto/16 :goto_28

    .line 1445
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    :cond_4a
    const-string p0, "%-d"

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_29

    .line 1446
    .local p0, endMonthDayString:Ljava/lang/String;
    :cond_4b
    const-string p5, "%Y"

    move-object/from16 v0, p7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_2a

    .line 1471
    .restart local p5       #endYearString:Ljava/lang/String;
    :cond_4c
    move/from16 v0, v23

    move v1, v6

    if-eq v0, v1, :cond_51

    .line 1473
    const/16 p2, 0x0

    .line 1474
    .local p2, index:I
    if-eqz v20, :cond_4d

    const/16 p2, 0x1

    .line 1475
    :cond_4d
    if-eqz v5, :cond_4e

    add-int/lit8 p2, p2, 0x2

    .line 1476
    :cond_4e
    if-eqz v19, :cond_4f

    add-int/lit8 p2, p2, 0x4

    .line 1477
    :cond_4f
    if-eqz v17, :cond_50

    add-int/lit8 p2, p2, 0x8

    .line 1478
    :cond_50
    sget-object p6, Landroid/text/format/DateUtils;->sameMonthTable:[I

    .end local p6
    aget p2, p6, p2

    .line 1479
    .local p2, resId:I
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1483
    .local p2, fullFormat:Ljava/lang/String;
    const/16 p6, 0xa

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p6, v0

    const/16 p7, 0x0

    aput-object v27, p6, p7

    .end local p7           #endDate:Landroid/text/format/Time;
    const/16 p7, 0x1

    aput-object v8, p6, p7

    const/16 p7, 0x2

    aput-object v4, p6, p7

    const/16 p7, 0x3

    aput-object v10, p6, p7

    const/16 p7, 0x4

    aput-object v11, p6, p7

    const/16 p7, 0x5

    aput-object v9, p6, p7

    const/16 p7, 0x6

    aput-object p3, p6, p7

    const/16 p3, 0x7

    aput-object p0, p6, p3

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p5, p6, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p4, p6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1491
    .local p0, endMonthDayString:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #endMonthString:Ljava/lang/String;
    .restart local p6
    .restart local p7       #endDate:Landroid/text/format/Time;
    :cond_51
    and-int/lit8 p0, p6, 0x10

    if-eqz p0, :cond_52

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x1

    .line 1494
    .local p0, showDate:Z
    :goto_2b
    if-nez v19, :cond_5c

    if-nez p0, :cond_5c

    if-nez v20, :cond_5c

    const/16 p0, 0x1

    move/from16 p5, p0

    .line 1497
    .end local p0           #showDate:Z
    .local p5, showDate:I
    :goto_2c
    const-string p0, ""

    .line 1498
    .local p0, timeString:Ljava/lang/String;
    if-eqz v19, :cond_5b

    .line 1501
    if-eqz v12, :cond_53

    .line 1504
    move-object/from16 p0, v11

    move-object/from16 p4, p0

    .line 1514
    .end local p0           #timeString:Ljava/lang/String;
    .end local p3           #endMonthString:Ljava/lang/String;
    .end local p6
    .local p4, timeString:Ljava/lang/String;
    :goto_2d
    const-string p3, ""

    .line 1515
    .local p3, fullFormat:Ljava/lang/String;
    const-string p0, ""

    .line 1516
    .local p0, dateString:Ljava/lang/String;
    if-eqz p5, :cond_57

    .line 1517
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1518
    if-eqz v20, :cond_55

    .line 1519
    if-eqz v19, :cond_54

    .line 1521
    const p2, 0x104008e

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .line 1549
    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    :goto_2e
    const/16 p3, 0x3

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p3, v0

    const/16 p5, 0x0

    aput-object p4, p3, p5

    .end local p5           #showDate:I
    const/16 p4, 0x1

    aput-object v27, p3, p4

    .end local p4           #timeString:Ljava/lang/String;
    const/16 p4, 0x2

    aput-object p0, p3, p4

    invoke-virtual/range {p1 .. p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .end local p0           #dateString:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1491
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    .local p5, endYearString:Ljava/lang/String;
    .restart local p6
    :cond_52
    const/16 p0, 0x0

    goto :goto_2b

    .line 1507
    .local p0, timeString:Ljava/lang/String;
    .local p5, showDate:I
    :cond_53
    const p0, 0x1040081

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #timeString:Ljava/lang/String;
    move-result-object p0

    .line 1509
    .local p0, timeFormat:Ljava/lang/String;
    const/16 p3, 0x2

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p3, v0

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p6, 0x0

    aput-object v11, p3, p6

    .end local p6
    const/16 p6, 0x1

    aput-object p4, p3, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, timeString:Ljava/lang/String;
    move-object/from16 p4, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p4, timeString:Ljava/lang/String;
    goto :goto_2d

    .line 1524
    .local p0, dateString:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    :cond_54
    const p2, 0x104008f

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto :goto_2e

    .line 1527
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_55
    if-eqz v19, :cond_56

    .line 1529
    const p2, 0x1040079

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto :goto_2e

    .line 1532
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_56
    const-string p2, "%s"

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    .end local p4           #timeString:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object p0, p4, p5

    .end local p5           #showDate:I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .end local p0           #dateString:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1535
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p4       #timeString:Ljava/lang/String;
    .restart local p5       #showDate:I
    :cond_57
    if-eqz v20, :cond_59

    .line 1536
    if-eqz v19, :cond_58

    .line 1538
    const p2, 0x1040090

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto/16 :goto_2e

    .line 1541
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_58
    const-string p0, "%s"

    .end local p0           #dateString:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p4, 0x0

    aput-object v27, p2, p4

    .end local p4           #timeString:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1543
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p4       #timeString:Ljava/lang/String;
    :cond_59
    if-eqz v19, :cond_5a

    .line 1544
    const-string p0, "%s"

    .end local p0           #dateString:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object p4, p2, p5

    .end local p5           #showDate:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p5       #showDate:I
    :cond_5a
    move-object/from16 p2, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto/16 :goto_2e

    .local p0, timeString:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    .restart local p6
    :cond_5b
    move-object/from16 p4, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p4, timeString:Ljava/lang/String;
    goto/16 :goto_2d

    .local p0, showDate:Z
    .local p4, endTimeString:Ljava/lang/String;
    .local p5, endYearString:Ljava/lang/String;
    :cond_5c
    move/from16 p5, p0

    .local p5, showDate:I
    goto/16 :goto_2c

    .end local v8           #startMonthString:Ljava/lang/String;
    .end local p3           #endMonthString:Ljava/lang/String;
    .end local p4           #endTimeString:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .local v5, endOnTheHour:Z
    .local v10, endYear:I
    .local v11, isChinese:Z
    .restart local v13       #noMidnight:Z
    .restart local v15       #noNoon:Z
    .restart local v21       #showYear:Z
    .restart local v25       #startOnTheHour:Z
    .restart local v26       #startTimeFormat:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p2, endTimeFormat:Ljava/lang/String;
    .local p5, capNoon:Z
    :cond_5d
    move-object/from16 p3, v26

    .end local v26           #startTimeFormat:Ljava/lang/String;
    .local p3, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_12

    .local v8, endTimeFormat:Ljava/lang/String;
    .restart local v26       #startTimeFormat:Ljava/lang/String;
    .local p2, abbrevTime:Z
    .local p3, capAMPM:Z
    .local p4, capMidnight:Z
    :cond_5e
    move-object/from16 p2, v8

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p2, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_25

    .end local v13           #noMidnight:Z
    .end local v15           #noNoon:Z
    .end local v25           #startOnTheHour:Z
    .end local v26           #startTimeFormat:Ljava/lang/String;
    .end local p4           #capMidnight:Z
    .end local p5           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .local p2, endTimeString:Ljava/lang/String;
    .local p3, startTimeString:Ljava/lang/String;
    :cond_5f
    move-object/from16 p4, p2

    .end local p2           #endTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    move-object/from16 v11, p3

    .end local p3           #startTimeString:Ljava/lang/String;
    .local v11, startTimeString:Ljava/lang/String;
    goto/16 :goto_14

    .end local v9           #endWeekDayString:Ljava/lang/String;
    .end local v27           #startWeekDayString:Ljava/lang/String;
    .end local p4           #endTimeString:Ljava/lang/String;
    .local v11, isChinese:Z
    .local p2, endWeekDayString:Ljava/lang/String;
    .local p3, startWeekDayString:Ljava/lang/String;
    :cond_60
    move-object/from16 v9, p2

    .end local p2           #endWeekDayString:Ljava/lang/String;
    .restart local v9       #endWeekDayString:Ljava/lang/String;
    move-object/from16 v27, p3

    .end local p3           #startWeekDayString:Ljava/lang/String;
    .restart local v27       #startWeekDayString:Ljava/lang/String;
    goto/16 :goto_e
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 1595
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .parameter "elapsedSeconds"

    .prologue
    .line 660
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 14
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 671
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 673
    const-wide/16 v2, 0x0

    .line 674
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 675
    .local v4, minutes:J
    const-wide/16 v6, 0x0

    .line 677
    .local v6, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 678
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 679
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 681
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 682
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 683
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 685
    :cond_1
    move-wide v6, p1

    .line 687
    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_2

    .line 688
    .end local p1
    sget-object v1, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object p0

    .line 690
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_2
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 7
    .parameter "recycle"
    .parameter "format"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 732
    const-string v1, "%1$02d:%2$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 733
    move-object v0, p0

    .line 734
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 739
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    cmp-long v1, p2, v3

    if-gez v1, :cond_1

    .line 740
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    :goto_1
    rem-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 746
    cmp-long v1, p4, v3

    if-gez v1, :cond_2

    .line 747
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 751
    :goto_2
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 754
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 737
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 742
    :cond_1
    div-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 749
    :cond_2
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 754
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .locals 8
    .parameter "recycle"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 699
    const-string v1, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 700
    move-object v0, p0

    .line 701
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 706
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    cmp-long v1, p4, v3

    if-gez v1, :cond_1

    .line 709
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    :goto_1
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    cmp-long v1, p6, v3

    if-gez v1, :cond_2

    .line 716
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    :goto_2
    rem-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 704
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 711
    :cond_1
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 718
    :cond_2
    div-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 723
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 781
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 782
    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 783
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 784
    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 785
    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 789
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 792
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 796
    .local v0, f:Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 794
    .end local v0           #f:Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 3
    .parameter "ampm"

    .prologue
    .line 336
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 337
    .local v0, r:Landroid/content/res/Resources;
    sget-object v1, Landroid/text/format/DateUtils;->sAmPm:[I

    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .parameter "dayOfWeek"
    .parameter "abbrev"

    .prologue
    .line 316
    sparse-switch p1, :sswitch_data_0

    .line 322
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 325
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 326
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 317
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 318
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 319
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 320
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 321
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 316
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 356
    sparse-switch p1, :sswitch_data_0

    .line 362
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 365
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 366
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 357
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 358
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 359
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 360
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 361
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 356
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 7
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    or-int/lit8 v0, p7, 0x1

    const/high16 v1, 0x8

    or-int v6, v0, v1

    move-wide v0, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 4
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    .line 593
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 594
    .local v1, startTime:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 595
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 596
    .local v0, currentTime:Landroid/text/format/Time;
    invoke-virtual {v0, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 598
    iget-wide v1, v1, Landroid/text/format/Time;->gmtoff:J

    .end local v1           #startTime:Landroid/text/format/Time;
    invoke-static {p1, p2, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 599
    .local v1, startDay:I
    iget-wide v2, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 601
    .local v0, currentDay:I
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .end local v0           #currentDay:I
    move-result v0

    .line 602
    .local v0, days:I
    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    .end local p1
    const/4 p1, 0x1

    .line 604
    .local p1, past:Z
    :goto_0
    const/4 p2, 0x1

    if-ne v0, p2, :cond_2

    .line 605
    if-eqz p1, :cond_1

    .line 606
    const p1, 0x104006a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    .line 622
    .end local p0
    .end local p3
    :goto_1
    return-object p0

    .line 602
    .restart local p0
    .restart local p3
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 608
    .restart local p1       #past:Z
    :cond_1
    const p1, 0x104006c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_1

    .line 610
    .restart local p1       #past:Z
    :cond_2
    if-nez v0, :cond_3

    .line 611
    const p1, 0x104006b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_1

    .line 615
    .restart local p1       #past:Z
    :cond_3
    if-eqz p1, :cond_4

    .line 616
    const p1, 0x10f0004

    .line 621
    .local p1, resId:I
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    .line 622
    .local p0, format:Ljava/lang/String;
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .end local p1           #resId:I
    const/4 p2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3
    aput-object p3, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 618
    .local p0, r:Landroid/content/res/Resources;
    .local p1, past:Z
    .restart local p3
    :cond_4
    const p1, 0x10f0008

    .local p1, resId:I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "startTime"

    .prologue
    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    .line 426
    const/high16 v6, 0x8

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 8
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    .line 451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 452
    .local v6, r:Landroid/content/res/Resources;
    const/high16 v0, 0xc

    and-int/2addr v0, p6

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 454
    .local v0, abbrevRelative:Z
    :goto_0
    cmp-long v1, p2, p0

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    move v3, v1

    .line 455
    .local v3, past:Z
    :goto_1
    sub-long v1, p2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 457
    .local v1, duration:J
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v4, :cond_0

    .line 458
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 459
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 461
    :cond_0
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v4, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 462
    sget-object p2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .end local p2
    invoke-virtual {p2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 464
    const/4 v4, 0x0

    .line 465
    .local v4, result:Ljava/lang/String;
    const/4 v7, -0x1

    .line 466
    .local v7, resId:I
    const-wide/32 p2, 0xea60

    div-long p2, v1, p2

    .line 467
    .local p2, count:J
    const-wide/16 v1, 0x3c

    cmp-long v1, p2, v1

    if-gtz v1, :cond_12

    .end local v1           #duration:J
    const-wide/32 v1, 0x36ee80

    cmp-long v1, p4, v1

    if-gtz v1, :cond_12

    .line 468
    if-eqz v3, :cond_a

    .line 469
    if-eqz v0, :cond_6

    .line 470
    const-wide/16 p0, 0x3c

    cmp-long p0, p2, p0

    if-nez p0, :cond_3

    .line 472
    .end local p0
    const p0, 0x10f0017

    .end local v7           #resId:I
    .local p0, resId:I
    move-object p1, v4

    .line 546
    .end local v0           #abbrevRelative:Z
    .end local v3           #past:Z
    .end local v4           #result:Ljava/lang/String;
    .end local p4
    .local p1, result:Ljava/lang/String;
    :goto_2
    const/4 p4, -0x1

    if-eq p0, p4, :cond_18

    .line 547
    long-to-int p1, p2

    invoke-virtual {v6, p0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .end local p1           #result:Ljava/lang/String;
    move-result-object p0

    .line 548
    .local p0, format:Ljava/lang/String;
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2           #count:J
    aput-object p2, p1, p4

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 550
    .local p0, result:Ljava/lang/String;
    :goto_3
    return-object p0

    .line 452
    .local p0, time:J
    .local p2, now:J
    .restart local p4
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 454
    .restart local v0       #abbrevRelative:Z
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 473
    .end local p0           #time:J
    .restart local v3       #past:Z
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p2, count:J
    :cond_3
    const-wide/16 p0, 0x1e

    cmp-long p0, p2, p0

    if-nez p0, :cond_4

    .line 475
    const p0, 0x10f0018

    .end local v7           #resId:I
    .local p0, resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 476
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_4
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_5

    .line 478
    const p0, 0x10f0013

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 480
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_5
    const p0, 0x10f000a

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 483
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p0, time:J
    :cond_6
    const-wide/16 p0, 0x3c

    cmp-long p0, p2, p0

    if-nez p0, :cond_7

    .line 485
    .end local p0           #time:J
    const p0, 0x10f0019

    .end local v7           #resId:I
    .local p0, resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 486
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_7
    const-wide/16 p0, 0x1e

    cmp-long p0, p2, p0

    if-nez p0, :cond_8

    .line 488
    const p0, 0x10f001a

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 489
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_8
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_9

    .line 491
    const p0, 0x10f0014

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 493
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_9
    const p0, 0x10f0001

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 497
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p0, time:J
    :cond_a
    if-eqz v0, :cond_e

    .line 498
    const-wide/16 p0, 0x3c

    cmp-long p0, p2, p0

    if-nez p0, :cond_b

    .line 500
    .end local p0           #time:J
    const p0, 0x10f001b

    .end local v7           #resId:I
    .local p0, resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 501
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_b
    const-wide/16 p0, 0x1e

    cmp-long p0, p2, p0

    if-nez p0, :cond_c

    .line 503
    const p0, 0x10f001c

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 504
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_c
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_d

    .line 506
    const p0, 0x10f0015

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto :goto_2

    .line 508
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_d
    const p0, 0x10f000e

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto/16 :goto_2

    .line 511
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p0, time:J
    :cond_e
    const-wide/16 p0, 0x3c

    cmp-long p0, p2, p0

    if-nez p0, :cond_f

    .line 513
    .end local p0           #time:J
    const p0, 0x10f001d

    .end local v7           #resId:I
    .local p0, resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto/16 :goto_2

    .line 514
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_f
    const-wide/16 p0, 0x1e

    cmp-long p0, p2, p0

    if-nez p0, :cond_10

    .line 516
    const p0, 0x10f001e

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto/16 :goto_2

    .line 517
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_10
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_11

    .line 519
    const p0, 0x10f0016

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto/16 :goto_2

    .line 521
    .end local p0           #resId:I
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    :cond_11
    const p0, 0x10f0006

    .end local v7           #resId:I
    .restart local p0       #resId:I
    move-object p1, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    goto/16 :goto_2

    .line 525
    .end local p1           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p0, time:J
    :cond_12
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .end local v0           #abbrevRelative:Z
    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_13

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->yearDay:I

    if-ne v0, v1, :cond_13

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p4, v0

    if-gez v0, :cond_13

    .line 527
    const/4 v0, 0x0

    or-int/lit8 v5, p6, 0x1

    move-wide v1, p0

    move-wide v3, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v3           #past:Z
    move-result-object p0

    .end local v4           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    move p0, v7

    .end local v7           #resId:I
    .local p0, resId:I
    goto/16 :goto_2

    .line 528
    .end local p1           #result:Ljava/lang/String;
    .restart local v3       #past:Z
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p0, time:J
    :cond_13
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_15

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p4, v0

    if-gez v0, :cond_15

    .line 529
    if-eqz v3, :cond_14

    .line 530
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const p5, 0x104006a

    invoke-virtual {v6, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/16 p5, 0x20

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 v0, 0x0

    or-int/lit8 v5, p6, 0x1

    move-wide v1, p0

    move-wide v3, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v3           #past:Z
    move-result-object p0

    .end local p0           #time:J
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v4           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    move p0, v7

    .end local v7           #resId:I
    .local p0, resId:I
    goto/16 :goto_2

    .line 533
    .end local p1           #result:Ljava/lang/String;
    .restart local v3       #past:Z
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p0, time:J
    .restart local p4
    :cond_14
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const p5, 0x104006c

    invoke-virtual {v6, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/16 p5, 0x20

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 v0, 0x0

    or-int/lit8 v5, p6, 0x1

    move-wide v1, p0

    move-wide v3, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v3           #past:Z
    move-result-object p0

    .end local p0           #time:J
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v4           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    move p0, v7

    .end local v7           #resId:I
    .local p0, resId:I
    goto/16 :goto_2

    .line 536
    .end local p1           #result:Ljava/lang/String;
    .restart local v3       #past:Z
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p0, time:J
    .restart local p4
    :cond_15
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_16

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v0

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v1

    if-ne v0, v1, :cond_16

    const-wide/32 v0, 0x240c8400

    cmp-long p4, p4, v0

    if-gez p4, :cond_16

    .line 538
    .end local p4
    const/4 v0, 0x0

    or-int/lit8 v5, p6, 0x3

    move-wide v1, p0

    move-wide v3, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v3           #past:Z
    move-result-object p0

    .end local v4           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    move p0, v7

    .end local v7           #resId:I
    .local p0, resId:I
    goto/16 :goto_2

    .line 539
    .end local p1           #result:Ljava/lang/String;
    .restart local v3       #past:Z
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p0, time:J
    :cond_16
    sget-object p4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget p4, p4, Landroid/text/format/Time;->year:I

    sget-object p5, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget p5, p5, Landroid/text/format/Time;->year:I

    if-ne p4, p5, :cond_17

    .line 541
    const/4 v0, 0x0

    or-int/lit8 v5, p6, 0x18

    move-wide v1, p0

    move-wide v3, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v3           #past:Z
    move-result-object p0

    .end local v4           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    move p0, v7

    .end local v7           #resId:I
    .local p0, resId:I
    goto/16 :goto_2

    .line 543
    .end local p1           #result:Ljava/lang/String;
    .restart local v3       #past:Z
    .restart local v4       #result:Ljava/lang/String;
    .restart local v7       #resId:I
    .local p0, time:J
    :cond_17
    const/4 v0, 0x0

    or-int/lit8 v5, p6, 0x14

    move-wide v1, p0

    move-wide v3, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v3           #past:Z
    move-result-object p0

    .end local v4           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #result:Ljava/lang/String;
    .restart local p1       #result:Ljava/lang/String;
    move p0, v7

    .end local v7           #resId:I
    .local p0, resId:I
    goto/16 :goto_2

    :cond_18
    move-object p0, p1

    .end local p1           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 1661
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 6
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    .line 1615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1616
    .local v0, now:J
    sub-long v2, v0, p1

    .line 1618
    .local v2, span:J
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v4, :cond_0

    .line 1619
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 1620
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 1623
    :cond_0
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1624
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .end local v0           #now:J
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1628
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_1

    .line 1630
    const/4 v5, 0x1

    .local v5, flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1631
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1632
    .end local p1
    .local p2, result:Ljava/lang/String;
    const p1, 0x10402cc

    .line 1646
    .local p1, prepositionId:I
    :goto_0
    if-eqz p3, :cond_3

    .line 1647
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1648
    .local p0, res:Landroid/content/res/Resources;
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1650
    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 1633
    .end local v5           #flags:I
    .local p0, c:Landroid/content/Context;
    .local p1, millis:J
    .restart local p3
    :cond_1
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-eq v0, v1, :cond_2

    .line 1635
    const v5, 0x20014

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1636
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1639
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x10402cb

    .line 1640
    .local p1, prepositionId:I
    goto :goto_0

    .line 1642
    .end local v5           #flags:I
    .end local p2           #result:Ljava/lang/String;
    .local p1, millis:J
    :cond_2
    const v5, 0x10010

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1643
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1644
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x10402cb

    .local p1, prepositionId:I
    goto :goto_0

    :cond_3
    move-object p0, p2

    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 389
    sparse-switch p1, :sswitch_data_0

    .line 396
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 399
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 400
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 390
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 391
    .restart local v0       #list:[I
    goto :goto_0

    .line 392
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 393
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 394
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 395
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 389
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static initFormatStrings()V
    .locals 2

    .prologue
    .line 626
    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 628
    monitor-exit v0

    .line 629
    return-void

    .line 628
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .prologue
    .line 632
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 633
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 634
    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 635
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 636
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    .line 637
    const v2, 0x10402df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 638
    const v2, 0x10402e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 640
    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6
    .parameter "when"

    .prologue
    .line 815
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 816
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 818
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 819
    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 820
    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 822
    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 823
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isUTC(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/16 v3, 0x5a

    const/4 v2, 0x1

    .line 835
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v2

    .line 842
    :goto_0
    return v0

    .line 838
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 840
    goto :goto_0

    .line 842
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .locals 1
    .parameter "zulu"

    .prologue
    .line 805
    if-eqz p0, :cond_0

    .line 806
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 808
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .locals 3
    .parameter "millis"

    .prologue
    .line 648
    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 650
    sget-object v1, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 651
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static toDigitChar(J)C
    .locals 2
    .parameter "digit"

    .prologue
    .line 759
    const-wide/16 v0, 0x30

    add-long/2addr v0, p0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "cal"

    .prologue
    .line 856
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 857
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 858
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 859
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8
    .parameter "cal"
    .parameter "sb"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 899
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 900
    .local v0, n:I
    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 901
    div-int/lit8 v0, v0, 0xa

    .line 902
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 903
    div-int/lit8 v0, v0, 0xa

    .line 904
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 905
    div-int/lit8 v0, v0, 0xa

    .line 906
    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 908
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 909
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 910
    div-int/lit8 v0, v0, 0xa

    .line 911
    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 913
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 914
    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 915
    div-int/lit8 v0, v0, 0xa

    .line 916
    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 918
    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 920
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 921
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 922
    div-int/lit8 v0, v0, 0xa

    .line 923
    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 925
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 926
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 927
    div-int/lit8 v0, v0, 0xa

    .line 928
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 930
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 931
    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 932
    div-int/lit8 v0, v0, 0xa

    .line 933
    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 935
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 3
    .parameter "cal"
    .parameter "zulu"

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 876
    if-eqz p1, :cond_0

    .line 877
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 878
    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 882
    :goto_0
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 880
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
