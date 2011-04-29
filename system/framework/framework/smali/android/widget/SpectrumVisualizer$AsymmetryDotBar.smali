.class Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Landroid/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SpectrumVisualizer;


# direct methods
.method private constructor <init>(Landroid/widget/SpectrumVisualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpectrumVisualizer;Landroid/widget/SpectrumVisualizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Landroid/widget/SpectrumVisualizer;)V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 10
    .parameter "canvas"
    .parameter "index"

    .prologue
    .line 278
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$300(Landroid/widget/SpectrumVisualizer;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    iget-object v2, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v2}, Landroid/widget/SpectrumVisualizer;->access$400(Landroid/widget/SpectrumVisualizer;)[F

    move-result-object v2

    aget v2, v2, p2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v1}, Landroid/widget/SpectrumVisualizer;->access$500(Landroid/widget/SpectrumVisualizer;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v1}, Landroid/widget/SpectrumVisualizer;->access$500(Landroid/widget/SpectrumVisualizer;)I

    move-result v1

    mul-int v5, v0, v1

    .line 279
    .local v5, top:I
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$300(Landroid/widget/SpectrumVisualizer;)I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$600(Landroid/widget/SpectrumVisualizer;)[I

    move-result-object v1

    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$500(Landroid/widget/SpectrumVisualizer;)I

    move-result v0

    mul-int v2, v0, v5

    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$500(Landroid/widget/SpectrumVisualizer;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$500(Landroid/widget/SpectrumVisualizer;)I

    move-result v0

    mul-int v4, v0, p2

    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$500(Landroid/widget/SpectrumVisualizer;)I

    move-result v6

    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$300(Landroid/widget/SpectrumVisualizer;)I

    move-result v0

    sub-int v7, v0, v5

    const/4 v8, 0x1

    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$700(Landroid/widget/SpectrumVisualizer;)Landroid/graphics/Paint;

    move-result-object v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 290
    :cond_0
    return-void
.end method
