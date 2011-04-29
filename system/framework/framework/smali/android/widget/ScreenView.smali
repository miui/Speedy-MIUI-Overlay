.class public Landroid/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScreenView$1;,
        Landroid/widget/ScreenView$SavedState;,
        Landroid/widget/ScreenView$ScaleDetectorListener;,
        Landroid/widget/ScreenView$SliderTouchListener;,
        Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;
    }
.end annotation


# static fields
.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DEFAULT_OVER_SHOOT_TENSION:F = 1.3f

.field private static final DEFAULT_SCREEN_SNAP_DURATION:I = 0x64

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

#the value of this static final field might be set in the static constructor
.field protected static final INDICATOR_MEASURE_SPEC:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field protected static final INVALID_SCREEN:I = -0x1

.field public static final MAX_TOUCH_STATE:I = 0x4

.field protected static final MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final NANOTIME_DIV:F = 1.0E9f

.field public static final SCREEN_ALIGN_CENTER:I = 0x1

.field public static final SCREEN_ALIGN_LEFT:I = 0x0

.field public static final SCREEN_ALIGN_RIGHT:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3


# instance fields
.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Landroid/widget/ImageView;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field private mCamera:Landroid/graphics/Camera;

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field protected mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenAlignment:I

.field protected mScreenOffset:I

.field protected mScreenPadding:Landroid/graphics/Rect;

.field private mScreenSeekBar:Landroid/widget/LinearLayout;

.field private mScreenSnapDuration:I

.field public mScreenTransitionType:I

.field protected mScreenWidth:I

.field private mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBound:I

.field protected mScrollRightBound:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field private mSlideBar:Landroid/widget/FrameLayout;

.field private mSlideBarBackground:Landroid/widget/FrameLayout;

.field private mSlidePoint:Landroid/widget/ImageView;

.field private mSmoothingTime:F

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVisibleRange:I

.field protected mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 35
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Landroid/widget/ScreenView;->INDICATOR_MEASURE_SPEC:I

    .line 39
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Landroid/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v3, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    .line 52
    const v0, 0x1080332

    iput v0, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x1080333

    iput v0, p0, Landroid/widget/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x1080334

    iput v0, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x1080335

    iput v0, p0, Landroid/widget/ScreenView;->mArrowRightOffResId:I

    .line 57
    const v0, 0x1080336

    iput v0, p0, Landroid/widget/ScreenView;->mSeekPointResId:I

    .line 80
    iput v2, p0, Landroid/widget/ScreenView;->mNextScreen:I

    .line 83
    const v0, 0x3eaaaaab

    iput v0, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    .line 98
    iput v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 103
    iput-boolean v3, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 109
    iput v2, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 116
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 118
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    .line 135
    iput v1, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    .line 138
    const v0, 0x3fa66666

    iput v0, p0, Landroid/widget/ScreenView;->mOvershootTension:F

    .line 1196
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    .line 186
    invoke-direct {p0}, Landroid/widget/ScreenView;->initScreenView()V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v3, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    .line 52
    const v0, 0x1080332

    iput v0, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x1080333

    iput v0, p0, Landroid/widget/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x1080334

    iput v0, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x1080335

    iput v0, p0, Landroid/widget/ScreenView;->mArrowRightOffResId:I

    .line 57
    const v0, 0x1080336

    iput v0, p0, Landroid/widget/ScreenView;->mSeekPointResId:I

    .line 80
    iput v2, p0, Landroid/widget/ScreenView;->mNextScreen:I

    .line 83
    const v0, 0x3eaaaaab

    iput v0, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    .line 98
    iput v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 103
    iput-boolean v3, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 109
    iput v2, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 116
    const/high16 v0, 0x3f00

    iput v0, p0, Landroid/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 118
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    .line 135
    iput v1, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    .line 138
    const v0, 0x3fa66666

    iput v0, p0, Landroid/widget/ScreenView;->mOvershootTension:F

    .line 1196
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    .line 208
    invoke-direct {p0}, Landroid/widget/ScreenView;->initScreenView()V

    .line 209
    return-void
.end method

.method static synthetic access$100(Landroid/widget/ScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Landroid/widget/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic access$400(Landroid/widget/ScreenView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ScreenView;->updateSeekPoints(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1123
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1124
    .local v0, seekPoint:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1125
    iget v1, p0, Landroid/widget/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1127
    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    .prologue
    .line 215
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 217
    new-instance v1, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;-><init>(Landroid/widget/ScreenView;)V

    iput-object v1, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    .line 218
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 219
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 221
    iget-object v1, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 222
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScreenView;->mTouchSlop:I

    .line 223
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScreenView;->mMaximumVelocity:I

    .line 225
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/widget/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/widget/ScreenView$ScaleDetectorListener;-><init>(Landroid/widget/ScreenView;Landroid/widget/ScreenView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Landroid/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 226
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 769
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 770
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 772
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 775
    iget v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iget v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_2

    .line 776
    :cond_1
    iget-object v0, p0, Landroid/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 778
    :cond_2
    return-void
.end method

.method private sanpByVelocity(I)V
    .locals 6
    .parameter "pointerId"

    .prologue
    const/4 v5, 0x1

    .line 884
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 885
    .local v0, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    iget v4, p0, Landroid/widget/ScreenView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 886
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v1, v3

    .line 888
    .local v1, velocityX:I
    const/16 v3, 0x258

    if-le v1, v3, :cond_1

    iget v3, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    if-lez v3, :cond_1

    .line 891
    iget v3, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3, v1, v5}, Landroid/widget/ScreenView;->snapToScreen(IIZ)V

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    const/16 v3, -0x258

    if-ge v1, v3, :cond_2

    iget v3, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 895
    iget v3, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3, v1, v5}, Landroid/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 897
    :cond_2
    iget v3, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    if-lez v3, :cond_0

    .line 898
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    iget v4, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    div-int v2, v3, v4

    .line 899
    .local v2, whichScreen:I
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v5}, Landroid/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 487
    iget-object v0, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-gtz p1, :cond_1

    iget v1, p0, Landroid/widget/ScreenView;->mArrowLeftOffResId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    iget-object v0, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    iget v1, p0, Landroid/widget/ScreenView;->mArrowRightOffResId:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    :cond_0
    return-void

    .line 488
    :cond_1
    iget v1, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    goto :goto_0

    .line 492
    :cond_2
    iget v1, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    goto :goto_1
.end method

.method private updateIndicatorPositions(I)V
    .locals 21
    .parameter "scrollX"

    .prologue
    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->getWidth()I

    move-result v18

    if-lez v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->isLayoutRequested()Z

    move-result v18

    if-nez v18, :cond_1

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v8

    .line 404
    .local v8, indexOffset:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScreenView;->mIndicatorCount:I

    move/from16 v18, v0

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 405
    add-int v18, v7, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 406
    .local v9, indicator:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 408
    .local v14, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->getWidth()I

    move-result v16

    .line 409
    .local v16, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScreenView;->getHeight()I

    move-result v15

    .line 410
    .local v15, screenHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 411
    .local v13, indicatorWidth:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 413
    .local v10, indicatorHeight:I
    const/4 v11, 0x0

    .line 414
    .local v11, indicatorLeft:I
    const/4 v12, 0x0

    .line 416
    .local v12, indicatorTop:I
    iget v5, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 418
    .local v5, gravity:I
    const/16 v18, -0x1

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 419
    and-int/lit8 v6, v5, 0x7

    .line 420
    .local v6, horizontalGravity:I
    and-int/lit8 v17, v5, 0x70

    .line 422
    .local v17, verticalGravity:I
    packed-switch v6, :pswitch_data_0

    .line 434
    :pswitch_0
    iget v11, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 437
    :goto_1
    sparse-switch v17, :sswitch_data_0

    .line 449
    iget v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 453
    .end local v6           #horizontalGravity:I
    .end local v17           #verticalGravity:I
    :cond_0
    :goto_2
    add-int v18, p1, v11

    add-int v19, p1, v11

    add-int v19, v19, v13

    add-int v20, v12, v10

    move-object v0, v9

    move/from16 v1, v18

    move v2, v12

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 404
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 424
    .restart local v6       #horizontalGravity:I
    .restart local v17       #verticalGravity:I
    :pswitch_1
    iget v11, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 425
    goto :goto_1

    .line 427
    :pswitch_2
    sub-int v18, v16, v13

    div-int/lit8 v18, v18, 0x2

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 429
    goto :goto_1

    .line 431
    :pswitch_3
    sub-int v18, v16, v13

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 432
    goto :goto_1

    .line 439
    :sswitch_0
    iget v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 440
    goto :goto_2

    .line 442
    :sswitch_1
    sub-int v18, v15, v10

    div-int/lit8 v18, v18, 0x2

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 444
    goto :goto_2

    .line 446
    :sswitch_2
    sub-int v18, v15, v10

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 447
    goto :goto_2

    .line 460
    .end local v5           #gravity:I
    .end local v6           #horizontalGravity:I
    .end local v7           #i:I
    .end local v8           #indexOffset:I
    .end local v9           #indicator:Landroid/view/View;
    .end local v10           #indicatorHeight:I
    .end local v11           #indicatorLeft:I
    .end local v12           #indicatorTop:I
    .end local v13           #indicatorWidth:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v15           #screenHeight:I
    .end local v16           #screenWidth:I
    .end local v17           #verticalGravity:I
    :cond_1
    return-void

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateScreenOffset()V
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Landroid/widget/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 394
    :goto_0
    return-void

    .line 385
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScreenView;->mScreenOffset:I

    goto :goto_0

    .line 388
    :pswitch_1
    iget v0, p0, Landroid/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/ScreenView;->mScreenOffset:I

    goto :goto_0

    .line 391
    :pswitch_2
    iget v0, p0, Landroid/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Landroid/widget/ScreenView;->mScreenOffset:I

    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSeekPoints(II)V
    .locals 5
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v4, 0x0

    .line 1131
    iget-object v2, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 1132
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1133
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    if-ge v2, v0, :cond_0

    .line 1134
    iget-object v2, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v2

    iget v3, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1138
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1139
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_1

    add-int v2, p2, v1

    if-ge v2, v0, :cond_1

    .line 1140
    iget-object v2, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1143
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 9
    .parameter "scrollX"

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 465
    .local v0, screenCount:I
    iget-object v5, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 466
    iget-object v5, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 467
    .local v2, slideBarWidth:I
    div-int v5, v2, v0

    iget v6, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 471
    .local v3, slidePointWidth:I
    iget v5, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    .line 472
    .local v1, screenViewContentWidth:I
    if-gt v1, v2, :cond_1

    const/4 v5, 0x0

    move v4, v5

    .line 478
    .local v4, slidePointX:I
    :goto_0
    iget-object v5, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    iget-object v6, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    add-int v7, v4, v3

    iget-object v8, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBottom()I

    move-result v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 484
    .end local v1           #screenViewContentWidth:I
    .end local v2           #slideBarWidth:I
    .end local v3           #slidePointWidth:I
    .end local v4           #slidePointX:I
    :cond_0
    return-void

    .line 472
    .restart local v1       #screenViewContentWidth:I
    .restart local v2       #slideBarWidth:I
    .restart local v3       #slidePointWidth:I
    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    sub-int v6, v1, v2

    div-int/2addr v5, v6

    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter "indicator"
    .parameter "params"

    .prologue
    .line 1037
    iget v0, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    .line 1038
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    return-void
.end method

.method public addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 2
    .parameter "indicator"
    .parameter "params"
    .parameter "index"

    .prologue
    .line 1042
    const/4 v0, -0x1

    iget v1, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1043
    if-ltz p3, :cond_0

    .line 1044
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 1047
    :cond_0
    iget v0, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    .line 1048
    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 996
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 997
    .local v0, currentCount:I
    if-gez p2, :cond_1

    .line 998
    move p2, v0

    .line 1003
    :goto_0
    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/ScreenView;->mScreenOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ScreenView;->mScrollRightBound:I

    .line 1005
    iget-object v1, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroid/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    return-void

    .line 1001
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const v5, 0x4e6e6b28

    .line 522
    iget-object v3, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    iget-object v3, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/ScreenView;->mTouchX:F

    .line 524
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    .line 525
    iget-object v3, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Landroid/widget/ScreenView;->mScrollY:I

    .line 526
    invoke-virtual {p0}, Landroid/widget/ScreenView;->postInvalidate()V

    .line 543
    :cond_0
    :goto_0
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Landroid/widget/ScreenView;->updateIndicatorPositions(I)V

    .line 544
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Landroid/widget/ScreenView;->updateSlidePointPosition(I)V

    .line 545
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Landroid/widget/ScreenView;->updateArrowIndicatorResource(I)V

    .line 546
    return-void

    .line 527
    :cond_1
    iget v3, p0, Landroid/widget/ScreenView;->mNextScreen:I

    if-eq v3, v7, :cond_2

    .line 528
    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v5

    iget v6, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 529
    iput v7, p0, Landroid/widget/ScreenView;->mNextScreen:I

    goto :goto_0

    .line 530
    :cond_2
    iget v3, p0, Landroid/widget/ScreenView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 531
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float v2, v3, v5

    .line 532
    .local v2, now:F
    iget v3, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Landroid/widget/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 533
    .local v1, e:F
    iget v3, p0, Landroid/widget/ScreenView;->mTouchX:F

    iget v4, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 534
    .local v0, dx:F
    iget v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScreenView;->mScrollX:I

    .line 535
    iput v2, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    .line 538
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x4080

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 539
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 659
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 660
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    if-lez v0, :cond_1

    .line 661
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->snapToScreen(I)V

    move v0, v2

    .line 670
    :goto_0
    return v0

    .line 664
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 665
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 666
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->snapToScreen(I)V

    move v0, v2

    .line 667
    goto :goto_0

    .line 670
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 906
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 907
    return-void
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 12
    .parameter "child"
    .parameter "t"

    .prologue
    .line 1200
    iget v8, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    if-eqz v8, :cond_0

    iget v8, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 1203
    :cond_0
    const/4 v8, 0x0

    .line 1283
    :goto_0
    return v8

    .line 1205
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v1, v8

    .line 1206
    .local v1, childW:F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v0, v8

    .line 1207
    .local v0, childH:F
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float v4, v8, v9

    .line 1208
    .local v4, halfScreenW:F
    const/high16 v8, 0x4000

    div-float v3, v1, v8

    .line 1209
    .local v3, halfChildW:F
    const/high16 v8, 0x4000

    div-float v2, v0, v8

    .line 1210
    .local v2, halfChildH:F
    iget v8, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v3

    add-float v9, v4, v3

    div-float/2addr v8, v9

    const/high16 v9, -0x4080

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1212
    .local v5, interpolation:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 1213
    .local v6, m:Landroid/graphics/Matrix;
    iget v8, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v8, :pswitch_data_0

    .line 1283
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 1215
    :pswitch_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1217
    :pswitch_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1219
    :pswitch_2
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_2

    .line 1220
    const/4 v8, 0x0

    goto :goto_0

    .line 1222
    :cond_2
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    const v9, 0x3f333333

    mul-float/2addr v8, v9

    const v9, 0x3e99999a

    add-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1223
    sget v8, Landroid/view/animation/Transformation;->TYPE_ALPHA:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_1

    .line 1226
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    neg-float v9, v5

    const/high16 v10, 0x4234

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9, v3, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1227
    sget v8, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_1

    .line 1230
    :pswitch_4
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_3

    .line 1231
    const/4 v8, 0x0

    goto :goto_0

    .line 1233
    :cond_3
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1234
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 1235
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1236
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, -0x3d4c

    mul-float/2addr v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1237
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/4 v9, 0x0

    const/4 v10, 0x0

    neg-float v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1238
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1239
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 1240
    neg-float v8, v3

    neg-float v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1241
    const/high16 v8, 0x3f80

    const/high16 v9, 0x4000

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v3

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1242
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1245
    :pswitch_5
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1246
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 1247
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    neg-float v9, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x4040

    div-float/2addr v9, v10

    neg-float v10, v3

    mul-float/2addr v10, v5

    invoke-virtual {v8, v9, v2, v10}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1248
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, 0x41f0

    neg-float v10, v5

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1249
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1250
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 1251
    mul-float v8, v1, v5

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1252
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1255
    :pswitch_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1257
    :pswitch_7
    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_4

    .line 1258
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1260
    :cond_4
    const/high16 v8, 0x3f80

    sub-float/2addr v8, v5

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1261
    const v8, 0x3f19999a

    const v9, 0x3ecccccd

    const/high16 v10, 0x3f80

    sub-float/2addr v10, v5

    mul-float/2addr v9, v10

    add-float v7, v8, v9

    .line 1262
    .local v7, scale:F
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1263
    const/high16 v8, 0x3f80

    sub-float/2addr v8, v7

    mul-float/2addr v8, v1

    const/high16 v9, 0x4040

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f80

    sub-float/2addr v9, v7

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1264
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1267
    .end local v7           #scale:F
    :pswitch_8
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_5

    .line 1268
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1270
    :cond_5
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1271
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 1272
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    mul-float v9, v1, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1273
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, 0x4234

    mul-float/2addr v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1274
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1275
    iget-object v8, p0, Landroid/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 1276
    neg-float v8, v3

    neg-float v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1277
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1278
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1281
    :pswitch_9
    invoke-virtual {p0, p1, p2, v5}, Landroid/widget/ScreenView;->getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z

    move-result v8

    goto/16 :goto_0

    .line 1213
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
    .end packed-switch
.end method

.method protected getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z
    .locals 1
    .parameter "child"
    .parameter "t"
    .parameter "interpolation"

    .prologue
    .line 1287
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .prologue
    .line 954
    iget v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 955
    iget v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    iput v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    .line 957
    :cond_0
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    return v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 985
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 986
    :cond_0
    const/4 v0, 0x0

    .line 988
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenCount()I
    .locals 2

    .prologue
    .line 945
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getTouchState()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method public getVisibleRange()I
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 549
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 550
    invoke-virtual {p0}, Landroid/widget/ScreenView;->computeScroll()V

    .line 551
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 760
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    .line 761
    invoke-direct {p0, p1}, Landroid/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 764
    :cond_1
    iget-boolean v2, p0, Landroid/widget/ScreenView;->mCurrentGestureFinished:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-eq v2, v6, :cond_4

    :cond_2
    move v2, v5

    :goto_1
    return v2

    .line 715
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 716
    iget v2, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-nez v2, :cond_0

    .line 717
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 718
    .local v0, dx:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Landroid/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 719
    .local v1, dy:F
    iget v2, p0, Landroid/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 721
    invoke-virtual {p0, p1, v5}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 728
    .end local v0           #dx:F
    .end local v1           #dy:F
    :pswitch_1
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 729
    iget-object v2, p0, Landroid/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 730
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 732
    iput-boolean v4, p0, Landroid/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 733
    iput-boolean v4, p0, Landroid/widget/ScreenView;->mTouchIntercepted:Z

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/ScreenView;->mLastMotionY:F

    .line 739
    iget-object v2, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 740
    iput-boolean v5, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 748
    :cond_3
    iget-object v2, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 749
    invoke-virtual {p0, p1, v5}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 756
    :pswitch_2
    invoke-virtual {p0, p1, v4}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_4
    move v2, v4

    .line 764
    goto :goto_1

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 622
    iget v4, p0, Landroid/widget/ScreenView;->mPaddingLeft:I

    add-int/2addr v4, p2

    iget-object v5, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int p2, v4, v5

    .line 623
    iget v4, p0, Landroid/widget/ScreenView;->mPaddingRight:I

    sub-int v4, p4, v4

    iget-object v5, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int p4, v4, v5

    .line 624
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/ScreenView;->setFrame(IIII)Z

    .line 626
    iget v4, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v4}, Landroid/widget/ScreenView;->updateIndicatorPositions(I)V

    .line 629
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v2

    .line 630
    .local v2, count:I
    const/4 v1, 0x0

    .line 631
    .local v1, childLeft:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 632
    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 633
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 634
    iget v4, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget-object v5, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget-object v7, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 639
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 631
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x0

    .line 555
    iput p1, p0, Landroid/widget/ScreenView;->mWidthMeasureSpec:I

    .line 556
    iput p2, p0, Landroid/widget/ScreenView;->mHeightMeasureSpec:I

    .line 557
    const/4 v6, 0x0

    .line 558
    .local v6, maxHeight:I
    const/4 v7, 0x0

    .line 560
    .local v7, maxWidth:I
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v3

    .line 563
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v8, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    if-ge v4, v8, :cond_0

    .line 564
    add-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 566
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 568
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingLeft:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, Landroid/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 570
    .local v2, childWidthMeasureSpec:I
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v8, v9}, Landroid/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 573
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 574
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 575
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 563
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 579
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 580
    invoke-virtual {p0, v4}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 582
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 584
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingLeft:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, Landroid/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 586
    .restart local v2       #childWidthMeasureSpec:I
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v8, v9}, Landroid/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 589
    .restart local v1       #childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 590
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 579
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 595
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingLeft:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 596
    iget v8, p0, Landroid/widget/ScreenView;->mPaddingTop:I

    iget v9, p0, Landroid/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 598
    invoke-static {v7, p1}, Landroid/widget/ScreenView;->resolveSize(II)I

    move-result v8

    invoke-static {v6, p2}, Landroid/widget/ScreenView;->resolveSize(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/widget/ScreenView;->setMeasuredDimension(II)V

    .line 602
    if-lez v3, :cond_2

    .line 603
    invoke-virtual {p0, v10}, Landroid/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iput v8, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    .line 604
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iput v8, p0, Landroid/widget/ScreenView;->mScreenWidth:I

    .line 605
    invoke-direct {p0}, Landroid/widget/ScreenView;->updateScreenOffset()V

    .line 606
    iget v8, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v8}, Landroid/widget/ScreenView;->setOverScrollRatio(F)V

    .line 607
    iget v8, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    if-lez v8, :cond_2

    .line 608
    iget v8, p0, Landroid/widget/ScreenView;->mScreenWidth:I

    iget v9, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v8, v9

    iput v8, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    .line 612
    :cond_2
    iget-boolean v8, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    if-eqz v8, :cond_3

    iget v8, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    if-lez v8, :cond_3

    .line 613
    iput-boolean v10, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    .line 614
    invoke-virtual {p0, v10}, Landroid/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 615
    iget v8, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 616
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 618
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 1151
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1153
    :cond_0
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1338
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1341
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1390
    move-object v0, p1

    check-cast v0, Landroid/widget/ScreenView$SavedState;

    move-object v1, v0

    .line 1391
    .local v1, savedState:Landroid/widget/ScreenView$SavedState;
    invoke-virtual {v1}, Landroid/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1392
    iget v2, v1, Landroid/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1393
    iget v2, v1, Landroid/widget/ScreenView$SavedState;->currentScreen:I

    iput v2, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    .line 1395
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1146
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1383
    new-instance v0, Landroid/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1384
    .local v0, state:Landroid/widget/ScreenView$SavedState;
    iget v1, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Landroid/widget/ScreenView$SavedState;->currentScreen:I

    .line 1385
    return-object v0
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 2
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 849
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 850
    iget v0, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ScreenView;->mTouchX:F

    .line 851
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    .line 852
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 853
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 858
    :goto_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 859
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 860
    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 870
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 871
    .local v1, x:F
    iget v2, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v2, v1

    .line 872
    .local v0, deltaX:F
    iput v1, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 874
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 875
    iget v2, p0, Landroid/widget/ScreenView;->mTouchX:F

    add-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScreenView;->scrollTo(II)V

    .line 880
    :goto_0
    iget-object v2, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 881
    return-void

    .line 877
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 863
    invoke-direct {p0, p2}, Landroid/widget/ScreenView;->sanpByVelocity(I)V

    .line 864
    iget-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 865
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 867
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 782
    iget-boolean v5, p0, Landroid/widget/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v5, :cond_0

    move v5, v7

    .line 845
    :goto_0
    return v5

    .line 784
    :cond_0
    iget-boolean v5, p0, Landroid/widget/ScreenView;->mTouchIntercepted:Z

    if-eqz v5, :cond_1

    .line 785
    invoke-direct {p0, p1}, Landroid/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 788
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 844
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v7, p0, Landroid/widget/ScreenView;->mTouchIntercepted:Z

    move v5, v7

    .line 845
    goto :goto_0

    .line 793
    :pswitch_1
    iget v5, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-nez v5, :cond_3

    .line 794
    invoke-virtual {p0, p1, v7}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 796
    :cond_3
    iget v5, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-ne v5, v7, :cond_2

    .line 798
    iget v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 799
    .local v3, pointerIndex:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    .line 800
    invoke-virtual {p0, p1, v7}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 801
    iget v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 803
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 804
    .local v4, x:F
    iget v5, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v5, v4

    .line 805
    .local v0, deltaX:F
    iput v4, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 807
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_5

    .line 808
    iget v5, p0, Landroid/widget/ScreenView;->mTouchX:F

    add-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v5, v8}, Landroid/widget/ScreenView;->scrollTo(II)V

    goto :goto_1

    .line 810
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 816
    .end local v0           #deltaX:F
    .end local v3           #pointerIndex:I
    .end local v4           #x:F
    :pswitch_2
    iget v5, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-ne v5, v7, :cond_6

    .line 817
    iget v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v5}, Landroid/widget/ScreenView;->sanpByVelocity(I)V

    .line 819
    :cond_6
    invoke-virtual {p0, p1, v8}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 823
    :pswitch_3
    invoke-virtual {p0, p1, v8}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 827
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x8

    .line 829
    .restart local v3       #pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 830
    .local v2, pointerId:I
    iget v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    if-ne v2, v5, :cond_2

    .line 834
    if-nez v3, :cond_7

    move v1, v7

    .line 835
    .local v1, newPointerIndex:I
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 836
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 837
    iget-object v5, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 838
    iget-object v5, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .end local v1           #newPointerIndex:I
    :cond_7
    move v1, v8

    .line 834
    goto :goto_2

    .line 788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public removeAllScreens()V
    .locals 2

    .prologue
    .line 1078
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScreenView;->removeScreensInLayout(II)V

    .line 1079
    invoke-virtual {p0}, Landroid/widget/ScreenView;->requestLayout()V

    .line 1080
    invoke-virtual {p0}, Landroid/widget/ScreenView;->invalidate()V

    .line 1081
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1032
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    .line 1033
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1034
    return-void
.end method

.method public removeIndicator(Landroid/view/View;)V
    .locals 3
    .parameter "indicator"

    .prologue
    .line 1052
    invoke-virtual {p0, p1}, Landroid/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1053
    .local v0, index:I
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1054
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "The view passed through the parameter must be indicator."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1057
    :cond_0
    iget v1, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ScreenView;->mIndicatorCount:I

    .line 1058
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1059
    return-void
.end method

.method public removeScreen(I)V
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1062
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1063
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view specified by the index must be a screen."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :cond_0
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    if-ne p1, v0, :cond_1

    .line 1067
    const/4 v0, 0x0

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 1070
    :cond_1
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1071
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1074
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1075
    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1084
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1087
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1088
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    .line 1090
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1017
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1026
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1020
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Landroid/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 647
    .local v0, screen:I
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 648
    iget v1, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 649
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->snapToScreen(I)V

    .line 650
    const/4 v1, 0x1

    .line 654
    :goto_0
    return v1

    .line 652
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 654
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 512
    iget v0, p0, Landroid/widget/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Landroid/widget/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 514
    int-to-float v0, p1

    iput v0, p0, Landroid/widget/ScreenView;->mTouchX:F

    .line 515
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    .line 516
    iget v0, p0, Landroid/widget/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 517
    iget v0, p0, Landroid/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v0}, Landroid/widget/ScreenView;->updateIndicatorPositions(I)V

    .line 518
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 506
    iget v0, p0, Landroid/widget/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Landroid/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScreenView;->measure(II)V

    .line 507
    iget v0, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Landroid/widget/ScreenView;->mScreenOffset:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScreenView;->scrollTo(II)V

    .line 508
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 1105
    iput-boolean p1, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 1106
    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "margin"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 234
    if-eqz p1, :cond_2

    .line 238
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 239
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 243
    .local v0, leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    .line 244
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Landroid/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 247
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 251
    .local v1, rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    .line 252
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Landroid/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 260
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 261
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 256
    :cond_1
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 257
    .restart local v0       #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v1       #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 263
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 265
    iget-object v2, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 266
    iput-object v3, p0, Landroid/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    .line 267
    iput-object v3, p0, Landroid/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method public setArrowIndicatorResource(IIII)V
    .locals 0
    .parameter "leftOn"
    .parameter "leftOff"
    .parameter "rightOn"
    .parameter "rightOff"

    .prologue
    .line 276
    iput p1, p0, Landroid/widget/ScreenView;->mArrowLeftOnResId:I

    .line 277
    iput p2, p0, Landroid/widget/ScreenView;->mArrowLeftOffResId:I

    .line 278
    iput p3, p0, Landroid/widget/ScreenView;->mArrowRightOnResId:I

    .line 279
    iput p4, p0, Landroid/widget/ScreenView;->mArrowRightOffResId:I

    .line 280
    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 147
    iput p1, p0, Landroid/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 148
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .parameter "screenIndex"

    .prologue
    .line 970
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 971
    iget-boolean v0, p0, Landroid/widget/ScreenView;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 972
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 973
    :cond_0
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->scrollToScreen(I)V

    .line 974
    invoke-virtual {p0}, Landroid/widget/ScreenView;->invalidate()V

    .line 976
    :cond_1
    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 979
    iget v0, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ScreenView;->updateSeekPoints(II)V

    .line 980
    iput p1, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    .line 981
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    .line 982
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 1115
    iput-object p1, p0, Landroid/widget/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1116
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1117
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1118
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1120
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 3
    .parameter "ratio"

    .prologue
    .line 500
    iput p1, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    .line 501
    iget v0, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/ScreenView;->mScreenOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ScreenView;->mScrollLeftBound:I

    .line 502
    iget v0, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/ScreenView;->mScreenOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ScreenView;->mScrollRightBound:I

    .line 503
    return-void
.end method

.method public setOvershootTension(F)V
    .locals 1
    .parameter "tension"

    .prologue
    .line 140
    iput p1, p0, Landroid/widget/ScreenView;->mOvershootTension:F

    .line 141
    iget-object v0, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-static {v0, p1}, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;->access$002(Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;F)F

    .line 144
    :cond_0
    return-void
.end method

.method public setScreenAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 375
    iput p1, p0, Landroid/widget/ScreenView;->mScreenAlignment:I

    .line 376
    return-void
.end method

.method public setScreenOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 379
    iput p1, p0, Landroid/widget/ScreenView;->mScreenOffset:I

    .line 380
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "padding"

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The padding parameter can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iput-object p1, p0, Landroid/widget/ScreenView;->mScreenPadding:Landroid/graphics/Rect;

    .line 372
    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 151
    iput p1, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    .line 152
    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/16 v4, 0x5a

    const/4 v0, 0x1

    const/16 v3, 0x78

    const v2, 0x3fa66666

    const/4 v1, 0x0

    .line 1156
    iput p1, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    .line 1157
    if-nez p1, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setStaticTransformationsEnabled(Z)V

    .line 1159
    iget v0, p0, Landroid/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1194
    :goto_1
    :pswitch_0
    return-void

    .line 1157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1161
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1162
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1166
    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1167
    invoke-virtual {p0, v4}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1170
    :pswitch_3
    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1171
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1174
    :pswitch_4
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1175
    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1178
    :pswitch_5
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1179
    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1184
    :pswitch_6
    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1185
    invoke-virtual {p0, v4}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1188
    :pswitch_7
    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->setOvershootTension(F)V

    .line 1189
    invoke-virtual {p0, v3}, Landroid/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 295
    if-eqz p1, :cond_2

    .line 296
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    .line 298
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 299
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/ScreenView$SliderTouchListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/ScreenView$SliderTouchListener;-><init>(Landroid/widget/ScreenView;Landroid/widget/ScreenView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 305
    :cond_2
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 307
    iput-object v2, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setSeekBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Call setSeekBarPosition first to enable the seek bar support."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    return-void
.end method

.method public setSeekPointResource(I)V
    .locals 0
    .parameter "seekPointResId"

    .prologue
    .line 287
    iput p1, p0, Landroid/widget/ScreenView;->mSeekPointResId:I

    .line 288
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 8
    .parameter "params"
    .parameter "paddingBottom"

    .prologue
    const/16 v7, 0x50

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 317
    if-eqz p1, :cond_2

    .line 318
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 319
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    .line 320
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/ScreenView$SliderTouchListener;

    invoke-direct {v3, p0, v4}, Landroid/widget/ScreenView$SliderTouchListener;-><init>(Landroid/widget/ScreenView;Landroid/widget/ScreenView$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6, v6, v6, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 323
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    .line 324
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    const v3, 0x108033a

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 325
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 329
    .local v0, slideBarBackgroundParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    .line 332
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    const v3, 0x1080339

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 334
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 338
    .local v1, slidePointParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 343
    .end local v0           #slideBarBackgroundParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #slidePointParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 346
    iget-object v2, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 347
    iput-object v4, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    .line 348
    iput-object v4, p0, Landroid/widget/ScreenView;->mSlideBarBackground:Landroid/widget/FrameLayout;

    .line 349
    iput-object v4, p0, Landroid/widget/ScreenView;->mSlidePoint:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public setSlideBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 361
    iget-object v0, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Call setSlideBarPosition first to enable the slide bar support."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    iget-object v0, p0, Landroid/widget/ScreenView;->mSlideBar:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 365
    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 3
    .parameter "ev"
    .parameter "touchState"

    .prologue
    const/4 v2, 0x0

    .line 678
    iput p2, p0, Landroid/widget/ScreenView;->mTouchState:I

    .line 680
    iget v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    if-nez v1, :cond_1

    .line 681
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 682
    iput-boolean v2, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 684
    iget-object v1, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 686
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    if-eqz p1, :cond_2

    .line 691
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    .line 695
    :cond_2
    iget-boolean v1, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_3

    .line 696
    iput-boolean v2, p0, Landroid/widget/ScreenView;->mAllowLongPress:Z

    .line 700
    iget v1, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 701
    .local v0, currentScreen:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 704
    .end local v0           #currentScreen:Landroid/view/View;
    :cond_3
    iget v1, p0, Landroid/widget/ScreenView;->mTouchState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 705
    iget v1, p0, Landroid/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/widget/ScreenView;->mLastMotionX:F

    .line 706
    iget v1, p0, Landroid/widget/ScreenView;->mScrollX:I

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/ScreenView;->mTouchX:F

    .line 707
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/ScreenView;->mSmoothingTime:F

    goto :goto_0
.end method

.method public snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 910
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/ScreenView;->snapToScreen(IIZ)V

    .line 911
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 9
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    const/4 v2, 0x0

    .line 914
    invoke-virtual {p0}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    .line 916
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/ScreenView;->mNextScreen:I

    iget v4, p0, Landroid/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 917
    .local v7, screenDelta:I
    iget v0, p0, Landroid/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Landroid/widget/ScreenView;->mChildScreenWidth:I

    mul-int v6, v0, v1

    .line 918
    .local v6, newX:I
    iget v0, p0, Landroid/widget/ScreenView;->mScrollX:I

    sub-int v0, v6, v0

    iget v1, p0, Landroid/widget/ScreenView;->mScreenOffset:I

    add-int v3, v0, v1

    .line 919
    .local v3, delta:I
    add-int/lit8 v0, v7, 0x1

    iget v1, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    mul-int v5, v0, v1

    .line 921
    .local v5, duration:I
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 925
    :cond_0
    if-eqz p3, :cond_1

    .line 926
    iget-object v0, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7}, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;->setDistance(I)V

    .line 931
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 932
    if-lez p2, :cond_2

    .line 933
    int-to-float v0, v5

    int-to-float v1, v5

    int-to-float v4, p2

    const v8, 0x451c4000

    div-float/2addr v4, v8

    div-float/2addr v1, v4

    const v4, 0x3ecccccd

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 939
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/ScreenView;->awakenScrollBars(I)Z

    .line 940
    iget-object v0, p0, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/widget/ScreenView;->mScrollX:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 941
    invoke-virtual {p0}, Landroid/widget/ScreenView;->invalidate()V

    .line 942
    return-void

    .line 928
    :cond_1
    iget-object v0, p0, Landroid/widget/ScreenView;->mScrollInterpolator:Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Landroid/widget/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_0

    .line 936
    :cond_2
    iget v0, p0, Landroid/widget/ScreenView;->mScreenSnapDuration:I

    add-int/2addr v5, v0

    goto :goto_1
.end method
