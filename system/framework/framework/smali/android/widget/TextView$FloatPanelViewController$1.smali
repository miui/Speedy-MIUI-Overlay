.class Landroid/widget/TextView$FloatPanelViewController$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$FloatPanelViewController;->showAndUpdatePositionAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$FloatPanelViewController;


# direct methods
.method constructor <init>(Landroid/widget/TextView$FloatPanelViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 7960
    iput-object p1, p0, Landroid/widget/TextView$FloatPanelViewController$1;->this$1:Landroid/widget/TextView$FloatPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 7963
    iget-object v0, p0, Landroid/widget/TextView$FloatPanelViewController$1;->this$1:Landroid/widget/TextView$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->updatePosition()V

    .line 7964
    return-void
.end method
