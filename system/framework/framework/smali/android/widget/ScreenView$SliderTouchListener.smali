.class Landroid/widget/ScreenView$SliderTouchListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderTouchListener"
.end annotation


# static fields
.field private static final DIRECTION_ZONE:I = 0xa

.field private static final SCROLL_ZONE:I = 0x5


# instance fields
.field private mDirection:I

.field private mLastX:F

.field final synthetic this$0:Landroid/widget/ScreenView;


# direct methods
.method private constructor <init>(Landroid/widget/ScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 1290
    iput-object p1, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ScreenView;Landroid/widget/ScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1290
    invoke-direct {p0, p1}, Landroid/widget/ScreenView$SliderTouchListener;-><init>(Landroid/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1297
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1298
    .local v3, sliderWidth:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-int v7, v3, v9

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1299
    .local v5, x:F
    iget-object v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    invoke-virtual {v6}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v2

    .line 1300
    .local v2, screenCount:I
    int-to-float v6, v2

    mul-float/2addr v6, v5

    int-to-float v7, v3

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 1302
    .local v1, pos:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1333
    :cond_0
    :goto_0
    return v9

    .line 1304
    :pswitch_0
    iput v5, p0, Landroid/widget/ScreenView$SliderTouchListener;->mLastX:F

    .line 1305
    iput v10, p0, Landroid/widget/ScreenView$SliderTouchListener;->mDirection:I

    .line 1306
    iget-object v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    iget-object v6, v6, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    iget-object v6, v6, Landroid/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1307
    :cond_1
    iget-object v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    const/4 v7, 0x3

    invoke-virtual {v6, p2, v7}, Landroid/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1310
    :pswitch_1
    iget v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->mLastX:F

    sub-float v0, v5, v6

    .line 1312
    .local v0, delta:F
    iget v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->mDirection:I

    if-nez v6, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40a0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    :cond_2
    iget v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->mDirection:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    iget v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->mDirection:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    const/high16 v7, -0x3ee0

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 1317
    :cond_3
    cmpl-float v6, v0, v8

    if-lez v6, :cond_4

    move v6, v9

    :goto_1
    iput v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->mDirection:I

    .line 1318
    iput v5, p0, Landroid/widget/ScreenView$SliderTouchListener;->mLastX:F

    .line 1319
    iget-object v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    invoke-virtual {v6, v1}, Landroid/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 1320
    iget-object v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    iget v6, v6, Landroid/widget/ScreenView;->mChildScreenWidth:I

    mul-int v4, v2, v6

    .line 1323
    .local v4, totalScreenWidth:I
    iget-object v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    int-to-float v7, v4

    mul-float/2addr v7, v5

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    iget v8, v8, Landroid/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7, v10}, Landroid/widget/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1317
    .end local v4           #totalScreenWidth:I
    :cond_4
    const/4 v6, -0x1

    goto :goto_1

    .line 1328
    .end local v0           #delta:F
    :pswitch_2
    iget-object v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    invoke-virtual {v6, v1}, Landroid/widget/ScreenView;->snapToScreen(I)V

    .line 1329
    iget-object v6, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    iget-object v7, p0, Landroid/widget/ScreenView$SliderTouchListener;->this$0:Landroid/widget/ScreenView;

    iget v7, v7, Landroid/widget/ScreenView;->mCurrentScreen:I

    invoke-static {v6, v7, v1}, Landroid/widget/ScreenView;->access$400(Landroid/widget/ScreenView;II)V

    goto :goto_0

    .line 1302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
