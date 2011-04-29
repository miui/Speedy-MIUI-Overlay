.class Landroid/widget/TextView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mCoords1:[I

.field private mCoords2:[I

.field private mEndHandle:Landroid/widget/TextView$HandleView;

.field private mIsMoving:Z

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPanel:Landroid/widget/TextView$FloatPanelViewController;

.field private mPreviousTapPositionX:I

.field private mPreviousTapPositionY:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$HandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 8547
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8533
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 8538
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords1:[I

    .line 8539
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords2:[I

    .line 8541
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords:[I

    .line 8548
    new-instance v1, Landroid/widget/TextView$HandleView;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    .line 8549
    new-instance v1, Landroid/widget/TextView$HandleView;

    invoke-direct {v1, p1, p0, v3}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    .line 8550
    new-instance v1, Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x1090076

    invoke-direct {v1, p1, p0, v2}, Landroid/widget/TextView$FloatPanelViewController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    .line 8551
    new-instance v0, Landroid/widget/TextView$SelectionModifierCursorController$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController$1;-><init>(Landroid/widget/TextView$SelectionModifierCursorController;Landroid/widget/TextView;)V

    .line 8567
    .local v0, l:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x1020235

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 8568
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x1020236

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 8569
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x1020230

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 8570
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 8571
    return-void
.end method

.method static synthetic access$3600(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8525
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    return-object v0
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 8751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 8752
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 8753
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .line 8754
    .local v3, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 8755
    .local v4, y:I
    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/TextView;->getOffset(II)I

    move-result v1

    .line 8756
    .local v1, offset:I
    iget v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v5, :cond_0

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8757
    :cond_0
    iget v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v5, :cond_1

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 8752
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8759
    .end local v1           #offset:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    return-void
.end method


# virtual methods
.method public computePanelPosition([I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8605
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$HandleView;->getHotspotLocationOnScreen([I)V

    .line 8606
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    aput v0, p1, v3

    .line 8607
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$HandleView;->getHotspotLocationOnScreen([I)V

    .line 8609
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_0

    .line 8610
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v2

    .line 8615
    :goto_0
    return-void

    .line 8612
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 8613
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords1:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v2

    goto :goto_0
.end method

.method public computePanelPositionOnBottom()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 8619
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView$HandleView;->getHotspotLocationOnScreen([I)V

    .line 8620
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 8621
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    add-int v2, v3, v4

    .line 8622
    .local v2, maxBottom:I
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 8624
    .local v1, handleHeight:I
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mCoords2:[I

    aget v3, v3, v5

    add-int v0, v3, v1

    .line 8625
    .local v0, endHandleBottom:I
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v3}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    return v3

    :cond_0
    move v3, v2

    goto :goto_0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 8766
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 8762
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 8629
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8630
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8631
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    .line 8632
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    .line 8633
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 8777
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 8636
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method protected onCopy()V
    .locals 2

    .prologue
    .line 8582
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 8583
    return-void
.end method

.method protected onCut()V
    .locals 2

    .prologue
    .line 8578
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 8579
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 8787
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/TextView$HandleView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "handle"
    .parameter "ev"

    .prologue
    .line 8791
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8802
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 8794
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 8797
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8798
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 8791
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPaste()V
    .locals 2

    .prologue
    .line 8574
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 8575
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 8698
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->access$3900(Landroid/widget/TextView;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 8744
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x0

    return v9

    .line 8701
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 8702
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 8705
    .local v8, y:I
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v7, v8}, Landroid/widget/TextView;->getOffset(II)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8708
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v4, v9, v11

    .line 8709
    .local v4, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-gtz v9, :cond_1

    .line 8710
    iget v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:I

    sub-int v0, v7, v9

    .line 8711
    .local v0, deltaX:I
    iget v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:I

    sub-int v1, v8, v9

    .line 8712
    .local v1, deltaY:I
    mul-int v9, v0, v0

    mul-int v10, v1, v1

    add-int v2, v9, v10

    .line 8713
    .local v2, distanceSquared:I
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 8714
    .local v3, doubleTapSlop:I
    mul-int v6, v3, v3

    .line 8715
    .local v6, slopSquared:I
    if-ge v2, v6, :cond_1

    .line 8716
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)V

    .line 8717
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/widget/TextView;->access$4002(Landroid/widget/TextView;Z)Z

    .line 8720
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distanceSquared:I
    .end local v3           #doubleTapSlop:I
    .end local v6           #slopSquared:I
    :cond_1
    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:I

    .line 8721
    iput v8, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:I

    goto :goto_0

    .line 8729
    .end local v4           #duration:J
    .end local v7           #x:I
    .end local v8           #y:I
    :pswitch_2
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8731
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 8736
    :pswitch_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsMoving:Z

    .line 8737
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto :goto_0

    .line 8740
    :pswitch_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsMoving:Z

    goto :goto_0

    .line 8699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 8781
    if-nez p1, :cond_0

    .line 8782
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 8784
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 8770
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8771
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 8586
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8602
    :goto_0
    return-void

    .line 8590
    :cond_0
    iput-boolean v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    .line 8591
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->updatePosition()V

    .line 8592
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v3}, Landroid/widget/TextView$HandleView;->show()V

    .line 8593
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v3}, Landroid/widget/TextView$HandleView;->show()V

    .line 8595
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v3}, Landroid/widget/TextView$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 8596
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;)V

    .line 8598
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 8599
    .local v0, buttons:[I
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    .line 8600
    .local v1, separators:[I
    new-array v2, v6, [Z

    const/4 v3, 0x0

    aput-boolean v4, v2, v3

    aput-boolean v4, v2, v4

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 8601
    .local v2, showHides:[Z
    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/TextView$FloatPanelViewController;->showHideButtons([I[I[Z)V

    goto :goto_0

    .line 8598
    :array_0
    .array-data 0x4
        0x35t 0x2t 0x2t 0x1t
        0x36t 0x2t 0x2t 0x1t
        0x30t 0x2t 0x2t 0x1t
    .end array-data

    .line 8599
    :array_1
    .array-data 0x4
        0x2dt 0x2t 0x2t 0x1t
        0x2ft 0x2t 0x2t 0x1t
    .end array-data
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8674
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8693
    :cond_0
    :goto_0
    return-void

    .line 8678
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8679
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8681
    .local v0, selectionEnd:I
    if-ltz v1, :cond_2

    if-gez v0, :cond_3

    .line 8683
    :cond_2
    const-string v2, "TextView"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8684
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 8688
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    .line 8689
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    .line 8690
    iget-boolean v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsMoving:Z

    if-nez v2, :cond_0

    .line 8691
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/TextView$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .locals 5
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8640
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 8641
    .local v3, selectionStart:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8643
    .local v2, selectionEnd:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v4, :cond_1

    move v1, v3

    .line 8644
    .local v1, previousOffset:I
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .line 8647
    .local v0, offset:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v4, :cond_4

    .line 8648
    if-eq v3, v0, :cond_0

    if-le v0, v2, :cond_2

    .line 8671
    :cond_0
    :goto_1
    return-void

    .end local v0           #offset:I
    .end local v1           #previousOffset:I
    :cond_1
    move v1, v2

    .line 8643
    goto :goto_0

    .line 8653
    .restart local v0       #offset:I
    .restart local v1       #previousOffset:I
    :cond_2
    if-ne v0, v2, :cond_3

    .line 8654
    const/4 v4, 0x1

    sub-int v0, v2, v4

    .line 8656
    :cond_3
    move v3, v0

    .line 8669
    :goto_2
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8670
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->updatePosition()V

    goto :goto_1

    .line 8658
    :cond_4
    if-eq v2, v0, :cond_0

    if-lt v0, v3, :cond_0

    .line 8663
    if-ne v0, v3, :cond_5

    .line 8664
    add-int/lit8 v0, v3, 0x1

    .line 8666
    :cond_5
    move v2, v0

    goto :goto_2
.end method
