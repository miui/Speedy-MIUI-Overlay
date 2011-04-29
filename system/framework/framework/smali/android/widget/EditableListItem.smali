.class public Landroid/widget/EditableListItem;
.super Landroid/widget/LinearLayout;
.source "EditableListItem.java"

# interfaces
.implements Landroid/widget/EditableListView$EditableListItemBase;


# instance fields
.field private mAttributeSet:Landroid/util/AttributeSet;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContent:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/EditableListItem;->mAttributeSet:Landroid/util/AttributeSet;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/EditableListItem;->mAttributeSet:Landroid/util/AttributeSet;

    .line 32
    iput-object p2, p0, Landroid/widget/EditableListItem;->mAttributeSet:Landroid/util/AttributeSet;

    .line 33
    return-void
.end method


# virtual methods
.method public applyEnterAnim()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Landroid/widget/EditableListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/widget/EditableListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 81
    .local v0, fadeinAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Landroid/widget/EditableListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setAnimation(Landroid/view/animation/Animation;)V

    .line 83
    .end local v0           #fadeinAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public applyExitAnim()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public enterEditMode(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 69
    return-void
.end method

.method public exitEditMode()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 37
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 38
    const v3, 0x1020001

    invoke-virtual {p0, v3}, Landroid/widget/EditableListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Landroid/widget/EditableListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 40
    iget-object v3, p0, Landroid/widget/EditableListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_3

    .line 41
    iget-object v3, p0, Landroid/widget/EditableListItem;->mAttributeSet:Landroid/util/AttributeSet;

    if-nez v3, :cond_0

    .line 42
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/EditableListItem;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/EditableListItem;->mContent:Landroid/widget/LinearLayout;

    .line 46
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v0, childs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/EditableListItem;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 51
    invoke-virtual {p0, v1}, Landroid/widget/EditableListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    .end local v0           #childs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #i:I
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/EditableListItem;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/widget/EditableListItem;->mAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Landroid/widget/EditableListItem;->mContent:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 53
    .restart local v0       #childs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1       #i:I
    .restart local v2       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditableListItem;->removeAllViews()V

    .line 55
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 56
    iget-object v4, p0, Landroid/widget/EditableListItem;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 58
    :cond_2
    iget-object v3, p0, Landroid/widget/EditableListItem;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v2}, Landroid/widget/EditableListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .restart local v2       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/EditableListItem;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x109001e

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/EditableListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Landroid/widget/EditableListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 62
    iget-object v3, p0, Landroid/widget/EditableListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v3, v2}, Landroid/widget/EditableListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .end local v0           #childs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #i:I
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    return-void
.end method
