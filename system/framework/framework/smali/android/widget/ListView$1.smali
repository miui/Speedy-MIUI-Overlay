.class Landroid/widget/ListView$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/widget/ListView$OnConfirmDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 3970
    iput-object p1, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmDelete(Z)V
    .locals 6
    .parameter "isDeleted"

    .prologue
    .line 3973
    iget-object v4, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {v4}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;)Landroid/widget/ListView$DeleteModeListener;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 3974
    iget-object v4, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {v4}, Landroid/widget/ListView;->access$400(Landroid/widget/ListView;)I

    move-result v2

    .line 3975
    .local v2, position:I
    iget-object v4, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3976
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 3977
    .local v0, itemId:J
    iget-object v4, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {v4}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;)Landroid/widget/ListView$DeleteModeListener;

    move-result-object v4

    invoke-interface {v4, v3, v2, v0, v1}, Landroid/widget/ListView$DeleteModeListener;->onDelete(Landroid/view/View;IJ)Z

    .line 3979
    .end local v0           #itemId:J
    .end local v2           #position:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView$1;->this$0:Landroid/widget/ListView;

    invoke-static {v4}, Landroid/widget/ListView;->access$500(Landroid/widget/ListView;)V

    .line 3980
    return-void
.end method
