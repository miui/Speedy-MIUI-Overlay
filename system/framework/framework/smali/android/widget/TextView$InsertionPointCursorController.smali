.class Landroid/widget/TextView$InsertionPointCursorController;
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
    name = "InsertionPointCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0x7d0


# instance fields
.field private mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

.field private mCoords:[I

.field private final mHandle:Landroid/widget/TextView$HandleView;

.field private final mHider:Ljava/lang/Runnable;

.field private mIsMoving:Z

.field private mIsShowingPanel:Z

.field private mPanel:Landroid/widget/TextView$FloatPanelViewController;

.field private mPreviousDownTime:J

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .parameter

    .prologue
    .line 8318
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8303
    new-instance v1, Landroid/widget/TextView$InsertionPointCursorController$1;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InsertionPointCursorController$1;-><init>(Landroid/widget/TextView$InsertionPointCursorController;)V

    iput-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    .line 8314
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mCoords:[I

    .line 8319
    new-instance v1, Landroid/widget/TextView$HandleView;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p0, v2}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    .line 8320
    new-instance v1, Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x1090073

    invoke-direct {v1, p1, p0, v2}, Landroid/widget/TextView$FloatPanelViewController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    .line 8321
    new-instance v1, Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x1090074

    invoke-direct {v1, p1, p0, v2}, Landroid/widget/TextView$FloatPanelViewController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    .line 8322
    new-instance v0, Landroid/widget/TextView$InsertionPointCursorController$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/TextView$InsertionPointCursorController$2;-><init>(Landroid/widget/TextView$InsertionPointCursorController;Landroid/widget/TextView;)V

    .line 8342
    .local v0, l:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x102022c

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 8343
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x102022e

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 8344
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x1020230

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 8345
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    const v2, 0x1020232

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 8346
    return-void
.end method

.method static synthetic access$2700(Landroid/widget/TextView$InsertionPointCursorController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8296
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hideHandle()V

    return-void
.end method

.method static synthetic access$2800(Landroid/widget/TextView$InsertionPointCursorController;)Landroid/widget/TextView$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8296
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/widget/TextView$InsertionPointCursorController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8296
    iput-boolean p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsShowingPanel:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/widget/TextView$InsertionPointCursorController;)Landroid/widget/TextView$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8296
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    return-object v0
.end method

.method private hideDelayed(I)V
    .locals 4
    .parameter "msec"

    .prologue
    .line 8422
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8423
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8424
    return-void
.end method

.method private hideHandle()V
    .locals 2

    .prologue
    .line 8409
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8410
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8411
    return-void
.end method

.method private showPanelIfNeeded()V
    .locals 1

    .prologue
    .line 8517
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8518
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsShowingPanel:Z

    .line 8519
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 8520
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8522
    :cond_1
    return-void
.end method


# virtual methods
.method public computePanelPosition([I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 8464
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$HandleView;->getHotspotLocationOnScreen([I)V

    .line 8465
    return-void
.end method

.method public computePanelPositionOnBottom()I
    .locals 2

    .prologue
    .line 8470
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$HandleView;->getHotspotLocationOnScreen([I)V

    .line 8471
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mCoords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 8414
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsShowingPanel:Z

    .line 8415
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    .line 8416
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    .line 8417
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8418
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8419
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 8427
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 8486
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8487
    return-void
.end method

.method public onHandleTouchEvent(Landroid/widget/TextView$HandleView;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "handle"
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 8491
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8513
    :cond_0
    :goto_0
    return v4

    .line 8493
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousDownTime:J

    goto :goto_0

    .line 8497
    :pswitch_1
    iput-boolean v4, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsMoving:Z

    .line 8498
    iget-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsShowingPanel:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousDownTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 8499
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    .line 8500
    iput-boolean v4, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsShowingPanel:Z

    goto :goto_0

    .line 8502
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->showPanelIfNeeded()V

    goto :goto_0

    .line 8506
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsMoving:Z

    .line 8507
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8508
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 8491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPaste()V
    .locals 2

    .prologue
    .line 8349
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 8350
    return-void
.end method

.method protected onPasteList()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, -0x2

    .line 8361
    iget-object v8, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    const v9, 0x102022b

    invoke-virtual {v8, v9}, Landroid/widget/TextView$FloatPanelViewController;->getElement(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 8362
    .local v6, ll:Landroid/widget/LinearLayout;
    iget-object v8, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "clipboard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 8363
    .local v0, cm:Landroid/text/ClipboardManager;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8364
    new-instance v4, Landroid/widget/TextView$InsertionPointCursorController$3;

    invoke-direct {v4, p0}, Landroid/widget/TextView$InsertionPointCursorController$3;-><init>(Landroid/widget/TextView$InsertionPointCursorController;)V

    .line 8372
    .local v4, l:Landroid/view/View$OnClickListener;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getHistoryCount()I

    move-result v1

    .line 8373
    .local v1, historyCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8374
    iget-object v8, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 8375
    .local v5, layoutInflater:Landroid/view/LayoutInflater;
    const v8, 0x1090075

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 8376
    .local v7, tv:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->getHistoryText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8377
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8378
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v11, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8379
    const/4 v8, 0x1

    sub-int v8, v1, v8

    if-eq v2, v8, :cond_0

    .line 8380
    new-instance v3, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8381
    .local v3, im:Landroid/widget/ImageView;
    const v8, 0x10803ff

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8382
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8383
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v11, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8373
    .end local v3           #im:Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8387
    .end local v5           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_1
    iget-object v8, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v8}, Landroid/widget/TextView$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 8388
    return-void
.end method

.method protected onSelect()V
    .locals 2

    .prologue
    .line 8357
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    const v1, 0x1020028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 8358
    return-void
.end method

.method protected onSelectAll()V
    .locals 2

    .prologue
    .line 8353
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 8354
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 8475
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 8479
    if-nez p1, :cond_0

    .line 8480
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8482
    :cond_0
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 8392
    iget-object v5, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v5}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    .line 8393
    iput-boolean v7, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsShowingPanel:Z

    .line 8394
    iget-object v5, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v5}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    .line 8396
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8397
    iget-object v5, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v5}, Landroid/widget/TextView$HandleView;->show()V

    .line 8399
    iget-object v5, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 8400
    .local v1, cm:Landroid/text/ClipboardManager;
    new-array v0, v10, [I

    fill-array-data v0, :array_0

    .line 8401
    .local v0, buttons:[I
    new-array v3, v9, [I

    fill-array-data v3, :array_1

    .line 8402
    .local v3, separators:[I
    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getHistoryCount()I

    move-result v2

    .line 8403
    .local v2, historyCount:I
    new-array v4, v10, [Z

    iget-object v5, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Z

    move-result v5

    aput-boolean v5, v4, v7

    iget-object v5, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Z

    move-result v5

    aput-boolean v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;)Z

    move-result v6

    aput-boolean v6, v4, v5

    if-lez v2, :cond_0

    move v5, v8

    :goto_0
    aput-boolean v5, v4, v9

    .line 8404
    .local v4, showHides:[Z
    iget-object v5, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v5, v0, v3, v4}, Landroid/widget/TextView$FloatPanelViewController;->showHideButtons([I[I[Z)V

    .line 8405
    const/16 v5, 0x7d0

    invoke-direct {p0, v5}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    .line 8406
    return-void

    .end local v4           #showHides:[Z
    :cond_0
    move v5, v7

    .line 8403
    goto :goto_0

    .line 8400
    nop

    :array_0
    .array-data 0x4
        0x2ct 0x2t 0x2t 0x1t
        0x2et 0x2t 0x2t 0x1t
        0x30t 0x2t 0x2t 0x1t
        0x32t 0x2t 0x2t 0x1t
    .end array-data

    .line 8401
    :array_1
    .array-data 0x4
        0x2dt 0x2t 0x2t 0x1t
        0x2ft 0x2t 0x2t 0x1t
        0x31t 0x2t 0x2t 0x1t
    .end array-data
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 8442
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8444
    .local v0, offset:I
    if-gez v0, :cond_1

    .line 8446
    const-string v1, "TextView"

    const-string v2, "Update cursor controller position called with no cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8447
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8460
    :cond_0
    :goto_0
    return-void

    .line 8451
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v1}, Landroid/widget/TextView$FloatPanelViewController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v1}, Landroid/widget/TextView$FloatPanelViewController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8452
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    .line 8454
    :cond_2
    iget-boolean v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsShowingPanel:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mIsMoving:Z

    if-nez v1, :cond_3

    .line 8455
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v1}, Landroid/widget/TextView$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 8457
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v1}, Landroid/widget/TextView$FloatPanelViewController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8458
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mClipboardPanel:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v1}, Landroid/widget/TextView$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .locals 3
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8431
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8432
    .local v1, previousOffset:I
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .line 8434
    .local v0, offset:I
    if-eq v0, v1, :cond_0

    .line 8435
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8436
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8438
    :cond_0
    const/16 v2, 0x7d0

    invoke-direct {p0, v2}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    .line 8439
    return-void
.end method
