.class public Landroid/widget/SimpleDeletableListItem;
.super Landroid/widget/LinearLayout;
.source "SimpleDeletableListItem.java"

# interfaces
.implements Landroid/widget/ListView$DeletableListItem;


# instance fields
.field private mDeleteButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method public enterDeleteMode(Landroid/widget/ListView$OnConfirmDeleteListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 50
    iget-object v1, p0, Landroid/widget/SimpleDeletableListItem;->mDeleteButton:Landroid/view/View;

    if-nez v1, :cond_0

    .line 51
    const v1, 0x102017a

    invoke-virtual {p0, v1}, Landroid/widget/SimpleDeletableListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleDeletableListItem;->mDeleteButton:Landroid/view/View;

    .line 52
    iget-object v1, p0, Landroid/widget/SimpleDeletableListItem;->mDeleteButton:Landroid/view/View;

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 55
    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleDeletableListItem;->mDeleteButton:Landroid/view/View;

    new-instance v2, Landroid/widget/SimpleDeletableListItem$1;

    invoke-direct {v2, p0, p1}, Landroid/widget/SimpleDeletableListItem$1;-><init>(Landroid/widget/SimpleDeletableListItem;Landroid/widget/ListView$OnConfirmDeleteListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Landroid/widget/SimpleDeletableListItem;->mDeleteButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/SimpleDeletableListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 64
    .local v0, fadeinAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Landroid/widget/SimpleDeletableListItem;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 65
    return-void
.end method

.method public leaveDeleteMode()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/SimpleDeletableListItem;->mDeleteButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/widget/SimpleDeletableListItem;->mDeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Landroid/widget/SimpleDeletableListItem;->mDeleteButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    return-void
.end method
