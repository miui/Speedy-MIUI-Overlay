.class public Lcom/android/internal/widget/RoundCornerListAdapter;
.super Ljava/lang/Object;
.source "RoundCornerListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 14
    return-void
.end method

.method public static setBackground(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "count"

    .prologue
    const/4 v0, 0x1

    .line 17
    if-nez p1, :cond_1

    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    const v0, 0x10802f5

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    :goto_0
    return-void

    .line 21
    :cond_0
    const v0, 0x10802ec

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 23
    :cond_1
    sub-int v0, p2, v0

    if-ne p1, v0, :cond_2

    .line 24
    const v0, 0x10802ef

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 26
    :cond_2
    const v0, 0x10802f2

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/widget/RoundCornerListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/RoundCornerListAdapter;->setBackground(Landroid/view/View;II)V

    .line 61
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 78
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/RoundCornerListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 82
    return-void
.end method
