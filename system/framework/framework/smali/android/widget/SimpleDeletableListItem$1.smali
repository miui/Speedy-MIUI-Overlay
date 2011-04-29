.class Landroid/widget/SimpleDeletableListItem$1;
.super Ljava/lang/Object;
.source "SimpleDeletableListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SimpleDeletableListItem;->enterDeleteMode(Landroid/widget/ListView$OnConfirmDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleDeletableListItem;

.field final synthetic val$listener:Landroid/widget/ListView$OnConfirmDeleteListener;


# direct methods
.method constructor <init>(Landroid/widget/SimpleDeletableListItem;Landroid/widget/ListView$OnConfirmDeleteListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Landroid/widget/SimpleDeletableListItem$1;->this$0:Landroid/widget/SimpleDeletableListItem;

    iput-object p2, p0, Landroid/widget/SimpleDeletableListItem$1;->val$listener:Landroid/widget/ListView$OnConfirmDeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/SimpleDeletableListItem$1;->val$listener:Landroid/widget/ListView$OnConfirmDeleteListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/ListView$OnConfirmDeleteListener;->confirmDelete(Z)V

    .line 59
    return-void
.end method
