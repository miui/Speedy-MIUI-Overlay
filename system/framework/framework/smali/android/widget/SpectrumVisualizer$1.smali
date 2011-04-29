.class Landroid/widget/SpectrumVisualizer$1;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Landroid/widget/SpectrumVisualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Landroid/widget/SpectrumVisualizer$1;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 1
    .parameter "visualizer"
    .parameter "bytes"
    .parameter "samplingRate"

    .prologue
    .line 180
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$1;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0, p2}, Landroid/widget/SpectrumVisualizer;->access$200(Landroid/widget/SpectrumVisualizer;[B)V

    .line 181
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0
    .parameter "visualizer"
    .parameter "bytes"
    .parameter "samplingRate"

    .prologue
    .line 178
    return-void
.end method
