.class public Landroid/widget/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# static fields
.field private static final BOTTOM_OFFSET:I = 0xa

.field private static final TOP_OFFSET:I = 0x4


# instance fields
.field private mIsArrowUp:Z

.field private mPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 41
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 42
    const v6, 0x1020233

    invoke-virtual {p0, v6}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 43
    .local v5, upArrow:Landroid/view/View;
    const v6, 0x1020234

    invoke-virtual {p0, v6}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, downArrow:Landroid/view/View;
    const v6, 0x102022b

    invoke-virtual {p0, v6}, Landroid/widget/FloatPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 45
    .local v3, panel:Landroid/widget/LinearLayout;
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 46
    :cond_0
    const-string v6, "FloatPanelView"

    const-string v7, "couldn\'t find view"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-boolean v6, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    if-eqz v6, :cond_3

    move-object v0, v5

    .line 53
    .local v0, arrow:Landroid/view/View;
    :goto_1
    iget-boolean v6, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    if-eqz v6, :cond_4

    move v4, v8

    .line 54
    .local v4, t:I
    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget v6, p0, Landroid/widget/FloatPanelView;->mPos:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    .line 56
    .local v2, l:I
    if-gez v2, :cond_5

    .line 57
    const/4 v2, 0x0

    .line 60
    :cond_2
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v0, v2, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 62
    iget-boolean v6, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    move v4, v6

    .line 63
    :goto_4
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v7

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v3, v6, v4, v7, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0

    .end local v0           #arrow:Landroid/view/View;
    .end local v2           #l:I
    .end local v4           #t:I
    :cond_3
    move-object v0, v1

    .line 52
    goto :goto_1

    .line 53
    .restart local v0       #arrow:Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    const/16 v7, 0xa

    sub-int/2addr v6, v7

    move v4, v6

    goto :goto_2

    .line 58
    .restart local v2       #l:I
    .restart local v4       #t:I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, p4, v6

    if-le v2, v6, :cond_2

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v2, p4, v6

    goto :goto_3

    :cond_6
    move v4, v8

    .line 62
    goto :goto_4
.end method

.method public setArrow(Z)V
    .locals 1
    .parameter "isUp"

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    if-eq p1, v0, :cond_0

    .line 27
    iput-boolean p1, p0, Landroid/widget/FloatPanelView;->mIsArrowUp:Z

    .line 28
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 30
    :cond_0
    return-void
.end method

.method public setArrowPos(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 34
    iget v0, p0, Landroid/widget/FloatPanelView;->mPos:I

    if-eq p1, v0, :cond_0

    .line 35
    iput p1, p0, Landroid/widget/FloatPanelView;->mPos:I

    .line 36
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 38
    :cond_0
    return-void
.end method
