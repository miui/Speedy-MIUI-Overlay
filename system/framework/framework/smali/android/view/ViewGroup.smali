.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field private static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field private static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field private static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field private static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mCachePaint:Landroid/graphics/Paint;

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDoingAnimationWhenWholeAnimationCacheEnabled:Z

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I

.field private mInvalidateRegion:Landroid/graphics/RectF;

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mMotionTarget:Landroid/view/View;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mPreviousAnimationCacheStatus:Z

.field private mPreviousDrawingCacheStatus:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWholeAnimationCacheEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 283
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mWholeAnimationCacheEnabled:Z

    .line 284
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mDoingAnimationWhenWholeAnimationCacheEnabled:Z

    .line 288
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 283
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mWholeAnimationCacheEnabled:Z

    .line 284
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mDoingAnimationWhenWholeAnimationCacheEnabled:Z

    .line 293
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 294
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 283
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mWholeAnimationCacheEnabled:Z

    .line 284
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mDoingAnimationWhenWholeAnimationCacheEnabled:Z

    .line 299
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 300
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 301
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3259
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3261
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 3262
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3265
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3266
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 2042
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2043
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2044
    .local v1, count:I
    array-length v2, v0

    .line 2045
    .local v2, size:I
    if-ne p2, v1, :cond_1

    .line 2046
    if-ne v2, v1, :cond_0

    .line 2047
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2048
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2049
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2051
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 2066
    :goto_0
    return-void

    .line 2052
    :cond_1
    if-ge p2, v1, :cond_3

    .line 2053
    if-ne v2, v1, :cond_2

    .line 2054
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2055
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2056
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2057
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2061
    :goto_1
    aput-object p1, v0, p2

    .line 2062
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0

    .line 2059
    :cond_2
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 2064
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/high16 v4, 0x40

    .line 1989
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1990
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1994
    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1995
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1998
    :cond_1
    if-eqz p4, :cond_8

    .line 1999
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2004
    :goto_0
    if-gez p2, :cond_2

    .line 2005
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2008
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 2011
    if-eqz p4, :cond_9

    .line 2012
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 2017
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2018
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2021
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2022
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_5

    .line 2023
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2024
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2025
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2026
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_4

    .line 2027
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2029
    :cond_4
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2032
    .end local v1           #lastKeepOn:Z
    :cond_5
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v2, :cond_6

    .line 2033
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2036
    :cond_6
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    .line 2037
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2039
    :cond_7
    return-void

    .line 2001
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_8
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2014
    :cond_9
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 2118
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2119
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2120
    return-void
.end method

.method private finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 3276
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3277
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 3278
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3279
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3281
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 3282
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3285
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3286
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3290
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3291
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3294
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 3295
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 3298
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3300
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3302
    :cond_3
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 3175
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3176
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 3178
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3180
    .local v2, size:I
    const/4 v1, 0x0

    .line 3181
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 3183
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 3239
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 3186
    :sswitch_0
    if-ltz p2, :cond_1

    .line 3187
    move v1, p2

    .line 3188
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3189
    :cond_1
    if-ne p2, v8, :cond_2

    .line 3191
    move v1, v2

    .line 3192
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3193
    :cond_2
    if-ne p2, v7, :cond_0

    .line 3196
    move v1, v2

    .line 3197
    const/high16 v0, -0x8000

    goto :goto_0

    .line 3203
    :sswitch_1
    if-ltz p2, :cond_3

    .line 3205
    move v1, p2

    .line 3206
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3207
    :cond_3
    if-ne p2, v8, :cond_4

    .line 3210
    move v1, v2

    .line 3211
    const/high16 v0, -0x8000

    goto :goto_0

    .line 3212
    :cond_4
    if-ne p2, v7, :cond_0

    .line 3215
    move v1, v2

    .line 3216
    const/high16 v0, -0x8000

    goto :goto_0

    .line 3222
    :sswitch_2
    if-ltz p2, :cond_5

    .line 3224
    move v1, p2

    .line 3225
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3226
    :cond_5
    if-ne p2, v8, :cond_6

    .line 3229
    const/4 v1, 0x0

    .line 3230
    const/4 v0, 0x0

    goto :goto_0

    .line 3231
    :cond_6
    if-ne p2, v7, :cond_0

    .line 3234
    const/4 v1, 0x0

    .line 3235
    const/4 v0, 0x0

    goto :goto_0

    .line 3183
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 323
    sget-object v5, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 326
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 327
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 328
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 329
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 327
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 331
    :pswitch_0
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 334
    :pswitch_1
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 337
    :pswitch_2
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 340
    :pswitch_3
    const/4 v5, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 343
    :pswitch_4
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 346
    :pswitch_5
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 349
    :pswitch_6
    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 350
    .local v4, id:I
    if-lez v4, :cond_0

    .line 351
    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 355
    .end local v4           #id:I
    :pswitch_7
    sget-object v5, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 360
    .end local v2           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    return-void

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    .prologue
    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 306
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 307
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 308
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 309
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 310
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 312
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 314
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 315
    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 317
    iget-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 319
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 320
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 3

    .prologue
    .line 1455
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1456
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1458
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 1459
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 1464
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1467
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 1468
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1469
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1470
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 1474
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1475
    return-void
.end method

.method private removeFromArray(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2070
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2071
    .local v0, children:[Landroid/view/View;
    aget-object v2, v0, p1

    iput-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2072
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2073
    .local v1, count:I
    sub-int v2, v1, v4

    if-ne p1, v2, :cond_0

    .line 2074
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    .line 2081
    :goto_0
    return-void

    .line 2075
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 2076
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    sub-int/2addr v3, v4

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2077
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    goto :goto_0

    .line 2079
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private removeFromArray(II)V
    .locals 6
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 2085
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2086
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2088
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2089
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2091
    .local v2, end:I
    if-ne p1, v2, :cond_0

    .line 2115
    :goto_0
    return-void

    .line 2095
    :cond_0
    if-ne v2, v1, :cond_1

    .line 2096
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 2097
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2098
    aput-object v5, v0, v3

    .line 2096
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2101
    .end local v3           #i:I
    :cond_1
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 2102
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2101
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2107
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2109
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 2110
    aput-object v5, v0, v3

    .line 2109
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2114
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 2
    .parameter "index"
    .parameter "view"

    .prologue
    .line 2206
    const/4 v0, 0x0

    .line 2207
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_0

    .line 2208
    invoke-virtual {p2}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2209
    const/4 v0, 0x1

    .line 2212
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2213
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2218
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2

    .line 2219
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p0, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2222
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2224
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2226
    if-eqz v0, :cond_3

    .line 2227
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 2229
    :cond_3
    return-void

    .line 2214
    :cond_4
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    .line 2215
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2199
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2200
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 2201
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 2203
    :cond_0
    return-void
.end method

.method private removeViewsInternal(II)V
    .locals 12
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2232
    iget-object v7, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2233
    .local v7, onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v7, :cond_3

    move v6, v11

    .line 2234
    .local v6, notifyListener:Z
    :goto_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2235
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_4

    move v2, v11

    .line 2236
    .local v2, detach:Z
    :goto_1
    const/4 v1, 0x0

    .line 2238
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2239
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 2241
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_2
    if-ge v5, v3, :cond_6

    .line 2242
    aget-object v8, v0, v5

    .line 2244
    .local v8, view:Landroid/view/View;
    if-ne v8, v4, :cond_0

    .line 2245
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2246
    move-object v1, v8

    .line 2249
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 2250
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2255
    :cond_1
    :goto_3
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2257
    if-eqz v6, :cond_2

    .line 2258
    invoke-interface {v7, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2241
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #notifyListener:Z
    .end local v8           #view:Landroid/view/View;
    :cond_3
    move v6, v10

    .line 2233
    goto :goto_0

    .restart local v4       #focused:Landroid/view/View;
    .restart local v6       #notifyListener:Z
    :cond_4
    move v2, v10

    .line 2235
    goto :goto_1

    .line 2251
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_1

    .line 2252
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 2262
    .end local v8           #view:Landroid/view/View;
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 2264
    if-eqz v1, :cond_7

    .line 2265
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 2267
    :cond_7
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 2873
    if-eqz p2, :cond_0

    .line 2874
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2878
    :goto_0
    return-void

    .line 2876
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 625
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 634
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 636
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_1

    .line 637
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 638
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 640
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 641
    aget-object v0, v1, v5

    .line 642
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 643
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 640
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 652
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_1
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 656
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 658
    :cond_3
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 3443
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 680
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 681
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 683
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 684
    aget-object v0, v1, v3

    .line 685
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 686
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 683
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 689
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1822
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1823
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 1835
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1836
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1837
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1838
    if-nez v0, :cond_0

    .line 1839
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1842
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1843
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1852
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1853
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1854
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1855
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1856
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1883
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1884
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1885
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1886
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 1865
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1953
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 1971
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1972
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1973
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1974
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 2134
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2136
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 2137
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 2138
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2141
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 2142
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 2143
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 2378
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2380
    if-gez p2, :cond_0

    .line 2381
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2384
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 2386
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2387
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2389
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2390
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2392
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 767
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 768
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 769
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 770
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 772
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2698
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1905
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3451
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 3452
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 3454
    :cond_0
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1983
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1984
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 514
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 517
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .prologue
    .line 3248
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3249
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3251
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 527
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 530
    :cond_0
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 1298
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1299
    .local v2, count:I
    const/4 v4, 0x0

    .line 1301
    .local v4, visibilities:[I
    if-eqz p3, :cond_1

    .line 1302
    new-array v4, v2, [I

    .line 1303
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1304
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1305
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 1306
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 1307
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1312
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1314
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 1315
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1316
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1320
    .end local v3           #i:I
    :cond_2
    return-object v0
.end method

.method protected debug(I)V
    .locals 7
    .parameter "depth"

    .prologue
    const-string v6, "View"

    .line 3016
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 3019
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 3020
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 3021
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3022
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 3025
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 3026
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3027
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    .end local v3           #output:Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3030
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3031
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 3032
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 3030
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3035
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 3036
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 3037
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3038
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    .end local v3           #output:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2462
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2463
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 2474
    :cond_0
    return-void

    .line 2467
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2468
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2470
    const/4 v3, 0x1

    sub-int v2, v1, v3

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 2471
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2472
    aput-object v4, v0, v2

    .line 2470
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2427
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2428
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 2409
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2410
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2446
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 2447
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 1128
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1129
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p2, v3

    .line 1130
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1131
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1132
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1133
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1135
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 753
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p1, v3

    .line 754
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 755
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 756
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 757
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 758
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 736
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 737
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 738
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 739
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 738
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    :cond_0
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .locals 5
    .parameter "consistency"

    .prologue
    .line 2961
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v3

    .line 2963
    .local v3, result:Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2964
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2965
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2966
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 2965
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2969
    :cond_1
    return v3
.end method

.method dispatchDetachedFromWindow()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1156
    iget-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1158
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1160
    .local v10, event:Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1161
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1162
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 1165
    .end local v0           #now:J
    .end local v10           #event:Landroid/view/MotionEvent;
    :cond_0
    iget v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1166
    .local v9, count:I
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1167
    .local v8, children:[Landroid/view/View;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v9, :cond_1

    .line 1168
    aget-object v2, v8, v11

    invoke-virtual {v2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1167
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1170
    :cond_1
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1171
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 696
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 697
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 698
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 699
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 700
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v7, v0

    .line 1329
    .local v7, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v15, v0

    .line 1331
    .local v15, flags:I
    and-int/lit8 v20, v15, 0x8

    if-eqz v20, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x40

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    move/from16 v5, v20

    .line 1334
    .local v5, cache:Z
    :goto_0
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 1335
    aget-object v6, v7, v16

    .line 1336
    .local v6, child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0xc

    if-nez v20, :cond_0

    .line 1337
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .line 1338
    .local v18, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v18

    move/from16 v3, v16

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 1339
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 1340
    if-eqz v5, :cond_0

    .line 1341
    const/16 v20, 0x1

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1342
    const/16 v20, 0x1

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 1334
    .end local v18           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1332
    .end local v5           #cache:Z
    .end local v6           #child:Landroid/view/View;
    .end local v16           #i:I
    :cond_1
    const/16 v20, 0x0

    move/from16 v5, v20

    goto :goto_0

    .line 1347
    .restart local v5       #cache:Z
    .restart local v16       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object v9, v0

    .line 1348
    .local v9, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1349
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1352
    :cond_3
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 1354
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, -0x9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1355
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, -0x11

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1357
    if-eqz v5, :cond_4

    .line 1358
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    const v21, 0x8000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1361
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v20, v0

    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 1366
    .end local v5           #cache:Z
    .end local v9           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v16           #i:I
    :cond_5
    const/16 v19, 0x0

    .line 1367
    .local v19, saveCount:I
    and-int/lit8 v20, v15, 0x22

    const/16 v21, 0x22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/16 v20, 0x1

    move/from16 v8, v20

    .line 1368
    .local v8, clipToPadding:Z
    :goto_2
    if-eqz v8, :cond_6

    .line 1369
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v19

    .line 1370
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mRight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mBottom:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mTop:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1377
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, -0x41

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 1378
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, -0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1380
    const/16 v17, 0x0

    .line 1381
    .local v17, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v12

    .line 1383
    .local v12, drawingTime:J
    move v0, v15

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 1384
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 1385
    aget-object v6, v7, v16

    .line 1386
    .restart local v6       #child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0xc

    if-eqz v20, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 1387
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v20

    or-int v17, v17, v20

    .line 1384
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1367
    .end local v6           #child:Landroid/view/View;
    .end local v8           #clipToPadding:Z
    .end local v12           #drawingTime:J
    .end local v16           #i:I
    .end local v17           #more:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v8, v20

    goto/16 :goto_2

    .line 1391
    .restart local v8       #clipToPadding:Z
    .restart local v12       #drawingTime:J
    .restart local v17       #more:Z
    :cond_a
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 1392
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v20

    aget-object v6, v7, v20

    .line 1393
    .restart local v6       #child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0xc

    if-eqz v20, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 1394
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v20

    or-int v17, v17, v20

    .line 1391
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1400
    .end local v6           #child:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v10, v0

    .line 1402
    .local v10, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    sub-int v11, v20, v21

    .line 1404
    .local v11, disappearingCount:I
    move/from16 v16, v11

    :goto_5
    if-ltz v16, :cond_e

    .line 1405
    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1406
    .restart local v6       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v20

    or-int v17, v17, v20

    .line 1404
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    .line 1410
    .end local v6           #child:Landroid/view/View;
    .end local v10           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v11           #disappearingCount:I
    :cond_e
    if-eqz v8, :cond_f

    .line 1411
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1415
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v15, v0

    .line 1417
    and-int/lit8 v20, v15, 0x4

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 1418
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1421
    :cond_10
    and-int/lit8 v20, v15, 0x10

    if-nez v20, :cond_11

    move v0, v15

    and-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    if-nez v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v20

    if-eqz v20, :cond_11

    if-nez v17, :cond_11

    .line 1426
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1427
    new-instance v14, Landroid/view/ViewGroup$1;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 1432
    .local v14, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1434
    .end local v14           #end:Ljava/lang/Runnable;
    :cond_11
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 1115
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1116
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1117
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1118
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1119
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1121
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1209
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1210
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 792
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 793
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 797
    :goto_0
    return v0

    .line 794
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 795
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 797
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 779
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 780
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 784
    :goto_0
    return v0

    .line 781
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 782
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 784
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 805
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 806
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 810
    :goto_0
    return v0

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 808
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 810
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1139
    const/4 v2, 0x0

    .line 1140
    .local v2, populated:Z
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1141
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1143
    :cond_0
    return v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1218
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1219
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1220
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1221
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1192
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1193
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1194
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1195
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1196
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1198
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 1725
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1726
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1727
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1728
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1727
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1730
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 1716
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1717
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1718
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1719
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1718
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1721
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 1100
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1101
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1102
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1103
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1104
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1234
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1235
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 831
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 832
    const/16 v20, 0x0

    .line 948
    :goto_0
    return v20

    .line 835
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 836
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 837
    .local v17, xf:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 838
    .local v19, yf:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v11, v17, v20

    .line 839
    .local v11, scrolledXFloat:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v13, v19, v20

    .line 840
    .local v13, scrolledYFloat:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 842
    .local v8, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x8

    and-int v20, v20, v21

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 844
    .local v7, disallowIntercept:Z
    :goto_1
    if-nez v3, :cond_6

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 850
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 854
    :cond_1
    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 856
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 859
    float-to-int v12, v11

    .line 860
    .local v12, scrolledXInt:I
    float-to-int v14, v13

    .line 861
    .local v14, scrolledYInt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v5, v0

    .line 862
    .local v5, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v6, v0

    .line 864
    .local v6, count:I
    const/16 v20, 0x1

    sub-int v9, v6, v20

    .local v9, i:I
    :goto_2
    if-ltz v9, :cond_6

    .line 865
    aget-object v4, v5, v9

    .line 866
    .local v4, child:Landroid/view/View;
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0xc

    if-eqz v20, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 868
    :cond_3
    invoke-virtual {v4, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 869
    invoke-virtual {v8, v12, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 871
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 872
    .local v16, xc:F
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 873
    .local v18, yc:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 874
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v4

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 875
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 877
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 878
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 842
    .end local v4           #child:Landroid/view/View;
    .end local v5           #children:[Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #disallowIntercept:Z
    .end local v9           #i:I
    .end local v12           #scrolledXInt:I
    .end local v14           #scrolledYInt:I
    .end local v16           #xc:F
    .end local v18           #yc:F
    :cond_4
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_1

    .line 864
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #children:[Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #disallowIntercept:Z
    .restart local v9       #i:I
    .restart local v12       #scrolledXInt:I
    .restart local v14       #scrolledYInt:I
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 889
    .end local v4           #child:Landroid/view/View;
    .end local v5           #children:[Landroid/view/View;
    .end local v6           #count:I
    .end local v9           #i:I
    .end local v12           #scrolledXInt:I
    .end local v14           #scrolledYInt:I
    :cond_6
    const/16 v20, 0x1

    move v0, v3

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v20, 0x3

    move v0, v3

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    :cond_7
    const/16 v20, 0x1

    move/from16 v10, v20

    .line 892
    .local v10, isUpOrCancel:Z
    :goto_3
    if-eqz v10, :cond_8

    .line 895
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    const v21, -0x80001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 900
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    move-object v15, v0

    .line 901
    .local v15, target:Landroid/view/View;
    if-nez v15, :cond_b

    .line 904
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 905
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x400

    and-int v20, v20, v21

    if-eqz v20, :cond_9

    .line 906
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 907
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 909
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_0

    .line 889
    .end local v10           #isUpOrCancel:Z
    .end local v15           #target:Landroid/view/View;
    :cond_a
    const/16 v20, 0x0

    move/from16 v10, v20

    goto :goto_3

    .line 914
    .restart local v10       #isUpOrCancel:Z
    .restart local v15       #target:Landroid/view/View;
    :cond_b
    if-nez v7, :cond_d

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 915
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 916
    .restart local v16       #xc:F
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 917
    .restart local v18       #yc:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 918
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 919
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 920
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 925
    :cond_c
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 929
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 932
    .end local v16           #xc:F
    .end local v18           #yc:F
    :cond_d
    if-eqz v10, :cond_e

    .line 933
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 938
    :cond_e
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 939
    .restart local v16       #xc:F
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 940
    .restart local v18       #yc:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 942
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x400

    and-int v20, v20, v21

    if-eqz v20, :cond_f

    .line 943
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 944
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v15

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 945
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 948
    :cond_f
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 818
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 819
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 823
    :goto_0
    return v0

    .line 820
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 821
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 823
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 501
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 709
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 710
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 711
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 712
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 713
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 715
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 665
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 666
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 667
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 668
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 669
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 722
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 723
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 724
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 725
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 726
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 42
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1489
    const/16 v32, 0x0

    .line 1491
    .local v32, more:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v23, v0

    .line 1492
    .local v23, cl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    .line 1493
    .local v26, ct:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    .line 1494
    .local v25, cr:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v22, v0

    .line 1496
    .local v22, cb:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    .line 1498
    .local v27, flags:I
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x100

    move v6, v0

    const/16 v7, 0x100

    if-ne v6, v7, :cond_1

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 1502
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x101

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1505
    :cond_1
    const/4 v11, 0x0

    .line 1506
    .local v11, transformToApply:Landroid/view/animation/Transformation;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 1507
    .local v5, a:Landroid/view/animation/Animation;
    const/16 v24, 0x0

    .line 1509
    .local v24, concatMatrix:Z
    if-eqz v5, :cond_9

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-nez v6, :cond_2

    .line 1511
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 1513
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v10, v0

    .line 1515
    .local v10, region:Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v30

    .line 1516
    .local v30, initialized:Z
    if-nez v30, :cond_3

    .line 1517
    sub-int v6, v25, v23

    sub-int v7, v22, v26

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1518
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->onAnimationStart()V

    .line 1522
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-nez v6, :cond_4

    .line 1523
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 1525
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object v0, v5

    move-wide/from16 v1, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v32

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v11, v0

    .line 1528
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v24

    .line 1530
    if-eqz v32, :cond_5

    .line 1531
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1532
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x90

    move v6, v0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_7

    .line 1534
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x4

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1569
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v30           #initialized:Z
    :cond_5
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x20

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1571
    if-nez v24, :cond_d

    move/from16 v0, v23

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v14, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v15, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_d

    .line 1684
    :cond_6
    :goto_1
    return v32

    .line 1535
    .restart local v10       #region:Landroid/graphics/RectF;
    .restart local v30       #initialized:Z
    :cond_7
    and-int/lit8 v6, v27, 0x4

    if-nez v6, :cond_5

    .line 1538
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 1539
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_0

    .line 1542
    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    invoke-virtual/range {v5 .. v11}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 1546
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 1548
    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    add-int v31, v23, v6

    .line 1549
    .local v31, left:I
    iget v6, v10, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-int v38, v26, v6

    .line 1550
    .local v38, top:I
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    add-int v6, v6, v31

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int v7, v7, v38

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v38

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_0

    .line 1553
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v30           #initialized:Z
    .end local v31           #left:I
    .end local v38           #top:I
    :cond_9
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x800

    move v6, v0

    const/16 v7, 0x800

    if-ne v6, v7, :cond_5

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-nez v6, :cond_a

    .line 1556
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 1558
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v29

    .line 1559
    .local v29, hasTransform:Z
    if-eqz v29, :cond_5

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v41

    .line 1561
    .local v41, transformType:I
    sget v6, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v41

    move v1, v6

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object v11, v6

    .line 1563
    :goto_2
    sget v6, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v6, v6, v41

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    move/from16 v24, v6

    :goto_3
    goto/16 :goto_0

    .line 1561
    :cond_b
    const/4 v6, 0x0

    move-object v11, v6

    goto :goto_2

    .line 1563
    :cond_c
    const/4 v6, 0x0

    move/from16 v24, v6

    goto :goto_3

    .line 1576
    .end local v29           #hasTransform:Z
    .end local v41           #transformType:I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->computeScroll()V

    .line 1578
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v36, v0

    .line 1579
    .local v36, sx:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v37, v0

    .line 1581
    .local v37, sy:I
    const/16 v35, 0x0

    .line 1582
    .local v35, scalingRequired:Z
    const/16 v20, 0x0

    .line 1583
    .local v20, cache:Landroid/graphics/Bitmap;
    const v6, 0x8000

    and-int v6, v6, v27

    const v7, 0x8000

    if-eq v6, v7, :cond_e

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x4000

    move v6, v0

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_f

    .line 1585
    :cond_e
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    move-object v0, v6

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v35, v0

    .line 1589
    :cond_f
    if-nez v20, :cond_16

    const/4 v6, 0x1

    move/from16 v28, v6

    .line 1591
    .local v28, hasNoCache:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v33

    .line 1592
    .local v33, restoreTo:I
    if-eqz v28, :cond_17

    .line 1593
    sub-int v6, v23, v36

    int-to-float v6, v6

    sub-int v7, v26, v37

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1603
    :cond_10
    :goto_5
    const/high16 v19, 0x3f80

    .line 1605
    .local v19, alpha:F
    if-eqz v11, :cond_19

    .line 1606
    if-eqz v24, :cond_12

    .line 1607
    const/16 v39, 0x0

    .line 1608
    .local v39, transX:I
    const/16 v40, 0x0

    .line 1609
    .local v40, transY:I
    if-eqz v28, :cond_11

    .line 1610
    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    .line 1611
    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v40, v0

    .line 1615
    :cond_11
    move/from16 v0, v39

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move/from16 v0, v40

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1616
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1617
    move/from16 v0, v39

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1618
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1621
    .end local v39           #transX:I
    .end local v40           #transY:I
    :cond_12
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v19

    .line 1622
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_13

    .line 1623
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1626
    :cond_13
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_14

    if-eqz v28, :cond_14

    .line 1627
    const/high16 v6, 0x437f

    mul-float v6, v6, v19

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1628
    .local v17, multipliedAlpha:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v6

    if-nez v6, :cond_18

    .line 1629
    move/from16 v0, v36

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v14, v0

    add-int v6, v36, v25

    sub-int v6, v6, v23

    int-to-float v15, v6

    add-int v6, v37, v22

    sub-int v6, v6, v26

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v18, 0x14

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1639
    .end local v17           #multipliedAlpha:I
    :cond_14
    :goto_6
    and-int/lit8 v6, v27, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    .line 1640
    if-eqz v28, :cond_1a

    .line 1641
    sub-int v6, v25, v23

    add-int v6, v6, v36

    sub-int v7, v22, v26

    add-int v7, v7, v37

    move-object/from16 v0, p1

    move/from16 v1, v36

    move/from16 v2, v37

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1651
    :cond_15
    :goto_7
    if-eqz v28, :cond_1d

    .line 1653
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_1c

    .line 1657
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const v7, -0x600001

    and-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1658
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1677
    :goto_8
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1679
    if-eqz v5, :cond_6

    if-nez v32, :cond_6

    .line 1680
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    .line 1681
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 1589
    .end local v19           #alpha:F
    .end local v28           #hasNoCache:Z
    .end local v33           #restoreTo:I
    :cond_16
    const/4 v6, 0x0

    move/from16 v28, v6

    goto/16 :goto_4

    .line 1595
    .restart local v28       #hasNoCache:Z
    .restart local v33       #restoreTo:I
    :cond_17
    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1596
    if-eqz v35, :cond_10

    .line 1598
    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v34, v6, v7

    .line 1599
    .local v34, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_5

    .line 1632
    .end local v34           #scale:F
    .restart local v17       #multipliedAlpha:I
    .restart local v19       #alpha:F
    :cond_18
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_6

    .line 1635
    .end local v17           #multipliedAlpha:I
    :cond_19
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_14

    .line 1636
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    goto/16 :goto_6

    .line 1643
    :cond_1a
    if-nez v35, :cond_1b

    .line 1644
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_7

    .line 1646
    :cond_1b
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_7

    .line 1660
    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 1663
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 1664
    .local v21, cachePaint:Landroid/graphics/Paint;
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_1f

    .line 1665
    const/high16 v6, 0x437f

    mul-float v6, v6, v19

    float-to-int v6, v6

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1666
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x1000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1674
    :cond_1e
    :goto_9
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move v2, v6

    move v3, v7

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1667
    :cond_1f
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x1000

    move v6, v0

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_1e

    .line 1668
    const/16 v6, 0xff

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1669
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x1001

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_9
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 3371
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 3373
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 3374
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 3375
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3379
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3380
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3382
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3383
    aget-object v0, v1, v3

    .line 3384
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 3385
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 3382
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3389
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 587
    :goto_0
    return-object v0

    .line 584
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 587
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 1764
    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v4, :cond_0

    move-object v4, p0

    .line 1783
    :goto_0
    return-object v4

    .line 1768
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1769
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1771
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1772
    aget-object v2, v3, v0

    .line 1774
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1775
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1777
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 1778
    goto :goto_0

    .line 1771
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1783
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "tag"

    .prologue
    .line 1791
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 1810
    :goto_0
    return-object v4

    .line 1795
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1796
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1798
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1799
    aget-object v2, v3, v0

    .line 1801
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1802
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 1804
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 1805
    goto :goto_0

    .line 1798
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1810
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 3345
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 3346
    .local v2, done:Z
    if-nez v2, :cond_0

    .line 3347
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3348
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3349
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 3350
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 3351
    if-eqz v2, :cond_1

    .line 3356
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    return v2

    .line 3349
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    .line 483
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 446
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 460
    :cond_1
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3310
    iget v6, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_0

    move v4, v7

    .line 3311
    .local v4, meOpaque:Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    move v6, v7

    .line 3327
    :goto_1
    return v6

    .end local v4           #meOpaque:Z
    :cond_0
    move v4, v8

    .line 3310
    goto :goto_0

    .line 3315
    .restart local v4       #meOpaque:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 3316
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3317
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3318
    .local v2, count:I
    const/4 v5, 0x1

    .line 3319
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 3320
    aget-object v0, v1, v3

    .line 3321
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3322
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3323
    const/4 v5, 0x0

    .line 3319
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3327
    .end local v0           #child:Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 2953
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2924
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "p"

    .prologue
    .line 2942
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 3079
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3081
    :goto_0
    return-object v1

    .line 3080
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3081
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 3067
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1451
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 1756
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 6
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 2673
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v0, v2, v3

    .line 2674
    .local v0, dx:I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v1, v2, v3

    .line 2675
    .local v1, dy:I
    if-eqz p3, :cond_0

    .line 2676
    iget v2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 2677
    iget v2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 2679
    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2680
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    move v2, v5

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 378
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 2742
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 3366
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 2897
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 408
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 412
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 413
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 595
    iget v5, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_0

    move v5, v6

    .line 616
    :goto_0
    return v5

    .line 599
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    .line 600
    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 604
    .local v3, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v3, v5, :cond_3

    .line 605
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 606
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 608
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 609
    aget-object v0, v1, v4

    .line 610
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    .line 611
    goto :goto_0

    .line 608
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v4           #i:I
    :cond_3
    move v5, v6

    .line 616
    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 3050
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3051
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3052
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3053
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    move v3, v2

    .line 3057
    :goto_1
    return v3

    .line 3052
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3057
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 13
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/high16 v12, 0x20

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2485
    move-object v6, p0

    .line 2487
    .local v6, parent:Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2488
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_4

    .line 2489
    iget-object v4, v1, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 2490
    .local v4, location:[I
    iget v8, p1, Landroid/view/View;->mLeft:I

    aput v8, v4, v11

    .line 2491
    iget v8, p1, Landroid/view/View;->mTop:I

    aput v8, v4, v10

    .line 2496
    iget v8, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v8, v8, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_5

    move v2, v10

    .line 2499
    .local v2, drawAnimation:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_6

    move v3, v10

    .line 2503
    .local v3, isOpaque:Z
    :goto_1
    if-eqz v3, :cond_7

    const/high16 v8, 0x40

    move v5, v8

    .line 2506
    .local v5, opaqueFlag:I
    :cond_0
    :goto_2
    const/4 v7, 0x0

    .line 2507
    .local v7, view:Landroid/view/View;
    instance-of v8, v6, Landroid/view/View;

    if-eqz v8, :cond_1

    .line 2508
    move-object v0, v6

    check-cast v0, Landroid/view/View;

    move-object v7, v0

    .line 2511
    :cond_1
    if-eqz v2, :cond_2

    .line 2512
    if-eqz v7, :cond_8

    .line 2513
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I

    .line 2521
    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x60

    and-int/2addr v8, v9

    if-eq v8, v12, :cond_3

    .line 2522
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x600001

    and-int/2addr v8, v9

    or-int/2addr v8, v5

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I

    .line 2525
    :cond_3
    invoke-interface {v6, v4, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v6

    .line 2526
    if-nez v6, :cond_0

    .line 2528
    .end local v2           #drawAnimation:Z
    .end local v3           #isOpaque:Z
    .end local v4           #location:[I
    .end local v5           #opaqueFlag:I
    .end local v7           #view:Landroid/view/View;
    :cond_4
    return-void

    .restart local v4       #location:[I
    :cond_5
    move v2, v11

    .line 2496
    goto :goto_0

    .restart local v2       #drawAnimation:Z
    :cond_6
    move v3, v11

    .line 2499
    goto :goto_1

    .restart local v3       #isOpaque:Z
    :cond_7
    move v5, v12

    .line 2503
    goto :goto_2

    .line 2514
    .restart local v5       #opaqueFlag:I
    .restart local v7       #view:Landroid/view/View;
    :cond_8
    instance-of v8, v6, Landroid/view/ViewRoot;

    if-eqz v8, :cond_2

    .line 2515
    move-object v0, v6

    check-cast v0, Landroid/view/ViewRoot;

    move-object v8, v0

    iput-boolean v10, v8, Landroid/view/ViewRoot;->mIsAnimating:Z

    goto :goto_3
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 7
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2543
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 2544
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    .line 2546
    aget v2, p1, v5

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2549
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 2550
    .local v0, left:I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 2552
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    .line 2554
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 2556
    aput v0, p1, v5

    .line 2557
    aput v1, p1, v6

    .line 2559
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 2574
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_0
    return-object v2

    .line 2562
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 2564
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v2, p1, v5

    .line 2565
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    aput v2, p1, v6

    .line 2567
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    aget v3, p1, v5

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    aget v4, p1, v6

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2570
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 2574
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 2788
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2758
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 2855
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 2823
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 3116
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3118
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3120
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3123
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3124
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 3143
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3145
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3148
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3152
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3153
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 3095
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3096
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3097
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3098
    aget-object v0, v1, v2

    .line 3099
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 3100
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 3097
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3103
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 2659
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2660
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2662
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2663
    aget-object v3, v0, v2

    .line 2664
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 2665
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 2662
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2667
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 2584
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 2585
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 7
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v6, 0x0

    .line 2605
    if-ne p1, p0, :cond_0

    .line 2649
    :goto_0
    return-void

    .line 2609
    :cond_0
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2614
    .local v2, theParent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v2, :cond_4

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4

    if-eq v2, p0, :cond_4

    .line 2616
    if-eqz p3, :cond_2

    .line 2617
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2619
    if-eqz p4, :cond_1

    .line 2620
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2621
    .local v1, p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 2632
    .end local v1           #p:Landroid/view/View;
    :cond_1
    :goto_2
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 2633
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .line 2624
    :cond_2
    if-eqz p4, :cond_3

    .line 2625
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2626
    .restart local v1       #p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 2628
    .end local v1           #p:Landroid/view/View;
    :cond_3
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 2638
    :cond_4
    if-ne v2, p0, :cond_6

    .line 2639
    if-eqz p3, :cond_5

    .line 2640
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 2643
    :cond_5
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 2647
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "parameter must be a descendant of this view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 2594
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 2595
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1275
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 1278
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 1279
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1281
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1282
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 1286
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mWholeAnimationCacheEnabled:Z

    if-eqz v0, :cond_2

    .line 1287
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mPreviousAnimationCacheStatus:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 1288
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mPreviousDrawingCacheStatus:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 1289
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mPreviousDrawingCacheStatus:Z

    if-nez v0, :cond_1

    .line 1290
    invoke-virtual {p0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 1292
    :cond_1
    iput-boolean v2, p0, Landroid/view/ViewGroup;->mDoingAnimationWhenWholeAnimationCacheEnabled:Z

    .line 1294
    :cond_2
    return-void
.end method

.method protected onAnimationStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1254
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 1257
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDrawingCacheEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    .line 1258
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1259
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1261
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1262
    aget-object v0, v1, v3

    .line 1263
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1264
    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1265
    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 1261
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1269
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1271
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 12
    .parameter "consistency"

    .prologue
    const/high16 v10, 0x60

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "ViewConsistency"

    .line 2977
    invoke-super {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v6

    .line 2979
    .local v6, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    move v1, v9

    .line 2980
    .local v1, checkLayout:Z
    :goto_0
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_2

    move v0, v9

    .line 2982
    .local v0, checkDrawing:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 2983
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2984
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2985
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 2986
    aget-object v7, v2, v4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_0

    .line 2987
    const/4 v6, 0x0

    .line 2988
    const-string v7, "ViewConsistency"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no parent/a parent that is not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_1
    move v1, v8

    .line 2979
    goto :goto_0

    .restart local v1       #checkLayout:Z
    :cond_2
    move v0, v8

    .line 2980
    goto :goto_1

    .line 2994
    .restart local v0       #checkDrawing:Z
    :cond_3
    if-eqz v0, :cond_4

    .line 2996
    iget v7, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_4

    .line 2997
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 2998
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_4

    instance-of v7, v5, Landroid/view/ViewRoot;

    if-nez v7, :cond_4

    .line 2999
    check-cast v5, Landroid/view/View;

    .end local v5           #parent:Landroid/view/ViewParent;
    iget v7, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-nez v7, :cond_4

    .line 3000
    const/4 v6, 0x0

    .line 3001
    const-string v7, "ViewConsistency"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewGroup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is dirty but its parent is not: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :cond_4
    return v6
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 3393
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_0

    .line 3394
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    .line 3417
    :goto_0
    return-object v5

    .line 3397
    :cond_0
    const/4 v3, 0x0

    .line 3398
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3399
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3400
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 3402
    .local v0, childState:[I
    if-eqz v0, :cond_1

    .line 3403
    array-length v5, v0

    add-int/2addr v3, v5

    .line 3399
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3407
    .end local v0           #childState:[I
    :cond_2
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 3409
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    .line 3410
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 3412
    .restart local v0       #childState:[I
    if-eqz v0, :cond_3

    .line 3413
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 3409
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #childState:[I
    :cond_4
    move-object v5, v4

    .line 3417
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v8, 0x1

    .line 1071
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1072
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1073
    const/4 v6, 0x0

    .line 1074
    .local v6, index:I
    const/4 v5, 0x1

    .line 1075
    .local v5, increment:I
    move v3, v2

    .line 1081
    .local v3, end:I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1082
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 1083
    aget-object v0, v1, v4

    .line 1084
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 1085
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    .line 1090
    .end local v0           #child:Landroid/view/View;
    :goto_2
    return v7

    .line 1077
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    sub-int v6, v2, v8

    .line 1078
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1079
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_0

    .line 1082
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 1090
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 747
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 748
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 749
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 0

    .prologue
    .line 2274
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2275
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2277
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2289
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2290
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 2330
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2295
    .local v0, children:[Landroid/view/View;
    iput v10, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2297
    iget-object v6, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2298
    .local v6, listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v6, :cond_5

    move v7, v11

    .line 2299
    .local v7, notify:Z
    :goto_1
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2300
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_6

    move v3, v11

    .line 2301
    .local v3, detach:Z
    :goto_2
    const/4 v1, 0x0

    .line 2303
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2305
    sub-int v5, v2, v11

    .local v5, i:I
    :goto_3
    if-ltz v5, :cond_8

    .line 2306
    aget-object v8, v0, v5

    .line 2308
    .local v8, view:Landroid/view/View;
    if-ne v8, v4, :cond_2

    .line 2309
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2310
    move-object v1, v8

    .line 2313
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 2314
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2319
    :cond_3
    :goto_4
    if-eqz v7, :cond_4

    .line 2320
    invoke-interface {v6, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2323
    :cond_4
    iput-object v12, v8, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2324
    aput-object v12, v0, v5

    .line 2305
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v7           #notify:Z
    .end local v8           #view:Landroid/view/View;
    :cond_5
    move v7, v10

    .line 2298
    goto :goto_1

    .restart local v4       #focused:Landroid/view/View;
    .restart local v7       #notify:Z
    :cond_6
    move v3, v10

    .line 2300
    goto :goto_2

    .line 2315
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_7
    if-eqz v3, :cond_3

    .line 2316
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_4

    .line 2327
    .end local v8           #view:Landroid/view/View;
    :cond_8
    if-eqz v1, :cond_0

    .line 2328
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 2346
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2347
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2350
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2351
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2356
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 2357
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2359
    :cond_2
    return-void

    .line 2352
    :cond_3
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2353
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2149
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 2150
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2151
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2152
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2181
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 2182
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2184
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2161
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 2162
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2193
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2194
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2196
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2172
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2173
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 430
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 431
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 435
    :cond_2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 437
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 956
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 971
    :cond_0
    :goto_1
    return-void

    .line 956
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 961
    :cond_2
    if-eqz p1, :cond_3

    .line 962
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 968
    :goto_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 964
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1034
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 1036
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 1048
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1038
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1045
    :goto_0
    return v2

    .line 1040
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1041
    .local v1, took:Z
    if-eqz v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0

    .line 1044
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1045
    .restart local v1       #took:Z
    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0

    .line 1036
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3334
    if-eqz p1, :cond_0

    .line 3335
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3336
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 3337
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 3340
    :cond_0
    return-void
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 2719
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2720
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .parameter "addsStates"

    .prologue
    .line 3427
    if-eqz p1, :cond_0

    .line 3428
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3433
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 3434
    return-void

    .line 3430
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "always"

    .prologue
    .line 2809
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2810
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2773
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2774
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 1243
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 1244
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1245
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1246
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1247
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1250
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2869
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2870
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2840
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2841
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 1
    .parameter "clipChildren"

    .prologue
    .line 1696
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1697
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter "clipToPadding"

    .prologue
    .line 1708
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1709
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 390
    sparse-switch p1, :sswitch_data_0

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 400
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 401
    return-void

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 2729
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2730
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 2731
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2733
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "animationListener"

    .prologue
    .line 3467
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3468
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1938
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1939
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1180
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1181
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1185
    :goto_0
    return-void

    .line 1183
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .parameter "drawingCacheToKeep"

    .prologue
    .line 2912
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 2913
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1747
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1748
    return-void
.end method

.method public setWholeAnimationCacheEnabled(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 3477
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mDoingAnimationWhenWholeAnimationCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 3481
    :goto_0
    return-void

    .line 3480
    :cond_0
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mWholeAnimationCacheEnabled:Z

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 466
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 3485
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mWholeAnimationCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 3486
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mDoingAnimationWhenWholeAnimationCacheEnabled:Z

    .line 3487
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAnimationCacheEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mPreviousAnimationCacheStatus:Z

    .line 3488
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isDrawingCacheEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mPreviousDrawingCacheStatus:Z

    .line 3489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 3490
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 3491
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->buildDrawingCache(Z)V

    .line 3493
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3494
    return-void
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 2706
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 2707
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2708
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2710
    :cond_0
    return-void
.end method

.method unFocus()V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 542
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 545
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 546
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1892
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1895
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 1896
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1898
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1899
    return-void
.end method
