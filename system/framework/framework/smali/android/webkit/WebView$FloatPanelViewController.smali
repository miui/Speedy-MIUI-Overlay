.class Landroid/webkit/WebView$FloatPanelViewController;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatPanelViewController"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContainer:Landroid/widget/PopupWindow;

.field private mContent:Landroid/widget/FloatPanelView;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 951
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebView$FloatPanelViewController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 954
    iput-object p1, p0, Landroid/webkit/WebView$FloatPanelViewController;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/webkit/WebView;->access$200(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10102c8

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    .line 957
    iget-object v1, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 958
    iget-object v1, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 959
    invoke-static {p1}, Landroid/webkit/WebView;->access$300(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 960
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x1090080

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FloatPanelView;

    iput-object v1, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    .line 961
    iget-object v1, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 962
    iget-object v1, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 963
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 980
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 4
    .parameter "id"
    .parameter "l"

    .prologue
    .line 1032
    iget-object v1, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v1, p1}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1033
    .local v0, v:Landroid/view/View;
    sget-boolean v1, Landroid/webkit/WebView$FloatPanelViewController;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1034
    :cond_0
    if-nez v0, :cond_1

    .line 1035
    const-string/jumbo v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatPanelView.setButtonHandler, could not find view, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :goto_0
    return-void

    .line 1038
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public show(III)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "y1"

    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/webkit/WebView$FloatPanelViewController;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 967
    iget-object v3, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/webkit/WebView$FloatPanelViewController;->this$0:Landroid/webkit/WebView;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v6}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, p1, v6

    iget-object v7, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v7}, Landroid/widget/FloatPanelView;->getHeight()I

    move-result v7

    sub-int v7, p2, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 968
    move v0, p1

    .local v0, _x:I
    move v1, p2

    .local v1, _y:I
    move v2, p3

    .line 969
    .local v2, _y1:I
    iget-object v3, p0, Landroid/webkit/WebView$FloatPanelViewController;->this$0:Landroid/webkit/WebView;

    new-instance v4, Landroid/webkit/WebView$FloatPanelViewController$1;

    invoke-direct {v4, p0, v0, v1, v2}, Landroid/webkit/WebView$FloatPanelViewController$1;-><init>(Landroid/webkit/WebView$FloatPanelViewController;III)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 975
    .end local v0           #_x:I
    .end local v1           #_y:I
    .end local v2           #_y1:I
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/WebView$FloatPanelViewController;->updatePosition(III)V

    .line 976
    return-void
.end method

.method public updatePosition(III)V
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "y1"

    .prologue
    .line 993
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v2, p1, v9

    .line 994
    .local v2, left:I
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getHeight()I

    move-result v9

    sub-int v6, p2, v9

    .line 995
    .local v6, top:I
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->this$0:Landroid/webkit/WebView;

    invoke-static {v9}, Landroid/webkit/WebView;->access$400(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 996
    .local v5, statusBarHeight:I
    const/4 v0, 0x0

    .line 997
    .local v0, atBottom:Z
    if-ge v6, v5, :cond_2

    .line 998
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/FloatPanelView;->setArrow(Z)V

    .line 999
    move v6, p3

    .line 1000
    const/4 v0, 0x1

    .line 1006
    :goto_0
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->this$0:Landroid/webkit/WebView;

    invoke-static {v9}, Landroid/webkit/WebView;->access$500(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1007
    .local v7, wm:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1008
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1009
    .local v3, screenWidth:I
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    div-int/lit8 v8, v9, 0x2

    .line 1010
    .local v8, xpos:I
    if-gez v2, :cond_3

    .line 1011
    add-int/2addr v8, v2

    .line 1012
    const/4 v2, 0x0

    .line 1017
    :cond_0
    :goto_1
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9, v8}, Landroid/widget/FloatPanelView;->setArrowPos(I)V

    .line 1019
    if-eqz v0, :cond_1

    .line 1020
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->this$0:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebView$FloatPanelViewController;->this$0:Landroid/webkit/WebView;

    invoke-static {v10}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->contentToScreenX(I)I

    move-result v4

    .line 1023
    .local v4, selectionEndX:I
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x14

    if-lt v9, v4, :cond_1

    add-int/lit8 v9, v4, 0x14

    if-gt v2, v9, :cond_1

    .line 1025
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->this$0:Landroid/webkit/WebView;

    const/16 v10, 0x23

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v9

    add-int/2addr v6, v9

    .line 1028
    .end local v4           #selectionEndX:I
    :cond_1
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v10, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v10}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v11}, Landroid/widget/FloatPanelView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v2, v6, v10, v11}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1029
    return-void

    .line 1002
    .end local v1           #display:Landroid/view/Display;
    .end local v3           #screenWidth:I
    .end local v7           #wm:Landroid/view/WindowManager;
    .end local v8           #xpos:I
    :cond_2
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/FloatPanelView;->setArrow(Z)V

    goto :goto_0

    .line 1013
    .restart local v1       #display:Landroid/view/Display;
    .restart local v3       #screenWidth:I
    .restart local v7       #wm:Landroid/view/WindowManager;
    .restart local v8       #xpos:I
    :cond_3
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    add-int/2addr v9, v2

    if-le v9, v3, :cond_0

    .line 1014
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    add-int/2addr v9, v2

    sub-int/2addr v9, v3

    add-int/2addr v8, v9

    .line 1015
    iget-object v9, p0, Landroid/webkit/WebView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    sub-int v2, v3, v9

    goto :goto_1
.end method
