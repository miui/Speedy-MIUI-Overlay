.class public Landroid/widget/SlidingButton;
.super Landroid/widget/CheckBox;
.source "SlidingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingButton$1;,
        Landroid/widget/SlidingButton$SlidingHandler;,
        Landroid/widget/SlidingButton$OnCheckedChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final TAP_THRESHOLD:I = 0x6


# instance fields
.field private mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBar:Landroid/graphics/drawable/BitmapDrawable;

.field private mBarSlice:[I

.field private mBarWidth:I

.field private mCurrentAnimationTime:J

.field private mFrame:Landroid/graphics/drawable/BitmapDrawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLastX:I

.field private mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

.field private mOnCheckedChangedListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

.field private mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

.field private mOriginalTouchPointX:I

.field private mPressedSlider:Landroid/graphics/drawable/BitmapDrawable;

.field private mSlider:Landroid/graphics/drawable/BitmapDrawable;

.field private mSliderMoved:Z

.field private mSliderOffset:I

.field private mSliderPosition:I

.field private mSliderWidth:I

.field private mTapThreshold:I

.field private mTracking:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingButton;->mAnimating:Z

    .line 50
    new-instance v0, Landroid/widget/SlidingButton$SlidingHandler;

    invoke-direct {v0, p0, v1}, Landroid/widget/SlidingButton$SlidingHandler;-><init>(Landroid/widget/SlidingButton;Landroid/widget/SlidingButton$1;)V

    iput-object v0, p0, Landroid/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    .line 55
    const/high16 v0, 0x4316

    iput v0, p0, Landroid/widget/SlidingButton;->mAnimatedVelocity:F

    .line 62
    iput-object v1, p0, Landroid/widget/SlidingButton;->mOnCheckedChangedListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    .line 70
    invoke-direct {p0}, Landroid/widget/SlidingButton;->initialize()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingButton;->mAnimating:Z

    .line 50
    new-instance v0, Landroid/widget/SlidingButton$SlidingHandler;

    invoke-direct {v0, p0, v1}, Landroid/widget/SlidingButton$SlidingHandler;-><init>(Landroid/widget/SlidingButton;Landroid/widget/SlidingButton$1;)V

    iput-object v0, p0, Landroid/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    .line 55
    const/high16 v0, 0x4316

    iput v0, p0, Landroid/widget/SlidingButton;->mAnimatedVelocity:F

    .line 62
    iput-object v1, p0, Landroid/widget/SlidingButton;->mOnCheckedChangedListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    .line 75
    invoke-direct {p0}, Landroid/widget/SlidingButton;->initialize()V

    .line 76
    return-void
.end method

.method static synthetic access$100(Landroid/widget/SlidingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/SlidingButton;->doAnimation()V

    return-void
.end method

.method private animateOff()V
    .locals 1

    .prologue
    .line 205
    const/high16 v0, -0x3cea

    invoke-direct {p0, v0}, Landroid/widget/SlidingButton;->performFling(F)V

    .line 206
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->invalidate()V

    .line 207
    return-void
.end method

.method private animateOn()V
    .locals 1

    .prologue
    .line 200
    const/high16 v0, 0x4316

    invoke-direct {p0, v0}, Landroid/widget/SlidingButton;->performFling(F)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->invalidate()V

    .line 202
    return-void
.end method

.method private animateToggle()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Landroid/widget/SlidingButton;->animateOff()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingButton;->animateOn()V

    goto :goto_0
.end method

.method private cutEdge(II[I)V
    .locals 11
    .parameter "baseWidth"
    .parameter "baseHeight"
    .parameter "basePixels"

    .prologue
    const/4 v2, 0x0

    .line 294
    const v10, 0xffffff

    .line 295
    .local v10, sRGBMask:I
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080353

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    .local v0, alphaCutter:Landroid/graphics/Bitmap;
    mul-int v3, p1, p2

    new-array v1, v3, [I

    .line 297
    .local v1, alphaPixels:[I
    const/16 v9, 0x18

    .local v9, sAlphaShift:I
    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    .line 298
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 300
    mul-int v2, p1, p2

    const/4 v3, 0x1

    sub-int v8, v2, v3

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_0

    .line 301
    aget v2, p3, v8

    aget v3, p3, v8

    ushr-int/2addr v3, v9

    aget v4, v1, v8

    ushr-int/2addr v4, v9

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v9

    add-int/2addr v3, v10

    and-int/2addr v2, v3

    aput v2, p3, v8

    .line 300
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method private doAnimation()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/4 v2, 0x0

    .line 232
    iget-boolean v0, p0, Landroid/widget/SlidingButton;->mAnimating:Z

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-direct {p0}, Landroid/widget/SlidingButton;->incrementAnimation()V

    .line 236
    iget v0, p0, Landroid/widget/SlidingButton;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/SlidingButton;->moveSlider(I)V

    .line 237
    iget v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Landroid/widget/SlidingButton;->mSliderPosition:I

    if-lt v0, v1, :cond_4

    .line 238
    :cond_2
    iget-object v0, p0, Landroid/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iput-boolean v2, p0, Landroid/widget/SlidingButton;->mAnimating:Z

    .line 240
    iget v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Landroid/widget/SlidingButton;->mSliderPosition:I

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Landroid/widget/SlidingButton;->mOnCheckedChangedListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/widget/SlidingButton;->mOnCheckedChangedListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    invoke-virtual {p0}, Landroid/widget/SlidingButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/SlidingButton$OnCheckedChangedListener;->onCheckedChanged(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 240
    goto :goto_1

    .line 245
    :cond_4
    iget-wide v0, p0, Landroid/widget/SlidingButton;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SlidingButton;->mCurrentAnimationTime:J

    .line 246
    iget-object v0, p0, Landroid/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Landroid/widget/SlidingButton;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private drawSlidingBar(Landroid/graphics/Canvas;)V
    .locals 15
    .parameter "canvas"

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080351

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    .local v0, bar:Landroid/graphics/Bitmap;
    iget v1, p0, Landroid/widget/SlidingButton;->mSliderPosition:I

    iget v2, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    sub-int v4, v1, v2

    .line 283
    .local v4, barOffset:I
    iget-object v1, p0, Landroid/widget/SlidingButton;->mBarSlice:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/SlidingButton;->mWidth:I

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v7, p0, Landroid/widget/SlidingButton;->mHeight:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 284
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    iget v1, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v2, p0, Landroid/widget/SlidingButton;->mHeight:I

    iget-object v3, p0, Landroid/widget/SlidingButton;->mBarSlice:[I

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/SlidingButton;->cutEdge(II[I)V

    .line 288
    iget-object v6, p0, Landroid/widget/SlidingButton;->mBarSlice:[I

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/SlidingButton;->mWidth:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v12, p0, Landroid/widget/SlidingButton;->mHeight:I

    const/4 v13, 0x1

    iget-object v1, p0, Landroid/widget/SlidingButton;->mBar:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 290
    return-void
.end method

.method private incrementAnimation()V
    .locals 6

    .prologue
    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 252
    .local v0, now:J
    iget-wide v4, p0, Landroid/widget/SlidingButton;->mAnimationLastTime:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float v3, v4, v5

    .line 253
    .local v3, t:F
    iget v2, p0, Landroid/widget/SlidingButton;->mAnimationPosition:F

    .line 254
    .local v2, position:F
    iget v4, p0, Landroid/widget/SlidingButton;->mAnimatedVelocity:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    iput v4, p0, Landroid/widget/SlidingButton;->mAnimationPosition:F

    .line 255
    iput-wide v0, p0, Landroid/widget/SlidingButton;->mAnimationLastTime:J

    .line 256
    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/SlidingButton;->setDrawingCacheEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 85
    .local v0, density:F
    const/high16 v1, 0x40c0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/SlidingButton;->mTapThreshold:I

    .line 87
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080352

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Landroid/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080351

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Landroid/widget/SlidingButton;->mBar:Landroid/graphics/drawable/BitmapDrawable;

    .line 89
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080356

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Landroid/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 90
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080357

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Landroid/widget/SlidingButton;->mPressedSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 91
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080355

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Landroid/widget/SlidingButton;->mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080354

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Landroid/widget/SlidingButton;->mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    iget-object v1, p0, Landroid/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Landroid/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    iget-object v1, p0, Landroid/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/SlidingButton;->mSliderWidth:I

    .line 96
    iget-object v1, p0, Landroid/widget/SlidingButton;->mBar:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/SlidingButton;->mBarWidth:I

    .line 97
    iget-object v1, p0, Landroid/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/SlidingButton;->mWidth:I

    .line 98
    iget-object v1, p0, Landroid/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/SlidingButton;->mHeight:I

    .line 99
    iget v1, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v2, p0, Landroid/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SlidingButton;->mSliderPosition:I

    .line 102
    iget-object v1, p0, Landroid/widget/SlidingButton;->mBar:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Landroid/widget/SlidingButton;->mBarWidth:I

    iget v3, p0, Landroid/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 103
    iget-object v1, p0, Landroid/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v3, p0, Landroid/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 104
    iget-object v1, p0, Landroid/widget/SlidingButton;->mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v3, p0, Landroid/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 105
    iget-object v1, p0, Landroid/widget/SlidingButton;->mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v3, p0, Landroid/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 107
    iget v1, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v2, p0, Landroid/widget/SlidingButton;->mHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SlidingButton;->mBarSlice:[I

    .line 108
    return-void
.end method

.method private moveSlider(I)V
    .locals 2
    .parameter "offsetX"

    .prologue
    .line 211
    iget v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    .line 212
    iget v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    if-gez v0, :cond_1

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    .line 217
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->invalidate()V

    .line 218
    return-void

    .line 214
    :cond_1
    iget v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Landroid/widget/SlidingButton;->mSliderPosition:I

    if-le v0, v1, :cond_0

    .line 215
    iget v0, p0, Landroid/widget/SlidingButton;->mSliderPosition:I

    iput v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    goto :goto_0
.end method

.method private performFling(F)V
    .locals 6
    .parameter "velocity"

    .prologue
    const/16 v4, 0x3e8

    .line 221
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SlidingButton;->mAnimating:Z

    .line 222
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/SlidingButton;->mAnimationPosition:F

    .line 223
    iput p1, p0, Landroid/widget/SlidingButton;->mAnimatedVelocity:F

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 225
    .local v0, now:J
    iput-wide v0, p0, Landroid/widget/SlidingButton;->mAnimationLastTime:J

    .line 226
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/widget/SlidingButton;->mCurrentAnimationTime:J

    .line 227
    iget-object v2, p0, Landroid/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iget-object v2, p0, Landroid/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Landroid/widget/SlidingButton;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 229
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 262
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/widget/SlidingButton;->mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingButton;->mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SlidingButton;->drawSlidingBar(Landroid/graphics/Canvas;)V

    .line 271
    iget-object v0, p0, Landroid/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 273
    iget-object v0, p0, Landroid/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/SlidingButton;->mSliderWidth:I

    iget v4, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/SlidingButton;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 274
    iget-object v0, p0, Landroid/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 130
    iget v0, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v1, p0, Landroid/widget/SlidingButton;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/SlidingButton;->setMeasuredDimension(II)V

    .line 131
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v7

    .line 188
    :goto_0
    return v4

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 140
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 141
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 142
    .local v3, y:I
    new-instance v1, Landroid/graphics/Rect;

    iget v4, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    iget v5, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    iget v6, p0, Landroid/widget/SlidingButton;->mSliderWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/widget/SlidingButton;->mHeight:I

    invoke-direct {v1, v4, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    .local v1, sliderFrame:Landroid/graphics/Rect;
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v8

    .line 188
    goto :goto_0

    .line 146
    :pswitch_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    iput-boolean v8, p0, Landroid/widget/SlidingButton;->mTracking:Z

    .line 148
    iget-object v4, p0, Landroid/widget/SlidingButton;->mPressedSlider:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v4, p0, Landroid/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 149
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->invalidate()V

    .line 153
    :goto_2
    iput v2, p0, Landroid/widget/SlidingButton;->mLastX:I

    .line 154
    iput v2, p0, Landroid/widget/SlidingButton;->mOriginalTouchPointX:I

    .line 155
    iput-boolean v7, p0, Landroid/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 151
    :cond_2
    iput-boolean v7, p0, Landroid/widget/SlidingButton;->mTracking:Z

    goto :goto_2

    .line 159
    :pswitch_1
    iget-boolean v4, p0, Landroid/widget/SlidingButton;->mTracking:Z

    if-eqz v4, :cond_1

    .line 160
    iget v4, p0, Landroid/widget/SlidingButton;->mLastX:I

    sub-int v4, v2, v4

    invoke-direct {p0, v4}, Landroid/widget/SlidingButton;->moveSlider(I)V

    .line 161
    iput v2, p0, Landroid/widget/SlidingButton;->mLastX:I

    .line 162
    iget v4, p0, Landroid/widget/SlidingButton;->mOriginalTouchPointX:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/widget/SlidingButton;->mTapThreshold:I

    if-lt v4, v5, :cond_1

    .line 163
    iput-boolean v8, p0, Landroid/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 170
    :pswitch_2
    iget-boolean v4, p0, Landroid/widget/SlidingButton;->mTracking:Z

    if-eqz v4, :cond_5

    .line 171
    iget-boolean v4, p0, Landroid/widget/SlidingButton;->mSliderMoved:Z

    if-nez v4, :cond_3

    .line 172
    invoke-direct {p0}, Landroid/widget/SlidingButton;->animateToggle()V

    .line 183
    :goto_3
    iput-boolean v7, p0, Landroid/widget/SlidingButton;->mTracking:Z

    .line 184
    iput-boolean v7, p0, Landroid/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 174
    :cond_3
    iget v4, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    if-ltz v4, :cond_4

    iget v4, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    iget v5, p0, Landroid/widget/SlidingButton;->mSliderPosition:I

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_4

    .line 175
    invoke-direct {p0}, Landroid/widget/SlidingButton;->animateOff()V

    goto :goto_3

    .line 177
    :cond_4
    invoke-direct {p0}, Landroid/widget/SlidingButton;->animateOn()V

    goto :goto_3

    .line 181
    :cond_5
    invoke-direct {p0}, Landroid/widget/SlidingButton;->animateToggle()V

    goto :goto_3

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 125
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget v0, p0, Landroid/widget/SlidingButton;->mWidth:I

    iget v1, p0, Landroid/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    .line 118
    :goto_0
    iget-object v0, p0, Landroid/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Landroid/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 119
    invoke-virtual {p0}, Landroid/widget/SlidingButton;->invalidate()V

    .line 120
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SlidingButton;->mSliderOffset:I

    goto :goto_0
.end method

.method public setOnCheckedChangedListener(Landroid/widget/SlidingButton$OnCheckedChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/widget/SlidingButton;->mOnCheckedChangedListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    .line 66
    return-void
.end method
