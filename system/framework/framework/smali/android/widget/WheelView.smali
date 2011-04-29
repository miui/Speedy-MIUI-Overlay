.class public Landroid/widget/WheelView;
.super Landroid/view/ViewGroup;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/WheelView$OnWheelChangedListener;
    }
.end annotation


# static fields
.field private static final MSG_REDRAW:I = 0x3e8


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAllItems:I

.field private mCenterIndex:I

.field private mCenterPosition:I

.field private mCenterRect:Landroid/graphics/Rect;

.field private mChildHeight:I

.field private mChildWidth:I

.field private mIsBeingDragged:Z

.field private mLastYTouch:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mRollDistance:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewCount:I

.field private mViewPositions:[I

.field private mViews:[Landroid/view/View;

.field private mVisibleItems:I

.field private mWheelChangedListener:Landroid/widget/WheelView$OnWheelChangedListener;

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/WheelView;->mCenterPosition:I

    .line 356
    new-instance v0, Landroid/widget/WheelView$1;

    invoke-direct {v0, p0}, Landroid/widget/WheelView$1;-><init>(Landroid/widget/WheelView;)V

    iput-object v0, p0, Landroid/widget/WheelView;->handler:Landroid/os/Handler;

    .line 102
    invoke-direct {p0}, Landroid/widget/WheelView;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/WheelView;->mCenterPosition:I

    .line 356
    new-instance v0, Landroid/widget/WheelView$1;

    invoke-direct {v0, p0}, Landroid/widget/WheelView$1;-><init>(Landroid/widget/WheelView;)V

    iput-object v0, p0, Landroid/widget/WheelView;->handler:Landroid/os/Handler;

    .line 112
    invoke-direct {p0}, Landroid/widget/WheelView;->init()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/WheelView;->mCenterPosition:I

    .line 356
    new-instance v0, Landroid/widget/WheelView$1;

    invoke-direct {v0, p0}, Landroid/widget/WheelView$1;-><init>(Landroid/widget/WheelView;)V

    iput-object v0, p0, Landroid/widget/WheelView;->handler:Landroid/os/Handler;

    .line 107
    invoke-direct {p0}, Landroid/widget/WheelView;->init()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Landroid/widget/WheelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/WheelView;->startRoll()V

    return-void
.end method

.method private computeCenterPosition()I
    .locals 8

    .prologue
    .line 259
    const/high16 v3, -0x8000

    .line 260
    .local v3, lastVisibleLength:I
    iget v4, p0, Landroid/widget/WheelView;->mCenterPosition:I

    .line 262
    .local v4, position:I
    iget-object v6, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    iget v7, p0, Landroid/widget/WheelView;->mCenterIndex:I

    aget-object v6, v6, v7

    iget-object v7, p0, Landroid/widget/WheelView;->mCenterRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 263
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 264
    .local v1, frame:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Landroid/widget/WheelView;->mViewCount:I

    if-ge v2, v6, :cond_3

    .line 265
    iget-object v6, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    aget-object v6, v6, v2

    invoke-virtual {v6, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 266
    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/WheelView;->mYOffset:I

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 267
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/WheelView;->mCenterRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Landroid/widget/WheelView;->mCenterRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move v5, v6

    .line 268
    .local v5, top:I
    :goto_1
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/widget/WheelView;->mCenterRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_2

    iget-object v6, p0, Landroid/widget/WheelView;->mCenterRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    .line 269
    .local v0, bottom:I
    :goto_2
    sub-int v6, v0, v5

    if-le v6, v3, :cond_0

    .line 270
    sub-int v3, v0, v5

    .line 271
    iget-object v6, p0, Landroid/widget/WheelView;->mViewPositions:[I

    aget v4, v6, v2

    .line 264
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v0           #bottom:I
    .end local v5           #top:I
    :cond_1
    iget v6, v1, Landroid/graphics/Rect;->top:I

    move v5, v6

    goto :goto_1

    .line 268
    .restart local v5       #top:I
    :cond_2
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    goto :goto_2

    .line 275
    .end local v5           #top:I
    :cond_3
    return v4
.end method

.method private doScroll(I)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 294
    iget v0, p0, Landroid/widget/WheelView;->mYOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/WheelView;->mYOffset:I

    .line 295
    iget v0, p0, Landroid/widget/WheelView;->mYOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/WheelView;->mChildHeight:I

    if-lt v0, v1, :cond_0

    .line 296
    iget v0, p0, Landroid/widget/WheelView;->mYOffset:I

    if-lez v0, :cond_1

    .line 297
    invoke-virtual {p0}, Landroid/widget/WheelView;->rollDown()V

    .line 298
    iget v0, p0, Landroid/widget/WheelView;->mYOffset:I

    iget v1, p0, Landroid/widget/WheelView;->mChildHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/WheelView;->mYOffset:I

    .line 304
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/WheelView;->invalidate()V

    .line 305
    return-void

    .line 300
    :cond_1
    invoke-virtual {p0}, Landroid/widget/WheelView;->rollUp()V

    .line 301
    iget v0, p0, Landroid/widget/WheelView;->mYOffset:I

    iget v1, p0, Landroid/widget/WheelView;->mChildHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/WheelView;->mYOffset:I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 117
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/WheelView;->mMinimumVelocity:I

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/WheelView;->mMaximumVelocity:I

    .line 119
    return-void
.end method

.method private initChildViews()V
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Landroid/widget/WheelView;->mViewCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    .line 147
    iget v0, p0, Landroid/widget/WheelView;->mViewCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/WheelView;->mViewPositions:[I

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/WheelView;->mCenterRect:Landroid/graphics/Rect;

    .line 149
    return-void
.end method

.method private loadViews()V
    .locals 5

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/widget/WheelView;->mViewCount:I

    if-ge v0, v1, :cond_1

    .line 167
    iget-object v1, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    iget-object v2, p0, Landroid/widget/WheelView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/widget/WheelView;->mViewPositions:[I

    aget v3, v3, v0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 169
    iget-object v1, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/WheelView;->addView(Landroid/view/View;)V

    .line 166
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    iget-object v1, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    iget-object v2, p0, Landroid/widget/WheelView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/widget/WheelView;->mViewPositions:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 174
    :cond_1
    return-void
.end method

.method private nextPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 318
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Landroid/widget/WheelView;->mAllItems:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private performFling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 279
    int-to-float v0, p1

    iget v1, p0, Landroid/widget/WheelView;->mChildHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/WheelView;->mChildHeight:I

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/WheelView;->mRollDistance:I

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/WheelView;->mYOffset:I

    .line 281
    invoke-direct {p0}, Landroid/widget/WheelView;->startRoll()V

    .line 282
    return-void
.end method

.method private previousPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 322
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/WheelView;->mAllItems:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/WheelView;->mAllItems:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private resetWheel()V
    .locals 3

    .prologue
    .line 138
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/WheelView;->mCenterPosition:I

    .line 139
    invoke-virtual {p0}, Landroid/widget/WheelView;->removeAllViewsInLayout()V

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/widget/WheelView;->mViewCount:I

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method private setCenterPosition(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 152
    iget v1, p0, Landroid/widget/WheelView;->mCenterPosition:I

    if-ne p1, v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Landroid/widget/WheelView;->mWheelChangedListener:Landroid/widget/WheelView$OnWheelChangedListener;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Landroid/widget/WheelView;->mWheelChangedListener:Landroid/widget/WheelView$OnWheelChangedListener;

    iget v2, p0, Landroid/widget/WheelView;->mCenterPosition:I

    invoke-interface {v1, p0, v2, p1}, Landroid/widget/WheelView$OnWheelChangedListener;->onChanged(Landroid/widget/WheelView;II)V

    .line 158
    :cond_1
    iput p1, p0, Landroid/widget/WheelView;->mCenterPosition:I

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Landroid/widget/WheelView;->mViewCount:I

    if-ge v0, v1, :cond_2

    .line 160
    iget-object v1, p0, Landroid/widget/WheelView;->mViewPositions:[I

    iget v2, p0, Landroid/widget/WheelView;->mCenterIndex:I

    sub-int v2, v0, v2

    add-int/2addr v2, p1

    iget v3, p0, Landroid/widget/WheelView;->mAllItems:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/WheelView;->mAllItems:I

    rem-int/2addr v2, v3

    aput v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_2
    invoke-direct {p0}, Landroid/widget/WheelView;->loadViews()V

    goto :goto_0
.end method

.method private springToCenter()V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/widget/WheelView;->computeCenterPosition()I

    move-result v0

    .line 253
    .local v0, position:I
    invoke-direct {p0, v0}, Landroid/widget/WheelView;->setCenterPosition(I)V

    .line 254
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/WheelView;->mYOffset:I

    .line 255
    invoke-virtual {p0}, Landroid/widget/WheelView;->invalidate()V

    .line 256
    return-void
.end method

.method private startRoll()V
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 326
    iget v2, p0, Landroid/widget/WheelView;->mChildHeight:I

    div-int/lit8 v0, v2, 0x4

    .line 327
    .local v0, rollOffsetUnit:I
    iget v2, p0, Landroid/widget/WheelView;->mChildHeight:I

    div-int/lit8 v1, v2, 0x2

    .line 329
    .local v1, rollUnit:I
    iget v2, p0, Landroid/widget/WheelView;->mRollDistance:I

    if-lez v2, :cond_0

    .line 330
    iget v2, p0, Landroid/widget/WheelView;->mRollDistance:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/widget/WheelView;->mRollDistance:I

    .line 331
    iget v2, p0, Landroid/widget/WheelView;->mYOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/widget/WheelView;->mYOffset:I

    .line 337
    :goto_0
    iget v2, p0, Landroid/widget/WheelView;->mRollDistance:I

    if-nez v2, :cond_1

    .line 338
    iget-object v2, p0, Landroid/widget/WheelView;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iput v4, p0, Landroid/widget/WheelView;->mYOffset:I

    .line 340
    invoke-virtual {p0}, Landroid/widget/WheelView;->invalidate()V

    .line 354
    :goto_1
    return-void

    .line 333
    :cond_0
    iget v2, p0, Landroid/widget/WheelView;->mRollDistance:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/WheelView;->mRollDistance:I

    .line 334
    iget v2, p0, Landroid/widget/WheelView;->mYOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/widget/WheelView;->mYOffset:I

    goto :goto_0

    .line 342
    :cond_1
    iget v2, p0, Landroid/widget/WheelView;->mYOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/widget/WheelView;->mChildHeight:I

    if-lt v2, v3, :cond_2

    .line 343
    iget v2, p0, Landroid/widget/WheelView;->mYOffset:I

    if-lez v2, :cond_3

    .line 344
    invoke-virtual {p0}, Landroid/widget/WheelView;->rollDown()V

    .line 345
    iput v4, p0, Landroid/widget/WheelView;->mYOffset:I

    .line 351
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/WheelView;->invalidate()V

    .line 352
    iget-object v2, p0, Landroid/widget/WheelView;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x10

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 346
    :cond_3
    iget v2, p0, Landroid/widget/WheelView;->mYOffset:I

    if-gez v2, :cond_2

    .line 347
    invoke-virtual {p0}, Landroid/widget/WheelView;->rollUp()V

    .line 348
    iput v4, p0, Landroid/widget/WheelView;->mYOffset:I

    goto :goto_2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 287
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/WheelView;->mYOffset:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 290
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/high16 v6, 0x4000

    const/4 v7, 0x0

    .line 178
    iget-object v4, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    aget-object v4, v4, v7

    if-nez v4, :cond_1

    .line 194
    :cond_0
    return-void

    .line 180
    :cond_1
    sub-int v4, p4, p2

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 181
    .local v3, widthSpec:I
    sub-int v4, p5, p3

    iget v5, p0, Landroid/widget/WheelView;->mVisibleItems:I

    div-int/2addr v4, v5

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 183
    .local v0, heightSpec:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Landroid/widget/WheelView;->mViewCount:I

    if-ge v1, v4, :cond_2

    .line 184
    iget-object v4, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    iget-object v4, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Landroid/widget/WheelView;->mChildWidth:I

    .line 187
    iget-object v4, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Landroid/widget/WheelView;->mChildHeight:I

    .line 189
    iget v4, p0, Landroid/widget/WheelView;->mChildHeight:I

    neg-int v2, v4

    .line 190
    .local v2, top:I
    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Landroid/widget/WheelView;->mViewCount:I

    if-ge v1, v4, :cond_0

    .line 191
    iget-object v4, p0, Landroid/widget/WheelView;->mViews:[Landroid/view/View;

    aget-object v4, v4, v1

    iget v5, p0, Landroid/widget/WheelView;->mChildWidth:I

    iget v6, p0, Landroid/widget/WheelView;->mChildHeight:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v7, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 192
    iget v4, p0, Landroid/widget/WheelView;->mChildHeight:I

    add-int/2addr v2, v4

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    iget-object v2, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 203
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 205
    :cond_0
    iget-object v2, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 248
    :goto_0
    return v5

    .line 210
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/WheelView;->mLastYTouch:F

    .line 211
    iput-boolean v5, p0, Landroid/widget/WheelView;->mIsBeingDragged:Z

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Landroid/widget/WheelView;->mLastYTouch:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Landroid/widget/WheelView;->doScroll(I)V

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/WheelView;->mLastYTouch:F

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v1, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 221
    .local v1, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    iget v3, p0, Landroid/widget/WheelView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 222
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v0, v2

    .line 224
    .local v0, initialVelocity:I
    iget-boolean v2, p0, Landroid/widget/WheelView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 225
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/widget/WheelView;->mMinimumVelocity:I

    if-le v2, v3, :cond_3

    .line 226
    invoke-direct {p0, v0}, Landroid/widget/WheelView;->performFling(I)V

    .line 232
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 233
    iget-object v2, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 234
    iput-object v6, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 236
    :cond_2
    iput-boolean v4, p0, Landroid/widget/WheelView;->mIsBeingDragged:Z

    goto :goto_0

    .line 228
    :cond_3
    invoke-direct {p0}, Landroid/widget/WheelView;->springToCenter()V

    goto :goto_1

    .line 240
    .end local v0           #initialVelocity:I
    .end local v1           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_3
    iget-object v2, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_4

    .line 241
    iget-object v2, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 242
    iput-object v6, p0, Landroid/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 244
    :cond_4
    iput-boolean v4, p0, Landroid/widget/WheelView;->mIsBeingDragged:Z

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public rollDown()V
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Landroid/widget/WheelView;->mCenterPosition:I

    invoke-direct {p0, v0}, Landroid/widget/WheelView;->previousPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/WheelView;->setCenterPosition(I)V

    .line 314
    return-void
.end method

.method public rollUp()V
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Landroid/widget/WheelView;->mCenterPosition:I

    invoke-direct {p0, v0}, Landroid/widget/WheelView;->nextPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/WheelView;->setCenterPosition(I)V

    .line 309
    invoke-virtual {p0}, Landroid/widget/WheelView;->invalidate()V

    .line 310
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;I)V
    .locals 1
    .parameter "adapter"
    .parameter "visibleItems"

    .prologue
    .line 122
    iget-object v0, p0, Landroid/widget/WheelView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Landroid/widget/WheelView;->resetWheel()V

    .line 125
    :cond_0
    iput-object p1, p0, Landroid/widget/WheelView;->mAdapter:Landroid/widget/ListAdapter;

    .line 126
    iget-object v0, p0, Landroid/widget/WheelView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/WheelView;->mAllItems:I

    .line 127
    iput p2, p0, Landroid/widget/WheelView;->mVisibleItems:I

    .line 128
    iget v0, p0, Landroid/widget/WheelView;->mVisibleItems:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/WheelView;->mViewCount:I

    .line 129
    iget v0, p0, Landroid/widget/WheelView;->mViewCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/WheelView;->mCenterIndex:I

    .line 130
    invoke-direct {p0}, Landroid/widget/WheelView;->initChildViews()V

    .line 131
    return-void
.end method

.method public setOnWheelChangedListener(Landroid/widget/WheelView$OnWheelChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 197
    iput-object p1, p0, Landroid/widget/WheelView;->mWheelChangedListener:Landroid/widget/WheelView$OnWheelChangedListener;

    .line 198
    return-void
.end method

.method public setWheelPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/widget/WheelView;->setCenterPosition(I)V

    .line 135
    return-void
.end method
