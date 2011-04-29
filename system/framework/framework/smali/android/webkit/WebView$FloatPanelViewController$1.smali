.class Landroid/webkit/WebView$FloatPanelViewController$1;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$FloatPanelViewController;->show(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$FloatPanelViewController;

.field final synthetic val$_x:I

.field final synthetic val$_y:I

.field final synthetic val$_y1:I


# direct methods
.method constructor <init>(Landroid/webkit/WebView$FloatPanelViewController;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Landroid/webkit/WebView$FloatPanelViewController$1;->this$1:Landroid/webkit/WebView$FloatPanelViewController;

    iput p2, p0, Landroid/webkit/WebView$FloatPanelViewController$1;->val$_x:I

    iput p3, p0, Landroid/webkit/WebView$FloatPanelViewController$1;->val$_y:I

    iput p4, p0, Landroid/webkit/WebView$FloatPanelViewController$1;->val$_y1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 972
    iget-object v0, p0, Landroid/webkit/WebView$FloatPanelViewController$1;->this$1:Landroid/webkit/WebView$FloatPanelViewController;

    iget v1, p0, Landroid/webkit/WebView$FloatPanelViewController$1;->val$_x:I

    iget v2, p0, Landroid/webkit/WebView$FloatPanelViewController$1;->val$_y:I

    iget v3, p0, Landroid/webkit/WebView$FloatPanelViewController$1;->val$_y1:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView$FloatPanelViewController;->updatePosition(III)V

    .line 973
    return-void
.end method
