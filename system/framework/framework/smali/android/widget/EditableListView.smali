.class public Landroid/widget/EditableListView;
.super Landroid/widget/ListView;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditableListView$EditableListData;,
        Landroid/widget/EditableListView$EditableListItemBase;,
        Landroid/widget/EditableListView$EditableListViewCheckable;,
        Landroid/widget/EditableListView$EditModeListener;
    }
.end annotation


# static fields
.field private static final DELETE_GESTURE_DETECTION_HORIZONTAL_THRESHOLD:I = 0x4b

.field private static final DELETE_GESTURE_DETECTION_VERTICAL_THRESHOLD:I = 0x32

.field private static final POSITION_STATE_HEADER_FOOTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EditableListView"


# instance fields
.field private mCheckedData:Landroid/widget/EditableListView$EditableListData;

.field private mEditable:Z

.field private mPreClickable:Z

.field private mPreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPreLongClickable:Z

.field private mSlideGesutreDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Landroid/widget/EditableListView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Landroid/widget/EditableListView;->init()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/widget/EditableListView;)Landroid/widget/EditableListView$EditableListData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/EditableListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->handleHeadFooterPosition(I)I

    move-result v0

    return v0
.end method

.method private handleHeadFooterPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 149
    if-gez p1, :cond_0

    move v1, p1

    .line 160
    :goto_0
    return v1

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v0

    .line 157
    .local v0, numHeaders:I
    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    .line 158
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 160
    :cond_2
    sub-int v1, p1, v0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditableListView;->mEditable:Z

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/EditableListView$1;

    invoke-direct {v2, p0}, Landroid/widget/EditableListView$1;-><init>(Landroid/widget/EditableListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mSlideGesutreDetector:Landroid/view/GestureDetector;

    .line 74
    new-instance v0, Landroid/widget/EditableListView$EditableListData;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$EditableListData;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    .line 75
    return-void
.end method


# virtual methods
.method public addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V
    .locals 1
    .parameter "editModeListener"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-static {v0, p1}, Landroid/widget/EditableListView$EditableListData;->access$200(Landroid/widget/EditableListView$EditableListData;Landroid/widget/EditableListView$EditModeListener;)V

    .line 94
    :cond_0
    return-void
.end method

.method public deleteEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V
    .locals 1
    .parameter "editModeListener"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-static {v0, p1}, Landroid/widget/EditableListView$EditableListData;->access$300(Landroid/widget/EditableListView$EditableListData;Landroid/widget/EditableListView$EditModeListener;)V

    .line 100
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mEditable:Z

    if-nez v0, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/widget/EditableListView;->mSlideGesutreDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Landroid/widget/EditableListView;->mSlideGesutreDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 112
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enterEditMode()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->enterEditMode(Ljava/lang/Integer;)V

    .line 182
    return-void
.end method

.method public enterEditMode(Ljava/lang/Integer;)V
    .locals 5
    .parameter "initPosition"

    .prologue
    .line 188
    iget-boolean v3, p0, Landroid/widget/EditableListView;->mEditable:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-virtual {v3}, Landroid/widget/EditableListView$EditableListData;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    :cond_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditableListView;->isClickable()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/EditableListView;->mPreClickable:Z

    .line 193
    invoke-virtual {p0}, Landroid/widget/EditableListView;->isLongClickable()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/EditableListView;->mPreLongClickable:Z

    .line 194
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/EditableListView;->mPreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 196
    new-instance v3, Landroid/widget/EditableListView$2;

    invoke-direct {v3, p0}, Landroid/widget/EditableListView$2;-><init>(Landroid/widget/EditableListView;)V

    invoke-virtual {p0, v3}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/EditableListView;->setLongClickable(Z)V

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, innerPosition:Ljava/lang/Integer;
    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/EditableListView;->handleHeadFooterPosition(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 217
    const/4 v1, 0x0

    .line 220
    :cond_2
    iget-object v3, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-static {v3, v1}, Landroid/widget/EditableListView$EditableListData;->access$700(Landroid/widget/EditableListView$EditableListData;Ljava/lang/Integer;)V

    .line 222
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 223
    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 224
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/EditableListView$EditableListItemBase;

    if-eqz v3, :cond_3

    .line 225
    check-cast v2, Landroid/widget/EditableListView$EditableListItemBase;

    .end local v2           #view:Landroid/view/View;
    invoke-interface {v2}, Landroid/widget/EditableListView$EditableListItemBase;->applyEnterAnim()V

    .line 222
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public exitEditMode()V
    .locals 3

    .prologue
    .line 234
    iget-boolean v2, p0, Landroid/widget/EditableListView;->mEditable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-virtual {v2}, Landroid/widget/EditableListView$EditableListData;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Landroid/widget/EditableListView;->mPreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v2}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    iget-boolean v2, p0, Landroid/widget/EditableListView;->mPreLongClickable:Z

    invoke-virtual {p0, v2}, Landroid/widget/EditableListView;->setLongClickable(Z)V

    .line 240
    iget-boolean v2, p0, Landroid/widget/EditableListView;->mPreClickable:Z

    invoke-virtual {p0, v2}, Landroid/widget/EditableListView;->setClickable(Z)V

    .line 242
    iget-object v2, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-static {v2}, Landroid/widget/EditableListView$EditableListData;->access$800(Landroid/widget/EditableListView$EditableListData;)V

    .line 244
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 245
    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 246
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/EditableListView$EditableListItemBase;

    if-eqz v2, :cond_2

    .line 247
    check-cast v1, Landroid/widget/EditableListView$EditableListItemBase;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/EditableListView$EditableListItemBase;->applyExitAnim()V

    .line 244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-virtual {v0}, Landroid/widget/EditableListView$EditableListData;->isEditMode()Z

    move-result v0

    return v0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const v6, 0x1020001

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, childView:Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->handleHeadFooterPosition(I)I

    move-result v3

    .line 120
    .local v3, innerPosition:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v2

    .line 122
    :cond_1
    iget-boolean v5, p0, Landroid/widget/EditableListView;->mEditable:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-static {v5}, Landroid/widget/EditableListView$EditableListData;->access$400(Landroid/widget/EditableListView$EditableListData;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    instance-of v5, v2, Landroid/widget/EditableListView$EditableListItemBase;

    if-eqz v5, :cond_0

    .line 124
    iget-object v5, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-virtual {v5}, Landroid/widget/EditableListView$EditableListData;->isEditMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    iget-object v5, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-virtual {v5, v3}, Landroid/widget/EditableListView$EditableListData;->isChecked(I)Z

    move-result v4

    .line 127
    .local v4, isChecked:Z
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 128
    .local v1, checkBox:Landroid/widget/CheckBox;
    if-eqz v1, :cond_2

    .line 129
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 130
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    :cond_2
    move-object v0, v2

    check-cast v0, Landroid/widget/EditableListView$EditableListItemBase;

    move-object v5, v0

    invoke-interface {v5, v4}, Landroid/widget/EditableListView$EditableListItemBase;->enterEditMode(Z)V

    goto :goto_0

    .line 135
    .end local v1           #checkBox:Landroid/widget/CheckBox;
    .end local v4           #isChecked:Z
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 136
    .restart local v1       #checkBox:Landroid/widget/CheckBox;
    if-eqz v1, :cond_4

    .line 137
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 140
    :cond_4
    move-object v0, v2

    check-cast v0, Landroid/widget/EditableListView$EditableListItemBase;

    move-object v5, v0

    invoke-interface {v5}, Landroid/widget/EditableListView$EditableListItemBase;->exitEditMode()V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 83
    instance-of v0, p1, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-static {v0, p1}, Landroid/widget/EditableListView$EditableListData;->access$100(Landroid/widget/EditableListView$EditableListData;Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setEditable(Z)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/widget/EditableListView;->mEditable:Z

    .line 79
    return-void
.end method

.method public switchEditMode()V
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mEditable:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedData:Landroid/widget/EditableListView$EditableListData;

    invoke-virtual {v0}, Landroid/widget/EditableListView$EditableListData;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditableListView;->enterEditMode()V

    goto :goto_0
.end method
