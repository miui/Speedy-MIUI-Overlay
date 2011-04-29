.class Landroid/widget/DefaultFastScroller$ScrollFade;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DefaultFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollFade"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xd0

.field static final FADE_DURATION:J = 0xc8L


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Landroid/widget/DefaultFastScroller;


# direct methods
.method private constructor <init>(Landroid/widget/DefaultFastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->this$0:Landroid/widget/DefaultFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/DefaultFastScroller;Landroid/widget/DefaultFastScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    invoke-direct {p0, p1}, Landroid/widget/DefaultFastScroller$ScrollFade;-><init>(Landroid/widget/DefaultFastScroller;)V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xd0

    .line 520
    iget-object v3, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->this$0:Landroid/widget/DefaultFastScroller;

    invoke-static {v3}, Landroid/widget/DefaultFastScroller;->access$200(Landroid/widget/DefaultFastScroller;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 521
    const/16 v3, 0xd0

    .line 530
    :goto_0
    return v3

    .line 524
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 525
    .local v1, now:J
    iget-wide v3, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 526
    const/4 v0, 0x0

    .local v0, alpha:I
    :goto_1
    move v3, v0

    .line 530
    goto :goto_0

    .line 528
    .end local v0           #alpha:I
    :cond_1
    iget-wide v3, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->this$0:Landroid/widget/DefaultFastScroller;

    invoke-static {v0}, Landroid/widget/DefaultFastScroller;->access$300(Landroid/widget/DefaultFastScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->this$0:Landroid/widget/DefaultFastScroller;

    invoke-static {v0, v2}, Landroid/widget/DefaultFastScroller;->access$100(Landroid/widget/DefaultFastScroller;I)V

    .line 549
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->this$0:Landroid/widget/DefaultFastScroller;

    invoke-static {v0}, Landroid/widget/DefaultFastScroller;->access$200(Landroid/widget/DefaultFastScroller;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 540
    invoke-virtual {p0}, Landroid/widget/DefaultFastScroller$ScrollFade;->startFade()V

    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {p0}, Landroid/widget/DefaultFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    if-lez v0, :cond_2

    .line 545
    iget-object v0, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->this$0:Landroid/widget/DefaultFastScroller;

    invoke-static {v0}, Landroid/widget/DefaultFastScroller;->access$400(Landroid/widget/DefaultFastScroller;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->this$0:Landroid/widget/DefaultFastScroller;

    invoke-static {v0, v2}, Landroid/widget/DefaultFastScroller;->access$100(Landroid/widget/DefaultFastScroller;I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 514
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->mFadeDuration:J

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->mStartTime:J

    .line 516
    iget-object v0, p0, Landroid/widget/DefaultFastScroller$ScrollFade;->this$0:Landroid/widget/DefaultFastScroller;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/widget/DefaultFastScroller;->access$100(Landroid/widget/DefaultFastScroller;I)V

    .line 517
    return-void
.end method
