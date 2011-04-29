.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private mDay:I

.field private mDayWheel:Landroid/widget/WheelView;

.field private mDays:[Ljava/lang/String;

.field private mMaxDay:I

.field private mMonth:I

.field private mMonthWheel:Landroid/widget/WheelView;

.field private mMonths:[Ljava/lang/String;

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mWheelItems:I

.field private mYear:I

.field private mYearWheel:Landroid/widget/WheelView;

.field private mYears:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/16 v1, 0x76c

    iput v1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 52
    iput v2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 53
    iput v2, p0, Landroid/widget/DatePicker;->mDay:I

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/DatePicker;->mMaxDay:I

    .line 86
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 87
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090021

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/DatePicker;->mWheelItems:I

    .line 91
    const v1, 0x10201a3

    invoke-virtual {p0, v1}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/WheelView;

    iput-object v1, p0, Landroid/widget/DatePicker;->mYearWheel:Landroid/widget/WheelView;

    .line 92
    const v1, 0x10201a4

    invoke-virtual {p0, v1}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/WheelView;

    iput-object v1, p0, Landroid/widget/DatePicker;->mMonthWheel:Landroid/widget/WheelView;

    .line 93
    const v1, 0x10201a5

    invoke-virtual {p0, v1}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/WheelView;

    iput-object v1, p0, Landroid/widget/DatePicker;->mDayWheel:Landroid/widget/WheelView;

    .line 94
    invoke-direct {p0}, Landroid/widget/DatePicker;->setupWheels()V

    .line 95
    return-void
.end method

.method static synthetic access$002(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/DatePicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/DatePicker;->mYears:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDayWheel()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDate()V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Landroid/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/DatePicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Landroid/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/DatePicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/DatePicker;->mDays:[Ljava/lang/String;

    return-object v0
.end method

.method private setupWheels()V
    .locals 7

    .prologue
    const v6, 0x1090078

    const/16 v4, 0xc

    .line 106
    const/16 v2, 0xc9

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/widget/DatePicker;->mYears:[Ljava/lang/String;

    .line 107
    new-array v2, v4, [Ljava/lang/String;

    iput-object v2, p0, Landroid/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 109
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/widget/DatePicker;->mYears:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 110
    iget-object v2, p0, Landroid/widget/DatePicker;->mYears:[Ljava/lang/String;

    add-int/lit16 v3, v1, 0x76c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 113
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonths:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_1
    iget-object v2, p0, Landroid/widget/DatePicker;->mYearWheel:Landroid/widget/WheelView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/DatePicker;->mYears:[Ljava/lang/String;

    invoke-direct {v3, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget v4, p0, Landroid/widget/DatePicker;->mWheelItems:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/WheelView;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 117
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthWheel:Landroid/widget/WheelView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {v3, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget v4, p0, Landroid/widget/DatePicker;->mWheelItems:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/WheelView;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 120
    iget-object v2, p0, Landroid/widget/DatePicker;->mYearWheel:Landroid/widget/WheelView;

    new-instance v3, Landroid/widget/DatePicker$1;

    invoke-direct {v3, p0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/WheelView;->setOnWheelChangedListener(Landroid/widget/WheelView$OnWheelChangedListener;)V

    .line 129
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthWheel:Landroid/widget/WheelView;

    new-instance v3, Landroid/widget/DatePicker$2;

    invoke-direct {v3, p0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/WheelView;->setOnWheelChangedListener(Landroid/widget/WheelView$OnWheelChangedListener;)V

    .line 138
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayWheel:Landroid/widget/WheelView;

    new-instance v3, Landroid/widget/DatePicker$3;

    invoke-direct {v3, p0}, Landroid/widget/DatePicker$3;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/WheelView;->setOnWheelChangedListener(Landroid/widget/WheelView$OnWheelChangedListener;)V

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/DatePicker;->setDate(III)V

    .line 148
    return-void
.end method

.method private updateDate()V
    .locals 3

    .prologue
    .line 187
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    iget v1, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v2, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 188
    return-void
.end method

.method private updateDayWheel()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, cal:Ljava/util/Calendar;
    iget v3, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/4 v3, 0x2

    iget v4, p0, Landroid/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 212
    .local v2, max:I
    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    if-le v3, v2, :cond_0

    .line 213
    iput v2, p0, Landroid/widget/DatePicker;->mDay:I

    .line 216
    :cond_0
    iget v3, p0, Landroid/widget/DatePicker;->mMaxDay:I

    if-eq v2, v3, :cond_2

    .line 217
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/DatePicker;->mDays:[Ljava/lang/String;

    .line 218
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 219
    iget-object v3, p0, Landroid/widget/DatePicker;->mDays:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v3, p0, Landroid/widget/DatePicker;->mDayWheel:Landroid/widget/WheelView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1090078

    iget-object v7, p0, Landroid/widget/DatePicker;->mDays:[Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget v5, p0, Landroid/widget/DatePicker;->mWheelItems:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/WheelView;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 222
    iput v2, p0, Landroid/widget/DatePicker;->mMaxDay:I

    .line 225
    .end local v1           #i:I
    :cond_2
    iget-object v3, p0, Landroid/widget/DatePicker;->mDayWheel:Landroid/widget/WheelView;

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    sub-int/2addr v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/WheelView;->setWheelPosition(I)V

    .line 226
    return-void
.end method

.method private updateWheels()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearWheel:Landroid/widget/WheelView;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    const/16 v2, 0x76c

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/WheelView;->setWheelPosition(I)V

    .line 203
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthWheel:Landroid/widget/WheelView;

    iget v1, p0, Landroid/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v1}, Landroid/widget/WheelView;->setWheelPosition(I)V

    .line 204
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDayWheel()V

    .line 205
    return-void
.end method


# virtual methods
.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 167
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 168
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 169
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 170
    invoke-virtual {p0, p4}, Landroid/widget/DatePicker;->setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V

    .line 171
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateWheels()V

    .line 172
    return-void
.end method

.method public setDate(III)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 157
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 158
    :cond_0
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 159
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 160
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 161
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateWheels()V

    .line 163
    :cond_1
    return-void
.end method

.method public setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "onDateChangedListener"

    .prologue
    .line 102
    iput-object p1, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 103
    return-void
.end method

.method public updateDate(III)V
    .locals 4
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 191
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 192
    :cond_0
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 193
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 194
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 196
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    iget v2, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 199
    :cond_2
    return-void
.end method
