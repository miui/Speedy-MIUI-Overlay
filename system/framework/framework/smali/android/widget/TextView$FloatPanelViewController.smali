.class Landroid/widget/TextView$FloatPanelViewController;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
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

.field private mController:Landroid/widget/TextView$CursorController;

.field private mPos:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7921
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/widget/TextView$FloatPanelViewController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V
    .locals 6
    .parameter
    .parameter "controller"
    .parameter "resId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 7926
    iput-object p1, p0, Landroid/widget/TextView$FloatPanelViewController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7925
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mPos:[I

    .line 7927
    iput-object p2, p0, Landroid/widget/TextView$FloatPanelViewController;->mController:Landroid/widget/TextView$CursorController;

    .line 7928
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/TextView;->access$1500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10102c8

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    .line 7930
    iget-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 7931
    iget-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 7932
    invoke-static {p1}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 7933
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FloatPanelView;

    iput-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    .line 7934
    iget-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7935
    iget-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 7936
    return-void
.end method


# virtual methods
.method public getElement(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 8014
    iget-object v0, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 7946
    iget-object v0, p0, Landroid/widget/TextView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7947
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 7950
    iget-object v0, p0, Landroid/widget/TextView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 4
    .parameter "id"
    .parameter "l"

    .prologue
    .line 7994
    iget-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v1, p1}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7995
    .local v0, v:Landroid/view/View;
    sget-boolean v1, Landroid/widget/TextView$FloatPanelViewController;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 7996
    :cond_0
    if-nez v0, :cond_1

    .line 7997
    const-string v1, "TextView"

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

    .line 8001
    :goto_0
    return-void

    .line 8000
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7939
    iget-object v0, p0, Landroid/widget/TextView$FloatPanelViewController;->mController:Landroid/widget/TextView$CursorController;

    iget-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mPos:[I

    invoke-interface {v0, v1}, Landroid/widget/TextView$CursorController;->computePanelPosition([I)V

    .line 7940
    iget-object v0, p0, Landroid/widget/TextView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$FloatPanelViewController;->mPos:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v3}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$FloatPanelViewController;->mPos:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v4}, Landroid/widget/FloatPanelView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/TextView$FloatPanelViewController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7942
    invoke-virtual {p0}, Landroid/widget/TextView$FloatPanelViewController;->updatePosition()V

    .line 7943
    return-void
.end method

.method public showAndUpdatePositionAsync()V
    .locals 2

    .prologue
    .line 7954
    invoke-virtual {p0}, Landroid/widget/TextView$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7955
    invoke-virtual {p0}, Landroid/widget/TextView$FloatPanelViewController;->show()V

    .line 7960
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$FloatPanelViewController;->this$0:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView$FloatPanelViewController$1;

    invoke-direct {v1, p0}, Landroid/widget/TextView$FloatPanelViewController$1;-><init>(Landroid/widget/TextView$FloatPanelViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 7965
    return-void
.end method

.method public showElement(IZ)V
    .locals 4
    .parameter "id"
    .parameter "show"

    .prologue
    .line 8004
    iget-object v1, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v1, p1}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8005
    .local v0, v:Landroid/view/View;
    sget-boolean v1, Landroid/widget/TextView$FloatPanelViewController;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 8006
    :cond_0
    if-nez v0, :cond_1

    .line 8007
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FloatPanelView.showButton, could not find view, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8011
    :goto_0
    return-void

    .line 8010
    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public showHideButtons([I[I[Z)V
    .locals 6
    .parameter "buttons"
    .parameter "separators"
    .parameter "visibility"

    .prologue
    const/4 v5, 0x1

    .line 8018
    sget-boolean v3, Landroid/widget/TextView$FloatPanelViewController;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    array-length v3, p1

    array-length v4, p2

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, p1

    array-length v4, p3

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 8019
    :cond_1
    const/4 v1, 0x1

    .line 8020
    .local v1, isFirstShow:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_5

    .line 8021
    aget-boolean v2, p3, v0

    .line 8022
    .local v2, s:Z
    aget v3, p1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView$FloatPanelViewController;->showElement(IZ)V

    .line 8023
    if-lez v0, :cond_3

    .line 8024
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 8025
    const/4 v1, 0x0

    .line 8028
    :cond_2
    sub-int v3, v0, v5

    aget v3, p2, v3

    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {p0, v3, v4}, Landroid/widget/TextView$FloatPanelViewController;->showElement(IZ)V

    .line 8020
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8028
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 8031
    .end local v2           #s:Z
    :cond_5
    return-void
.end method

.method public updatePosition()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 7968
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mController:Landroid/widget/TextView$CursorController;

    iget-object v10, p0, Landroid/widget/TextView$FloatPanelViewController;->mPos:[I

    invoke-interface {v9, v10}, Landroid/widget/TextView$CursorController;->computePanelPosition([I)V

    .line 7969
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mPos:[I

    aget v6, v9, v11

    .line 7970
    .local v6, x:I
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mPos:[I

    aget v8, v9, v12

    .line 7971
    .local v8, y:I
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v1, v6, v9

    .line 7972
    .local v1, left:I
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getHeight()I

    move-result v9

    sub-int v9, v8, v9

    iget-object v10, p0, Landroid/widget/TextView$FloatPanelViewController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLineHeight()I

    move-result v10

    sub-int v4, v9, v10

    .line 7973
    .local v4, top:I
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->access$1700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 7974
    .local v3, statusBarHeight:I
    if-ge v4, v3, :cond_1

    .line 7975
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9, v12}, Landroid/widget/FloatPanelView;->setArrow(Z)V

    .line 7976
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->computePanelPositionOnBottom()I

    move-result v4

    .line 7980
    :goto_0
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->access$1800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 7981
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 7982
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 7983
    .local v2, screenWidth:I
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    .line 7984
    .local v7, xpos:I
    if-gez v1, :cond_2

    .line 7985
    add-int/2addr v7, v1

    .line 7989
    :cond_0
    :goto_1
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9, v7}, Landroid/widget/FloatPanelView;->setArrowPos(I)V

    .line 7990
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v10, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v10}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v11}, Landroid/widget/FloatPanelView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v1, v4, v10, v11}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 7991
    return-void

    .line 7978
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #screenWidth:I
    .end local v5           #wm:Landroid/view/WindowManager;
    .end local v7           #xpos:I
    :cond_1
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9, v11}, Landroid/widget/FloatPanelView;->setArrow(Z)V

    goto :goto_0

    .line 7986
    .restart local v0       #display:Landroid/view/Display;
    .restart local v2       #screenWidth:I
    .restart local v5       #wm:Landroid/view/WindowManager;
    .restart local v7       #xpos:I
    :cond_2
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    add-int/2addr v9, v1

    if-le v9, v2, :cond_0

    .line 7987
    iget-object v9, p0, Landroid/widget/TextView$FloatPanelViewController;->mContent:Landroid/widget/FloatPanelView;

    invoke-virtual {v9}, Landroid/widget/FloatPanelView;->getWidth()I

    move-result v9

    add-int/2addr v9, v1

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_1
.end method
