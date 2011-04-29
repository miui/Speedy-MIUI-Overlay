.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# instance fields
.field private m12Hours:[Ljava/lang/String;

.field private m24Hours:[Ljava/lang/String;

.field private mAmPmWheel:Landroid/widget/WheelView;

.field private mAmPms:[Ljava/lang/String;

.field private mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mHourWheel:Landroid/widget/WheelView;

.field private mHours:[Ljava/lang/String;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mMinuteWheel:Landroid/widget/WheelView;

.field private mMinutes:[Ljava/lang/String;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mPmText:Ljava/lang/String;

.field private mTimepicker:Landroid/widget/LinearLayout;

.field private mWheelItems:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v6, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 59
    iput v6, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    .line 60
    iput-boolean v7, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    .line 88
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 89
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090079

    invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/widget/TimePicker;->mWheelItems:I

    .line 93
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 94
    .local v1, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, dfsAmPm:[Ljava/lang/String;
    aget-object v4, v2, v6

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    .line 96
    aget-object v4, v2, v7

    iput-object v4, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    .line 98
    const v4, 0x1020237

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Landroid/widget/TimePicker;->mTimepicker:Landroid/widget/LinearLayout;

    .line 100
    const v4, 0x1020239

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/WheelView;

    iput-object v4, p0, Landroid/widget/TimePicker;->mHourWheel:Landroid/widget/WheelView;

    .line 101
    const v4, 0x102023a

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/WheelView;

    iput-object v4, p0, Landroid/widget/TimePicker;->mMinuteWheel:Landroid/widget/WheelView;

    .line 102
    const v4, 0x1020238

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/WheelView;

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmPmWheel:Landroid/widget/WheelView;

    .line 103
    invoke-direct {p0}, Landroid/widget/TimePicker;->setupWheels()V

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 106
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 107
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TimePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/TimePicker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$120(Landroid/widget/TimePicker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/TimePicker;->mHours:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method static synthetic access$502(Landroid/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/TimePicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinutes:[Ljava/lang/String;

    return-object v0
.end method

.method private setupHourWheel()V
    .locals 5

    .prologue
    const v4, 0x1090078

    .line 237
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourWheel:Landroid/widget/WheelView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TimePicker;->m12Hours:[Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget v2, p0, Landroid/widget/TimePicker;->mWheelItems:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/WheelView;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 239
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmWheel:Landroid/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/WheelView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Landroid/widget/TimePicker;->mTimepicker:Landroid/widget/LinearLayout;

    const v1, 0x1080406

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 241
    iget-object v0, p0, Landroid/widget/TimePicker;->m12Hours:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/TimePicker;->mHours:[Ljava/lang/String;

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourWheel:Landroid/widget/WheelView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TimePicker;->m24Hours:[Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget v2, p0, Landroid/widget/TimePicker;->mWheelItems:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/WheelView;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 244
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmWheel:Landroid/widget/WheelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/WheelView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Landroid/widget/TimePicker;->mTimepicker:Landroid/widget/LinearLayout;

    const v1, 0x1080405

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 246
    iget-object v0, p0, Landroid/widget/TimePicker;->m24Hours:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/TimePicker;->mHours:[Ljava/lang/String;

    goto :goto_0
.end method

.method private setupWheels()V
    .locals 8

    .prologue
    const v7, 0x1090078

    const/16 v6, 0x3c

    const/16 v5, 0x18

    const/16 v4, 0xc

    const/4 v3, 0x4

    .line 111
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TimePicker;->m12Hours:[Ljava/lang/String;

    .line 112
    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TimePicker;->m24Hours:[Ljava/lang/String;

    .line 113
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TimePicker;->mAmPms:[Ljava/lang/String;

    .line 114
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TimePicker;->mMinutes:[Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 116
    iget-object v1, p0, Landroid/widget/TimePicker;->m12Hours:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 119
    iget-object v1, p0, Landroid/widget/TimePicker;->m24Hours:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_2

    .line 122
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinutes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 125
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPms:[Ljava/lang/String;

    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    :goto_4
    aput-object v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 125
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_4

    .line 127
    :cond_4
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmWheel:Landroid/widget/WheelView;

    new-instance v2, Landroid/widget/TimePicker$1;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPms:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v7, v4}, Landroid/widget/TimePicker$1;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;I[Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/widget/WheelView;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 136
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmWheel:Landroid/widget/WheelView;

    new-instance v2, Landroid/widget/TimePicker$2;

    invoke-direct {v2, p0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/WheelView;->setOnWheelChangedListener(Landroid/widget/WheelView$OnWheelChangedListener;)V

    .line 159
    invoke-direct {p0}, Landroid/widget/TimePicker;->setupHourWheel()V

    .line 160
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourWheel:Landroid/widget/WheelView;

    new-instance v2, Landroid/widget/TimePicker$3;

    invoke-direct {v2, p0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/WheelView;->setOnWheelChangedListener(Landroid/widget/WheelView$OnWheelChangedListener;)V

    .line 176
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteWheel:Landroid/widget/WheelView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutes:[Ljava/lang/String;

    invoke-direct {v2, v3, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget v3, p0, Landroid/widget/TimePicker;->mWheelItems:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/WheelView;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 177
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteWheel:Landroid/widget/WheelView;

    new-instance v2, Landroid/widget/TimePicker$4;

    invoke-direct {v2, p0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/WheelView;->setOnWheelChangedListener(Landroid/widget/WheelView$OnWheelChangedListener;)V

    .line 184
    return-void
.end method

.method private updateHourDisplay()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 251
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 252
    .local v0, currentHour:I
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-nez v1, :cond_2

    .line 253
    if-le v0, v5, :cond_1

    add-int/lit8 v0, v0, -0xc

    .line 255
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourWheel:Landroid/widget/WheelView;

    sub-int v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/WheelView;->setWheelPosition(I)V

    .line 259
    :goto_1
    iget v1, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    if-ge v1, v5, :cond_3

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 260
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_4

    .line 261
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmWheel:Landroid/widget/WheelView;

    invoke-virtual {v1, v4}, Landroid/widget/WheelView;->setWheelPosition(I)V

    .line 265
    :goto_3
    return-void

    .line 254
    :cond_1
    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    .line 257
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourWheel:Landroid/widget/WheelView;

    invoke-virtual {v1, v0}, Landroid/widget/WheelView;->setWheelPosition(I)V

    goto :goto_1

    :cond_3
    move v1, v4

    .line 259
    goto :goto_2

    .line 263
    :cond_4
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmWheel:Landroid/widget/WheelView;

    invoke-virtual {v1, v3}, Landroid/widget/WheelView;->setWheelPosition(I)V

    goto :goto_3
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 270
    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xb

    iget v2, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 271
    const/16 v1, 0xc

    iget v2, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 273
    iget-object v1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget v2, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    iget v3, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-interface {v1, p0, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .parameter "currentHour"

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 195
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourDisplay()V

    .line 196
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateTime()V

    .line 197
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "currentMinute"

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    .line 201
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteWheel:Landroid/widget/WheelView;

    iget v1, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Landroid/widget/WheelView;->setWheelPosition(I)V

    .line 202
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateTime()V

    .line 203
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "is24HourView"

    .prologue
    .line 221
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 222
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    .line 223
    invoke-direct {p0}, Landroid/widget/TimePicker;->setupHourWheel()V

    .line 224
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourDisplay()V

    .line 225
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateTime()V

    .line 227
    :cond_0
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "onTimeChangedListener"

    .prologue
    .line 187
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 188
    return-void
.end method
