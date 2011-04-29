.class Landroid/widget/EditableListView$EditableListData;
.super Landroid/database/DataSetObserver;
.source "EditableListView.java"

# interfaces
.implements Landroid/widget/EditableListView$EditableListViewCheckable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditableListData"
.end annotation


# instance fields
.field private innerDateSetChange:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckedIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEditMode:Ljava/lang/Boolean;

.field private mEditModeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/widget/EditableListView$EditModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIdPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/EditableListView;


# direct methods
.method protected constructor <init>(Landroid/widget/EditableListView;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Landroid/widget/EditableListView$EditableListData;->this$0:Landroid/widget/EditableListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->innerDateSetChange:Z

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    .line 321
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    .line 323
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    .line 324
    return-void
.end method

.method static synthetic access$100(Landroid/widget/EditableListView$EditableListData;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/EditableListView$EditableListData;Landroid/widget/EditableListView$EditModeListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/EditableListView$EditableListData;Landroid/widget/EditableListView$EditModeListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->deleteEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/EditableListView$EditableListData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->isInitState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/EditableListView$EditableListData;I)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->toggleAt(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/EditableListView$EditableListData;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->enterEditMode(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/EditableListView$EditableListData;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->exitEditMode()V

    return-void
.end method

.method private addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V
    .locals 1
    .parameter "editModeListener"

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_0
    return-void
.end method

.method private deleteEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V
    .locals 1
    .parameter "editModeListener"

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    return-void
.end method

.method private enterEditMode(Ljava/lang/Integer;)V
    .locals 4
    .parameter "initPosition"

    .prologue
    const/4 v3, 0x1

    .line 343
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 344
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    .line 345
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 346
    if-eqz p1, :cond_1

    .line 347
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/EditableListView$EditableListData;->innerToggleAt(I)Z

    .line 349
    :cond_1
    iput-boolean v3, p0, Landroid/widget/EditableListView$EditableListData;->innerDateSetChange:Z

    .line 350
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_2

    .line 351
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 353
    :cond_2
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView$EditModeListener;

    .line 354
    .local v0, eml:Landroid/widget/EditableListView$EditModeListener;
    if-eqz v0, :cond_3

    .line 355
    invoke-interface {v0}, Landroid/widget/EditableListView$EditModeListener;->onEnterEditMode()V

    .line 356
    invoke-interface {v0, p0}, Landroid/widget/EditableListView$EditModeListener;->onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V

    goto :goto_0

    .line 360
    .end local v0           #eml:Landroid/widget/EditableListView$EditModeListener;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private exitEditMode()V
    .locals 3

    .prologue
    .line 363
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    .line 365
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 366
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/EditableListView$EditableListData;->innerDateSetChange:Z

    .line 367
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 370
    :cond_0
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView$EditModeListener;

    .line 371
    .local v0, eml:Landroid/widget/EditableListView$EditModeListener;
    if-eqz v0, :cond_1

    .line 372
    invoke-interface {v0}, Landroid/widget/EditableListView$EditModeListener;->onExitEditMode()V

    goto :goto_0

    .line 376
    .end local v0           #eml:Landroid/widget/EditableListView$EditModeListener;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private innerToggleAt(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 379
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 380
    .local v0, id:J
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 382
    const/4 v2, 0x0

    .line 385
    :goto_0
    return v2

    .line 384
    :cond_0
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 385
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isInitState()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 339
    iput-object p1, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    .line 340
    return-void
.end method

.method private toggleAt(I)Ljava/lang/Boolean;
    .locals 4
    .parameter "position"

    .prologue
    .line 390
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->innerToggleAt(I)Z

    move-result v2

    .line 392
    .local v2, ret:Z
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView$EditModeListener;

    .line 393
    .local v0, eml:Landroid/widget/EditableListView$EditModeListener;
    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0, p0}, Landroid/widget/EditableListView$EditModeListener;->onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V

    goto :goto_0

    .line 397
    .end local v0           #eml:Landroid/widget/EditableListView$EditModeListener;
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 399
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #ret:Z
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateCheckStatusWhenDataSetChanged()V
    .locals 5

    .prologue
    .line 417
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 418
    .local v2, tempCheckedIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 419
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 420
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 421
    .local v1, id:Ljava/lang/Long;
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_0
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    iput-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    .line 427
    return-void
.end method


# virtual methods
.method public checkAll()V
    .locals 6

    .prologue
    .line 471
    iget-object v4, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 472
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 473
    iget-object v4, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 474
    .local v3, id:Ljava/lang/Long;
    iget-object v4, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v3           #id:Ljava/lang/Long;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/EditableListView$EditableListData;->innerDateSetChange:Z

    .line 478
    iget-object v4, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v4, v4, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_1

    .line 479
    iget-object v4, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v4, Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 482
    :cond_1
    iget-object v4, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView$EditModeListener;

    .line 483
    .local v0, eml:Landroid/widget/EditableListView$EditModeListener;
    if-eqz v0, :cond_2

    .line 484
    invoke-interface {v0, p0}, Landroid/widget/EditableListView$EditModeListener;->onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V

    goto :goto_1

    .line 488
    .end local v0           #eml:Landroid/widget/EditableListView$EditModeListener;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public checkNothing()V
    .locals 3

    .prologue
    .line 491
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 493
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/EditableListView$EditableListData;->innerDateSetChange:Z

    .line 494
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 497
    :cond_0
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView$EditModeListener;

    .line 498
    .local v0, eml:Landroid/widget/EditableListView$EditModeListener;
    if-eqz v0, :cond_1

    .line 499
    invoke-interface {v0, p0}, Landroid/widget/EditableListView$EditModeListener;->onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V

    goto :goto_0

    .line 503
    .end local v0           #eml:Landroid/widget/EditableListView$EditModeListener;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedIndex()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 460
    .local v0, checkedItemIndex:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 461
    .local v2, id:Ljava/lang/Long;
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    .end local v2           #id:Ljava/lang/Long;
    :cond_0
    return-object v0
.end method

.method public getCheckedItemInIds()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isAllChecked()Z
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 442
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 443
    .local v0, id:J
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public isChecked(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 447
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isEditMode()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->innerDateSetChange:Z

    if-nez v0, :cond_0

    .line 405
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->updateCheckStatusWhenDataSetChanged()V

    .line 407
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->innerDateSetChange:Z

    .line 408
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 413
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 414
    return-void
.end method
